# September

## Setup

```
brew install direnv
gem install dip hivemind

cp .env.sample .env
cp .envrc.sample .envrc
direnv allow .

bundle
bin/rails db:create db:schema:load
dip compose up -d db
bin/dev
```
