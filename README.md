 Kim's Configurations Collection.
-----------

## Install
```shell
./install.sh  ## or `sudo ./install` under ubuntu.
```
## Uninstall
```shell
./install.sh un
```

## Usage
```shell
kit <exec|recover|insert|list|backup|remove|clear|put>
```
#### Execution.
```shell
kit exec [all | <script list>]
```
#### Configuration.
```shell
kit conf [all | <config list>]
```
#### Insert new config.
```shell
kit insert <config> <local path> <filename>
kit add <config> <local path> <filename>
```
#### Backup configs.
```shell
kit backup [all | <config list>]
```
#### Remove configs.

```shell
kit remove all | <config list>     #remove configs
kit rm all | <config list>         #remove configs
kit clear                          #clear all
```
#### List configs.
```shell
kit list | ls
```
#### Put scripts
```shell
kit put <script>
```

## Examples.


