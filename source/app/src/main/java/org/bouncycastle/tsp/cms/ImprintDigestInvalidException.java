package org.bouncycastle.tsp.cms;

import org.bouncycastle.tsp.h;

public class ImprintDigestInvalidException extends Exception {
    private h token;

    public ImprintDigestInvalidException(String str, h hVar) {
        super(str);
        this.token = hVar;
    }

    public h getTimeStampToken() {
        return this.token;
    }
}
