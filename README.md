<div align="center">
  <h1 style="font-size: 24px; color: blue;">My NixOs 23.05 environment</h1>
</div>
<table style="border-collapse: collapse; width: 100%;">
  <tr>
    <td style="border: none; width: 30%;" valign="top">
      <div align="center">
    <td style="border: none; width: 70%;">
      <table>
        <tr>
          <th align="left">Device</th>
          <th align="left">Specification</th>
        </tr>
        <tr>
          <td>MODEL</td>
          <td>Dell® Latitude E6540 </td>
        </tr>
        <tr>
          <td>MOTHERBOARD</td>
          <td>Dell Motherboard 0CYT5F A00 </td>
        </tr>
         <tr>
          <td>CPU</td>
          <td>Intel Core i7-4800MQ CPU @ 2.70GHz</td>
        </tr>
        <tr>
          <td>GPU</td>
          <td>Intel 4th Gen Core Processor Integrated Graphics Controller </td>
        </tr>
        <tr>
          <td>GPU</td>
          <td>AMD/ATI Mars XTX [Radeon HD 8790M] </td>
        </tr>
          <td>RAM</td>
          <td> 2x RAM Module 8GB SODIMM DDR3 1600MT/s  </td>
        </tr>
        <tr>
          <td>SATA</td>
          <td> PNY CS900 1TB SSD   </td>
        </tr>
        <tr>
          <td>NETWORK</td>
          <td>Intel  	Centrino Ultimate-N 6300   </td>
        </tr>
        <tr>
         <tr>
          <td>BLUE-TOOTH</td>
          <td>    </td>
        </tr>
      </table>
  </tr>
</table>

+ **Should I use NixOS?**

  **Short answer:** no.

  **Long answer:** No.  Really.  _Don't._

  **Long long answer:** I'm not kidding. **_Don't._**

  **Unsigned long long answer:** Alright alright. Here's why not:

  - Its learning curve is steep.
  - You _will_ trial and error your way to enlightenment, if you survive long enough.
  - NixOS is unlike other Linux distros. Your issues will be unique and difficult to google.
  - If the words "declarative", "generational", and "immutable" don't make you  _fully_ erect, you're considering NixOS for the wrong reasons.
  - The overhead of managing a NixOS config will rarely pay for itself with  fewer than 3 systems (perhaps another distro with nix on top would suit you better?).
  - Official documentation for Nix(OS) is vast, but shallow.
  - Unofficial resources and example configs are sparse and tend to be either too simple or too complex (or outdated).
  - The Nix language is obtuse and its toolchain is unintuitive. This is made infinitely worse if you've never touched the shell or a functional language before, but you'll _need_ to learn it to do even a fraction of what makes NixOS worth all the trouble.
  - A decent grasp of Linux and its ecosystem is a must, if only to distinguish Nix(OS) issues from Linux (or upstream) issues -- as well as to debug them or report them to the correct authority (and coherently).
  - If you need somebody else to tell you whether or not you need NixOS, you don't need NixOS.

  If none of this has deterred you, then you didn't need my advice in the first place. Stop procrastinating and try NixOS!

[comment]: # ( from https://github.com/hlissner/dotfiles/blob/master/README.md#frequently-asked-questions)

All credit for this environment goes to my brother from another mother, Tolga Erok.
![Tolga Erok](https://github.com/wvpianoman/pics/blob/main/tole.jpg)
You will find all his configs [here...](https://github.com/tolgaerok/nixos-kde)

