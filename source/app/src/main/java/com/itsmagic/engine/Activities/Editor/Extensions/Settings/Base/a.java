package com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base;

import F7.i;
import F7.j;
import N7.c;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class a extends i {

    public final List<a> f70506m;

    public N3.b f70507n;

    public class C1076a implements j {
        @Override
        public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
            imageView.setVisibility(8);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            if (a.this.f70507n != null) {
                a.this.f70507n.a();
            }
        }
    }

    public a(String tittle) {
        super(tittle, new C1076a());
        this.f70506m = new SteppedArrayList();
    }

    public void A() {
        c.j0(new b());
    }

    public void B() {
        EditorSettings.e();
    }

    public void C(N3.b listener) {
        this.f70507n = listener;
    }

    @Override
    public String g() {
        return this.f6679a;
    }

    public a v(a element) {
        this.f70506m.add(element);
        return this;
    }

    public EditorSettings.Settings w() {
        return EditorSettings.a();
    }

    public List<a> x() {
        return this.f70506m;
    }

    public List<C5.b> y(Context context) {
        return null;
    }

    public N3.b z() {
        return this.f70507n;
    }
}
