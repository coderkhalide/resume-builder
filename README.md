# WTF Resume (Resume Builder)

Modern real-time design and 100% free resume builder.

> This is a fork of [wtfresume.com](https://github.com/sramezani/resume-builder), containing both server and client
> in a containerized configuration, so it can be easily started locally without zero configuration.

### Features:
- Real time design (drag and drop)
- Build your resume without registration
- Save as json file and upload and use in future
- Export as PDF (selectable text)


### Run Development Mode
This resume builder created with `React`, `Next js`, NodeJS and MongoDB.

To run the project you will need Docker and run the following (the first time you clone this project):
    
```
make install
make dev
```

### Structure

    client
    ├── pages                   # site pages (home,resume-builder,...)
    ├── public                  # images and other files
    ├── src                    
    │   ├── component           # components
    │   ├── constant            # constant (colors, key, ...)
    │   ├── lib                 # utils, ...
    │   ├── redux               # redux core and actions
    │   ├── template            # resume template (currently have only one template)
    │   ├── theme               # general stylys, ...
    │   └── types               # type for typescript
    └── ...
    server
    ├── routes                  # API routes
    │   ├── download.js         # renders a client resume preview using puppeteer + headless chrome
    ├── app.js    
    ├── server.js    
    └── ...


[Go to WTFresume website](https://wtfresume.com "wtfresume")

