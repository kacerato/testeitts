package org.bouncycastle.cms;

import java.io.IOException;
import java.io.InputStream;
import oh.C14549x;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;

public class z0 extends W {

    public final InterfaceC14516g f101037d;

    public z0(C14549x c14549x, InterfaceC14516g interfaceC14516g) throws IOException {
        super(c14549x);
        this.f101037d = interfaceC14516g;
    }

    @Override
    public void a() throws IOException {
        this.f101037d.r();
    }

    @Override
    public InputStream b() {
        try {
            return e(this.f101037d);
        } catch (IOException e10) {
            throw new CMSRuntimeException("unable to convert content to stream: " + e10.getMessage(), e10);
        }
    }

    public InterfaceC14516g d() {
        return this.f101037d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        return new java.io.ByteArrayInputStream(r4, r0, r4.length - r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0011, code lost:
    
        if ((r4[0] & 31) == 31) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0013, code lost:
    
        r1 = r4[r2] & 128;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if (r1 == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
    
        r0 = r2 + 1;
        r1 = r4[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if ((r1 & 128) == 0) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        r0 = r0 + (r1 & Byte.MAX_VALUE);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InputStream e(InterfaceC14516g interfaceC14516g) throws IOException {
        byte[] s10 = interfaceC14516g.r().s(InterfaceC14520i.f98892a);
        int i10 = 1;
    }
}
