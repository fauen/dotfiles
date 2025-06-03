ls
| where type == "dir"
| each {|entry|
    cd $entry.name
    print $"Entering ($entry.name)"
    if (ls .git | is-empty) {
        print "Not a git repository, skipping"
    } else {
        git status
    }
    cd ..
}

