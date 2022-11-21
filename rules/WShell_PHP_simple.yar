rule php_simple
{
    meta:
        author      = "movptr https://github.com/movptr06"
        date        = "2022/11/22"
        description = "Simple PHP webshell"
    strings:
        $php_open   = "<?"
        $php_shell  = "system($_GET"
        $php_close  = "?>"
    condition:
        all of them
}
