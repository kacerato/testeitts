package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.io.OutputStream;
import java.util.zip.DeflaterOutputStream;
import uh.InterfaceC15621l;

public class V implements Qk.E {
    @Override
    public C13486b a() {
        return new C13486b(InterfaceC15621l.f120715w8);
    }

    @Override
    public OutputStream d(OutputStream outputStream) {
        return new DeflaterOutputStream(outputStream);
    }
}
