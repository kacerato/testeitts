package E3;

import java.io.File;

public class a {

    public final File f5438b;

    public final c f5440d;

    public String f5441e;

    public int f5442f;

    public final String f5443g;

    public float f5444h;

    public final String f5445i;

    public final String f5446j;

    public final Object f5437a = new Object();

    public d f5439c = d.Waiting;

    public a(File file, c mode, String project, String ipp, String serverLM) {
        this.f5438b = file;
        this.f5440d = mode;
        this.f5443g = project;
        this.f5445i = ipp;
        this.f5446j = serverLM;
    }

    public String a() {
        String str;
        synchronized (this.f5437a) {
            str = this.f5441e;
        }
        return str;
    }

    public File b() {
        return this.f5438b;
    }

    public String c() {
        return this.f5445i;
    }

    public c d() {
        return this.f5440d;
    }

    public int e() {
        int i10;
        synchronized (this.f5437a) {
            i10 = this.f5442f;
        }
        return i10;
    }

    public String f() {
        return this.f5443g;
    }

    public String g() {
        return this.f5446j;
    }

    public d h() {
        d dVar;
        synchronized (this.f5437a) {
            dVar = this.f5439c;
        }
        return dVar;
    }

    public void i(String error) {
        synchronized (this.f5437a) {
            this.f5441e = error;
        }
    }

    public void j(int percentage) {
        synchronized (this.f5437a) {
            this.f5442f = percentage;
        }
    }

    public void k(d status) {
        synchronized (this.f5437a) {
            this.f5439c = status;
        }
    }
}
