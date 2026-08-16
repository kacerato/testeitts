package Kg;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import okhttp3.l;

public final class b {

    public final List<l> f11330a;

    public int f11331b = 0;

    public boolean f11332c;

    public boolean f11333d;

    public b(List<l> list) {
        this.f11330a = list;
    }

    public l a(SSLSocket sSLSocket) throws IOException {
        l lVar;
        int i10 = this.f11331b;
        int size = this.f11330a.size();
        while (true) {
            if (i10 >= size) {
                lVar = null;
                break;
            }
            lVar = this.f11330a.get(i10);
            if (lVar.c(sSLSocket)) {
                this.f11331b = i10 + 1;
                break;
            }
            i10++;
        }
        if (lVar != null) {
            this.f11332c = c(sSLSocket);
            Gg.a.f7796a.c(lVar, sSLSocket, this.f11333d);
            return lVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f11333d + ", modes=" + ((Object) this.f11330a) + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean b(IOException iOException) {
        this.f11333d = true;
        if (!this.f11332c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }

    public final boolean c(SSLSocket sSLSocket) {
        for (int i10 = this.f11331b; i10 < this.f11330a.size(); i10++) {
            if (this.f11330a.get(i10).c(sSLSocket)) {
                return true;
            }
        }
        return false;
    }
}
