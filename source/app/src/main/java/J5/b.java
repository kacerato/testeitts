package J5;

import N7.c;
import java.util.concurrent.atomic.AtomicBoolean;

public class b {

    public float f10270a;

    public String f10271b;

    public String f10272c;

    public AtomicBoolean f10273d = new AtomicBoolean();

    public boolean f10274e = true;

    public void a() {
    }

    public void b() {
        this.f10273d.set(true);
    }

    public float c() {
        return this.f10270a;
    }

    public String d() {
        return this.f10271b;
    }

    public String e() {
        return this.f10272c;
    }

    public boolean f() {
        return this.f10273d.get();
    }

    public void g() {
    }

    public void h(Runnable runnable) {
        c.j0(runnable);
    }

    public void i(float percentage) {
        this.f10270a = percentage;
    }

    public void j(String subtittle) {
        this.f10271b = subtittle;
    }

    public void k(String tittle) {
        this.f10272c = tittle;
    }

    public void l() {
    }
}
