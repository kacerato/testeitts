package Sl;

import Bi.InterfaceC2392y;
import java.nio.ByteBuffer;

public class k {

    public int f23724a = 0;

    public byte[] f23725b;

    public InterfaceC2392y f23726c;

    public k(byte[] bArr, InterfaceC2392y interfaceC2392y) {
        this.f23725b = bArr;
        this.f23726c = interfaceC2392y;
    }

    public byte[] a(int i10) {
        ByteBuffer allocate = ByteBuffer.allocate(i10);
        while (allocate.hasRemaining()) {
            ByteBuffer allocate2 = ByteBuffer.allocate(this.f23725b.length + 4);
            allocate2.put(this.f23725b);
            allocate2.putInt(this.f23724a);
            byte[] array = allocate2.array();
            int f10 = this.f23726c.f();
            byte[] bArr = new byte[f10];
            this.f23726c.update(array, 0, array.length);
            this.f23726c.c(bArr, 0);
            if (allocate.remaining() < f10) {
                allocate.put(bArr, 0, allocate.remaining());
            } else {
                allocate.put(bArr);
            }
            this.f23724a++;
        }
        return allocate.array();
    }
}
