docker run --rm \
-v $(pwd)/:/build \
-v ~/.ssh:/home/build/.ssh \
-v ~/.gitconfig:/home/build/.gitconfig \
-w /build \
-it xen-troops
