package org.bouncycastle.x509;

import java.util.ArrayList;
import java.util.Collection;

public class q implements s {

    public Collection f102418b;

    public q(Collection collection) {
        if (collection == null) {
            throw new NullPointerException("collection cannot be null");
        }
        this.f102418b = collection;
    }

    public Collection a() {
        return new ArrayList(this.f102418b);
    }

    public Object clone() {
        return new q(this.f102418b);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("X509CollectionStoreParameters: [\n");
        stringBuffer.append("  collection: " + ((Object) this.f102418b) + "\n");
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
