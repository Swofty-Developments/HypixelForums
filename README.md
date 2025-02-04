> There are no Hypixel assets inside of this repository nor are any provided associated with this project. All assets used are fetched from the live Hypixel CDN.
# Hypixel Forums

[<img src="https://discordapp.com/assets/e4923594e694a21542a489471ecffa50.svg" alt="" height="55" />](https://discord.gg/paper)

A ruby-on-rails forums website recreation meant to be synced with [Swofty's Hypixel SkyBlock Recreation](https://github.com/Swofty-Developments/HypixelSkyBlock).

## Setup Guide

### Prerequisites
- Ruby 3.2.2 or higher
- Rails 7.1.0 or higher
- PostgreSQL 14+ (or your database of choice)
- Node.js 18+ and Yarn
- Git

### Installation Steps

1. Clone the repository:
```bash
git clone https://github.com/Swofty-Developments/HypixelForums.git
cd hypixel-forums
```

2. Install Ruby dependencies:
```bash
bundle install
yarn install
```

3. Database setup:
```bash
rails db:create
rails db:migrate
rails db:seed
```

4. Environment setup:
```bash
cp .env.example .env

# Open .env and configure your environment variables
# Edit database credentials and any API keys
```

5. Start the server:
```bash
rails server
```

6. Open your browser and navigate to http://localhost:3000

### Integration with Hypixel SkyBlock

To connect with [Swofty's Hypixel SkyBlock Recreation](https://github.com/Swofty-Developments/HypixelSkyBlock). Configure the SkyBlock API endpoint in your `.env` file:
```
SKYBLOCK_API_ENDPOINT=http://your-skyblock-server:port
SKYBLOCK_API_FORUMS_KEY=your-forums-key # This is given to you when you launch the API service, this is not a normal API key
```

### Need Help?
Join our [Discord server](https://discord.gg/paper) for support
