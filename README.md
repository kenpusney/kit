 Kim's Configurations Collection.
-----------

## Install
```shell
./install.sh  ## or `sudo ./install` under ubuntu.
```
## Usage
```shell
konfig <exec|recover|insert|list|backup|remove|clear|put>
```
#### Execution.
```shell
konfig exec [all | <script list>]
```
#### Configuration.
```shell
konfig conf [all | <config list>]
```
#### Insert new config.
```shell
konfig insert <config> <local path> <filename>
konfig add <config> <local path> <filename>
```
#### Backup configs.
```shell
konfig backup [all | <config list>]
```
#### Remove configs.

```shell
konfig remove all | <config list>     #remove configs
konfig rm all | <config list>         #remove configs
konfig clear                          #clear all
```
#### List configs.
```shell
konfig list | ls
```
#### Put scripts
```shell
konfig put <script>
```

## Examples.


