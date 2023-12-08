let cache_path = "~/.config/nu"
let components = {
    "starship": ["init", "nu"],
    "zoxide": ["init", "nushell"],
    "carapace": ["nu"]
}
$components | items {|key, value| run-external $"($key)" $value --redirect-stdout out> $"($cache_path)/($key).nu" } | echo out> if $nu.os-info.name != windows { "/dev/null" } else NUL
