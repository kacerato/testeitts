package B0;

import G0.InterfaceC2590s0;
import G0.c1;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public abstract class L extends c1 {

    public final int f1138e;

    public L(byte[] bArr) {
        G0.A.a(bArr.length == 25);
        this.f1138e = Arrays.hashCode(bArr);
    }

    public static byte[] t(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override
    public final int P1() {
        return this.f1138e;
    }

    @Override
    public final W0.d Q1() {
        return W0.f.l0(l0());
    }

    public final boolean equals(@Nullable Object obj) {
        W0.d Q12;
        if (obj != null && (obj instanceof InterfaceC2590s0)) {
            try {
                InterfaceC2590s0 interfaceC2590s0 = (InterfaceC2590s0) obj;
                if (interfaceC2590s0.P1() == this.f1138e && (Q12 = interfaceC2590s0.Q1()) != null) {
                    return Arrays.equals(l0(), (byte[]) W0.f.t(Q12));
                }
                return false;
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f1138e;
    }

    public abstract byte[] l0();
}
