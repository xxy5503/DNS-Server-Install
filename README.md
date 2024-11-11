
# 自动安装 DNS 服务器

此项目旨在为 Ubuntu 系统自动化安装并配置 DNS 服务器。通过运行一个简单的脚本，您可以轻松部署和初始化 DNS 服务器。

## 系统要求

- Ubuntu 操作系统（适用于最新的 LTS 版本）
- 需要管理员权限（sudo）

## 使用方法

### 1. 下载本项目

首先，使用 `git clone` 命令将此项目下载到本地：

```bash
git clone https://github.com/xxy5503/DNS-Server-Install.git
```

### 2. 进入项目目录

下载完成后，进入项目的目录：

```bash
cd DNS-Server-Install/
```

### 3. 为脚本添加执行权限

使用 `chmod` 命令为安装脚本添加执行权限：

```bash
chmod +x install-dns
```

### 4. 执行安装脚本

运行以下命令执行 DNS 服务器安装脚本：

```bash
./install-dns
```

### 5. 初始化 DNS 服务器

根据脚本的提示，打开网页进行 DNS 服务器的初始化配置。此过程将引导您完成服务器的设置。

## 配置说明

- 脚本将自动安装所需的依赖，并配置 DNS 服务器。
- 初始化时，您将被要求设置一些基本参数，如内网DNS IP 地址、国内DNS IP 地址、内网域名等。

![image](https://github.com/xxy5503/DNS-Server-Install/blob/main/img/edit_dns.png)

## 常见问题

### Q: 如果安装过程中遇到权限问题怎么办？

A: 请确保使用 `sudo` 命令运行脚本或以 root 用户身份执行安装。

### Q: 如何卸载 DNS 服务器？

A: **WIP**

## 许可证

本项目采用 [MIT 许可证](LICENSE)，欢迎开源和贡献。


如果需要更多的自定义，或者有其他问题，欢迎随时提问！
