package rn;

import java.io.IOException;
import java.nio.ByteBuffer;
import qn.m;

public class a {
    public m a(ByteBuffer data, boolean cCompatibility) throws IOException {
        m mVar = new m();
        mVar.f108489a = data.getInt();
        int i10 = data.getInt();
        mVar.f108490b = i10;
        if (mVar.f108489a != 1146375250) {
            throw new IOException("Invalid magic");
        }
        if (i10 != 1) {
            throw new IOException("Invalid version");
        }
        mVar.f108491c = data.getInt();
        mVar.f108492d = data.getInt();
        mVar.f108493e = data.getInt();
        for (int i11 = 0; i11 < 3; i11++) {
            mVar.f108494f[i11] = data.getFloat();
        }
        for (int i12 = 0; i12 < 3; i12++) {
            mVar.f108495g[i12] = data.getFloat();
        }
        mVar.f108496h = data.getShort() & 65535;
        mVar.f108497i = data.getShort() & 65535;
        mVar.f108498j = data.get() & 255;
        mVar.f108499k = data.get() & 255;
        mVar.f108500l = data.get() & 255;
        mVar.f108501m = data.get() & 255;
        mVar.f108502n = data.get() & 255;
        mVar.f108503o = data.get() & 255;
        if (cCompatibility) {
            data.getShort();
        }
        return mVar;
    }
}
