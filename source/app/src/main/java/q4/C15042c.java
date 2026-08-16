package q4;

import android.view.View;

public class C15042c {

    public String f105910a;

    public int f105911b;

    public a f105912c;

    public d f105913d;

    public boolean f105914e;

    public View f105915f;

    public InterfaceC15041b f105916g;

    public enum a {
        Resource,
        Path
    }

    public C15042c(String icon, d rightOptionListener) {
        this.f105914e = true;
        this.f105910a = icon;
        this.f105912c = a.Path;
        this.f105913d = rightOptionListener;
    }

    public String a() {
        return this.f105910a;
    }

    public int b() {
        return this.f105911b;
    }

    public a c() {
        return this.f105912c;
    }

    public d d() {
        return this.f105913d;
    }

    public boolean e() {
        return this.f105914e;
    }

    public void f(int icon) {
        this.f105911b = icon;
        this.f105912c = a.Resource;
        InterfaceC15041b interfaceC15041b = this.f105916g;
        if (interfaceC15041b != null) {
            interfaceC15041b.a();
        }
    }

    public void g(d rightOptionListener) {
        this.f105913d = rightOptionListener;
    }

    public void h(boolean visible) {
        this.f105914e = visible;
        View view = this.f105915f;
        if (view != null) {
            view.setVisibility(visible ? 0 : 8);
        }
    }

    public C15042c(int iconResource, d rightOptionListener) {
        this.f105914e = true;
        this.f105911b = iconResource;
        this.f105912c = a.Resource;
        this.f105913d = rightOptionListener;
    }
}
