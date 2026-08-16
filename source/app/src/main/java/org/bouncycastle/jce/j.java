package org.bouncycastle.jce;

import fi.C13228d;
import hi.B0;
import java.io.IOException;
import java.security.Principal;
import java.util.Hashtable;
import java.util.Vector;
import oh.E;
import oh.InterfaceC14520i;
import oh.r;

public class j extends B0 implements Principal {
    public j(C13228d c13228d) {
        super((E) c13228d.r());
    }

    public static E K(r rVar) throws IOException {
        try {
            return E.G(rVar.k());
        } catch (IllegalArgumentException e10) {
            throw new IOException("not an ASN.1 Sequence: " + ((Object) e10));
        }
    }

    @Override
    public byte[] getEncoded() {
        try {
            return s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new RuntimeException(e10.toString());
        }
    }

    @Override
    public String getName() {
        return toString();
    }

    public j(B0 b02) {
        super((E) b02.r());
    }

    public j(String str) {
        super(str);
    }

    public j(Hashtable hashtable) {
        super(hashtable);
    }

    public j(Vector vector, Hashtable hashtable) {
        super(vector, hashtable);
    }

    public j(Vector vector, Vector vector2) {
        super(vector, vector2);
    }

    public j(boolean z10, String str) {
        super(z10, str);
    }

    public j(boolean z10, Hashtable hashtable, String str) {
        super(z10, hashtable, str);
    }

    public j(byte[] bArr) throws IOException {
        super(K(new r(bArr)));
    }
}
