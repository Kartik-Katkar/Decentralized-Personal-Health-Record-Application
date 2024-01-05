<p align="center">
  <img src="./images and videos/Cover.png" alt="Cover"/>
</p>

# Decentralized personal health record application

The project uses blockchain and smart contracts to let individuals manage and secure their health data. The Project's goal is to empower people to control their health information, communicate better with healthcare providers, and drive innovation in healthcare.

# Screenshots of the project

&nbsp; 

The below image is a compilation of images which show the successful deployment and working of the project done through REMIX IDE and the Project is run through NodeJS and Lite-Server on Local System

<p align="center">
  <img src="./images and videos/Project.gif" alt="Image"/>
</p>

&nbsp;

# Deployment and Running Instructions

&nbsp;

Requirements- Metamask,Nodejs,lite-server,Web3js

### MetaMask Browser Extension

You can download the metamask extension to run the application for transactions.

You can find the latest version of MetaMask on [their official website](https://metamask.io/). For help using MetaMask, visit their [User Support Site](https://metamask.zendesk.com/hc/en-us).

For [general questions](https://community.metamask.io/c/learn/26), [feature requests](https://community.metamask.io/c/feature-requests-ideas/13), or [developer questions](https://community.metamask.io/c/developer-questions/11), visit their [Community Forum](https://community.metamask.io/).

MetaMask supports Firefox, Google Chrome, and Chromium-based browsers. We recommend using the latest available browser version.

For up to the minute news, follow their [Twitter](https://twitter.com/metamask) or [Medium](https://medium.com/metamask) pages.

To learn how to develop MetaMask-compatible applications, visit their [Developer Docs](https://metamask.github.io/metamask-docs/).

To learn how to contribute to the MetaMask project itself, visit their [Internal Docs](https://github.com/MetaMask/metamask-extension/tree/develop/docs).

&nbsp;
&nbsp;

### Remix IDE


Please Refer the official documentation or the GITHUB Repository to install and run REMIX IDE for deploying Smart contracts

[Official Website](https://remix-ide.readthedocs.io/en/latest/run.html)
[Github](https://github.com/ethereum/remix-project)

&nbsp;

&nbsp;

### Install Nodejs and Web3js

Please read the [documentation][docs] for more.

#### Installation

You can install the package either using [NPM](https://www.npmjs.com/package/web3) or using [Yarn](https://yarnpkg.com/package/web3)

#### Using NPM

```bash
npm install web3
```

#### Yarn

```bash
yarn add web3
```

#### In the Browser

Use the prebuilt `dist/web3.min.js`, or
build using the [web3.js][repo] repository:

```bash
npm run build
```

Then include `dist/web3.min.js` in your html file.
This will expose `Web3` on the window object.

Or via jsDelivr CDN:

```html
<script src="https://cdn.jsdelivr.net/npm/web3@latest/dist/web3.min.js"></script>
```

UNPKG:

```html
<script src="https://unpkg.com/web3@latest/dist/web3.min.js"></script>
```

#### Usage

```js
// In Node.js
const Web3 = require('web3');
const web3 = new Web3('ws://localhost:8546');
console.log(web3);
// Output
{
    eth: ... ,
    shh: ... ,
    utils: ...,
    ...
}
```

Additionally you can set a provider using `web3.setProvider()` (e.g. WebsocketProvider):

```js
web3.setProvider('ws://localhost:8546');
// or
web3.setProvider(new Web3.providers.WebsocketProvider('ws://localhost:8546'));
```

There you go, now you can use it:

```js
web3.eth.getAccounts().then(console.log);
```


&nbsp;

&nbsp;

#### If you face any other Problem vist official Docs or refer various blogs to run blockchain apps on PC

#### After this step Deploy the contracts on Remix ide, Install lite-server and start a new server using lite-server and run the application

## The problem DECENTRALIZED PERSONAL HEALTH RECORD APPLICATION solves

&nbsp;

-Currently, the hospitals use traditional methods to store critical medical data of the patients which is indirectly subject to various attacks and thefts.

-In digital health records in centralized system, data sharing and privacy preservation are big challenges since medical data is sensitive.

-To design a decentralized application that is secure , private and where doctors are given a dependable way to maintain patient privacy while storing information about medical history.

-To design a system which is more patient centric so, if patient wishes only then their health records will be shared with the doctors.

-To develop a system that stores and displays the patients medical data to save time during emergency situations.

-Provide secure storage for patient information: The decentralized nature of blockchain technology would ensure that patient data is stored in a secure and tamper-proof manner, protecting it from unauthorized access or breaches.

-Facilitate data sharing: The system would allow authorized healthcare providers and researchers to access and share patient data in accordance with patient consent and data privacy regulations.

-Improve data interoperability: The system would enable the sharing of patient data between different healthcare organizations and systems, which would improve the continuity of care and medical research.

-Automate healthcare-related processes: Smart contracts on the blockchain platform could automate various processes such as claims processing, medical research and medical billing.

-Enable patient control over their data: Patients would have the ability to control and manage access to their personal health information (PHI) through the use of digital identity and consent management tools.

-So in order to enhance the hospital's digital health system, a "Decentralized Medical data sharing & storage application based on blockchain" is the solution.
