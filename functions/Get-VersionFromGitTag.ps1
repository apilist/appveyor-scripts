function Get-VersionFromGitTag {
    $tag = Get-GitTagOnLastCommit
    if ($tag -match "^v(\d+\.\d+\.\d+(-.+)?)$") { $matches[1] } else { $null }
}

function Get-GitTagOnLastCommit {
    ($tag = git describe --tags --exact-match) 2> $null
    if ($?) { $tag } else { $null }
}
