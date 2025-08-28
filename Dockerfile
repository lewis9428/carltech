# 🏗️ Stage 1: Builder
FROM node:24.5.0 as builder

# Install build tools and required packages
RUN apt update && \
    apt install -y build-essential aria2 ffmpeg && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp

WORKDIR /usr/src/app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# 🧼 Stage 2: Production
FROM node:24.5.0

# Install runtime tools only (no build-essential)
RUN apt update && \
    apt install -y aria2 ffmpeg && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod a+rx /usr/local/bin/yt-dlp && \
    apt clean

WORKDIR /usr/src/app

# Copy built app from builder
COPY --from=builder /usr/src/app /usr/src/app

# 🚀 Start the bot
CMD ["node", "bot.js"]
