package org.bouncycastle.jce;

import java.security.cert.CertStoreParameters;
import java.util.Collection;

public class d implements CertStoreParameters {

    public Collection f101512b;

    public boolean f101513c;

    public d(Collection collection) {
        this(collection, true);
    }

    public Collection a() {
        return this.f101512b;
    }

    public boolean b() {
        return this.f101513c;
    }

    @Override
    public Object clone() {
        return this;
    }

    public d(Collection collection, boolean z10) {
        this.f101512b = collection;
        this.f101513c = z10;
    }
}
