// this file is run with npm run build
// it uses babel to compile everything in client/src into bundle.js
const path = require('path');

module.exports = {
  entry: path.resolve(__dirname, './client/src/app.jsx'),
  output: {
    path: path.resolve(__dirname, './client/dist'),
    filename: 'bundle.js',
  },
  mode: 'development',
  module: {
    rules: [
      {
        loader: 'babel-loader',
        test: /\.js[x]?/,
        exclude: /node_modules/,
        options: {
          presets: ['@babel/preset-env', '@babel/preset-react'],
        },
      },
      //how to load local image into webpack
      {
        // 　test: /\.(png|jpg)$/,
        　test: /\.(jpg)$/,
      　　loader: 'url-loader?limit=8192&name=asset/images/[hash:8].[name].[ext]' //file naming
      },
      {
        　test: /\.(png)$/,
      　　loader: 'url-loader?limit=8192&name=asset/stars/[hash:8].[name].[ext]'
      }
    ],
  },
  resolve: {
    extensions: ['.js', '.jsx'],
  },
};
