#!/usr/bin/with-contenv sh
set -e
set -u
# Take ownership of the youtube-dl-downloads directory
if ! chown $USER_ID:$GROUP_ID /youtube-dl-downloads; then
    # Failed to take ownership of /output.  This could happen when,
    # for example, the folder is mapped to a network share.
    # Continue if we have write permission, else fail.
    if s6-setuidgid $USER_ID:$GROUP_ID [ ! -w /youtube-dl-downloads ]; then
        log "ERROR: Failed to take ownership and no write permission on /youtube-dl-downloads."
        exit 1
    fi
fi
