package sn;

import qn.i;

public class c implements i {
    @Override
    public byte[] a(byte[] buf, int offset, int len, int outputlen) {
        return net.jpountz.lz4.i.e().d().g(buf, offset, outputlen);
    }

    @Override
    public byte[] b(byte[] buf) {
        return net.jpountz.lz4.i.e().g().f(buf);
    }
}
