# RokVim 🖥️ ⌨️

 _Simple Neovim Config with built in support for **LSP**, **Formatting** and **Eslint Integration** for Javascript and Typescript **(Other languages also supported)**_

## 🟢 Installing RokVim
 - You need to install NeoVim (Version 0.5 or Newer)
   _Find the Installation Instructions Here_

   ```https://github.com/neovim/neovim/wiki/Building-Neovim```

 - Install Packer.nvim (Package Manager user)
  
   ```
   git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

 - You can install RokVim by running the following command

   ```bash <(curl -s https://raw.githubusercontent.com/strange2x/RokVim/main/install.sh)```

 - To Enable diagnostics, you can install diagnostic-languageserver

   ```sudo npm install -g diagnostic-languageserver```

 - To enable Typescript and Javascript support install typescript and typescript-language-server

   ```sudo npm install -g typescript typescript-language-server```

 - To enable LUA formatting install lua-fmt

   ```sudo npm install -g lua-fmt```

## 🔵 Available functionalities
 - Built In LSP Support
 - Telescope Fuzzy finder
 - Install preffered LSP using LspInstall command
   ```:LspInstall <language>```
   _eg -> :LspInstall typescript_
 - Formatting for files can be added using Format.nvim
   _Already available support for Prettier (Javascript, Typescript)_
 - AutoFormat on save for Javascript, Typescript, JSON and Lua (_More can be easily added_)
 - Linting available for Javascript and Typescript (_ESLint_)
 - AutoPairs available to close the brackets.
 - Comment functionality (```Key -> gcc```)
 - Vim Surround
 - Completions for LSP
 - Diagnostics for LSP
 - Catppuccino theme installed with LSP and NVIMTree integration
 - Lualine as the status line
 - NvimTree for File navigation 


### 😊 Thank You Note
 Thanks for trying out RokVim ❤️.. Feel free to add your features and PRs.. Lets build a cool IDE.. 

