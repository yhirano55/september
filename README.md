# September

## Setup

```
brew install direnv
gem install dip hivemind

cp .env.sample .env
cp .envrc.sample .envrc
direnv allow .

dip compose up -d db
bin/dev
```
