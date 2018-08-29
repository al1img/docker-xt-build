docker run \
-v $(pwd)/:/mnt/prod-devel \
-v ~/xt-nfs/:/mnt/xt-nfs \
-v ~/.ssh:/home/build/.ssh \
-v ~/.gitconfig:/home/build/.gitconfig \
-w /mnt/prod-devel \
-it xen-troops \
/bin/bash -c "source xt-distro/oe-init-build-env && bitbake xt-image"
