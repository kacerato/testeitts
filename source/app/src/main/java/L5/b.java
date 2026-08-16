package L5;

import N7.c;
import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public class b {

    public ProjectVersion f11605a;

    public String f11606b;

    public I5.a f11607c;

    public volatile float f11608d;

    public volatile String f11609e;

    public volatile String f11610f;

    public AtomicBoolean f11611g = new AtomicBoolean();

    public boolean f11612h = true;

    public void a() {
    }

    public void b() {
        this.f11611g.set(true);
    }

    public I5.a c() {
        return this.f11607c;
    }

    public String d(File file) {
        return file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.Y(this.f11606b) + "/", "");
    }

    public float e() {
        return this.f11608d;
    }

    public String f() {
        return this.f11606b;
    }

    public ProjectVersion g() {
        return this.f11605a;
    }

    public String h() {
        return this.f11609e;
    }

    public String i() {
        return this.f11610f;
    }

    public boolean j() {
        return this.f11611g.get();
    }

    public void k() {
    }

    public void l(Runnable runnable) {
        c.j0(runnable);
    }

    public void m(float percentage) {
        this.f11608d = percentage;
    }

    public void n(String subtittle) {
        this.f11609e = subtittle;
    }

    public void o(String tittle) {
        this.f11610f = tittle;
    }

    public void p() {
    }
}
