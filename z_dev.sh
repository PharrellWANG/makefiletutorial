#!/bin/bash
sed -i 's+/makefiletutorial/assets+/assets+g' src/index.md
sed -i 's+/makefiletutorial/assets+/assets+g' layouts/layout.ejs

yarn dev