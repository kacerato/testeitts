package org.bouncycastle.pqc.crypto.lms;

import java.io.IOException;

public class y implements org.bouncycastle.util.g {

    public final x f102239b;

    public final w f102240c;

    public y(x xVar, w wVar) {
        this.f102239b = xVar;
        this.f102240c = wVar;
    }

    public w a() {
        return this.f102240c;
    }

    public x b() {
        return this.f102239b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        x xVar = this.f102239b;
        if (xVar == null ? yVar.f102239b != null : !xVar.equals(yVar.f102239b)) {
            return false;
        }
        w wVar = this.f102240c;
        w wVar2 = yVar.f102240c;
        return wVar != null ? wVar.equals(wVar2) : wVar2 == null;
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return C14745a.i().d(this.f102239b.getEncoded()).d(this.f102240c.getEncoded()).b();
    }

    public int hashCode() {
        x xVar = this.f102239b;
        int hashCode = (xVar != null ? xVar.hashCode() : 0) * 31;
        w wVar = this.f102240c;
        return hashCode + (wVar != null ? wVar.hashCode() : 0);
    }
}
