package jj;

import ij.t;
import ij.u;
import ij.v;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public class j implements u<SSLSession>, v, t {

    public final SSLSocket f93818a;

    public final InterfaceC13863a f93819b;

    public final Long f93820c;

    public j(SSLSocket sSLSocket, InterfaceC13863a interfaceC13863a, Long l10) {
        this.f93818a = sSLSocket;
        this.f93819b = interfaceC13863a;
        this.f93820c = l10;
    }

    @Override
    public byte[] b() {
        if (c()) {
            return this.f93819b.a(this.f93818a, "tls-unique");
        }
        throw new IllegalStateException("No binding provider.");
    }

    @Override
    public boolean c() {
        return this.f93819b.b(this.f93818a);
    }

    @Override
    public void close() throws IOException {
        this.f93818a.close();
    }

    @Override
    public Long d() {
        return this.f93820c;
    }

    @Override
    public SSLSession a() {
        return this.f93818a.getSession();
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return this.f93818a.getInputStream();
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return this.f93818a.getOutputStream();
    }
}
