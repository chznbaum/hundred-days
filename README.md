# 100DaysOfCode Log
![Build Status](https://travis-ci.org/chznbaum/hundred-days.svg?branch=master)

The source code for what will be a log for tracking progress on the #100DaysOfCode challenge.

*Note: This is a work-in-progress until specified otherwise*

## Installation

Clone the repository:

```bash
git clone https://github.com/chznbaum/hundred-days.git
```

Install the dependencies:

```bash
bundle install
```

Create your database:

```bash
rails db:create
```

Migrate the database tables:

```bash
rails db:migrate
```

Start your server:

```bash
rails s
```

### Notes

- You will need Ruby v2.3.3, Rails v5.1, and PostgreSQL set up on your system before taking these steps.

## Features

- User authentication with Devise
- Roles and authorization with Petergate
- Markdown parsing with syntax highlighting with Redcarpet and Coderay
- Draft/Published log posts
- Challenge completion progress bar
- Threaded comments with polymorphic associations and collapsible reply forms
- Twitter cards

## To-Do

- Live-updating comments with ActionCable
- Contact form for emails
- Featured images/image cards
- Reactive functionality with Vue

## Credits

The #100DaysOfCode challenge was created by @Kallway, and his [log template](https://github.com/Kallaway/100-days-of-code) was an inspiration for me to create my own application.

Motivation tracking inspired by and adapted from [@SchnucklePi](https://twitter.com/SchnucklePi).

Progress bar tracking inspired by and adapted from [@ChrisVomRhein](https://twitter.com/ChrisVomRhein).

## License

MIT License

Copyright (c) 2017 Chazona Baum

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.