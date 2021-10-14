mkdir -p /data/data/com.termux/files/home/symbiflow
export  INSTALL_DIR=/data/data/com.termux/files/home/symbiflow
wget http://fast.kjaisai1337.workers.dev/arch.tar.gz?rootId=root
tar -C $INSTALL_DIR  -xvf /data/data/com.termux/files/home/arch.tar.gz
export PATH="$INSTALL_DIR/quicklogic-arch-defs/bin:$INSTALL_DIR/quicklogic-arch-defs/bin/python3:$PATH"
