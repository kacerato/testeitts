package org.bouncycastle.openssl;

import java.io.IOException;
import org.bouncycastle.operator.OperatorCreationException;

public class e {

    public final String f101865a;

    public final byte[] f101866b;

    public final byte[] f101867c;

    public final h f101868d;

    public e(String str, byte[] bArr, byte[] bArr2, h hVar) {
        this.f101865a = str;
        this.f101866b = bArr;
        this.f101867c = bArr2;
        this.f101868d = hVar;
    }

    public g a(d dVar) throws IOException {
        try {
            return this.f101868d.a(dVar.get(this.f101865a).a(this.f101867c, this.f101866b));
        } catch (IOException e10) {
            throw e10;
        } catch (OperatorCreationException e11) {
            throw new PEMException("cannot create extraction operator: " + e11.getMessage(), e11);
        } catch (Exception e12) {
            throw new PEMException("exception processing key pair: " + e12.getMessage(), e12);
        }
    }

    public String b() {
        return this.f101865a;
    }
}
