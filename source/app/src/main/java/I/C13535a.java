package i;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import g.C13264b;

public class C13535a {

    public View f91159a;

    public TextView f91160b;

    public View f91161c;

    public C13535a(Context context) {
        this(LayoutInflater.from(context).inflate(C13264b.i.f87225z, (ViewGroup) null));
    }

    public View a() {
        return this.f91161c;
    }

    public TextView b() {
        return this.f91160b;
    }

    public View c() {
        return this.f91159a;
    }

    public void d() {
        a().setVisibility(4);
    }

    public void e() {
        a().setVisibility(0);
    }

    public C13535a(View view) {
        this.f91159a = view;
        this.f91160b = (TextView) view.findViewById(C13264b.g.f87108H0);
        this.f91161c = view.findViewById(C13264b.g.f87172r0);
    }
}
