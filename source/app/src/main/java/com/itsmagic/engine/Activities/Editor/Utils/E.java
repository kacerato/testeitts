package com.itsmagic.engine.Activities.Editor.Utils;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine2.R;
import java.util.HashSet;
import java.util.Set;
import r4.C15147a;

public class E extends EditorPanel {

    public static final String f71995Y = "UIBlockPanel";

    public static final Set<E> f71996Z = new HashSet();

    public static volatile boolean f71997a0 = false;

    public static final int f71998b0 = 7;

    public View.OnClickListener f71999X;

    public class a implements Runnable {

        public final e f72001c;

        public a(final e val$post) {
            this.f72001c = val$post;
        }

        @Override
        public void run() {
            FloatingPanelArea o10 = C15147a.o(E.this, 1.0f, 1.0f);
            o10.T();
            o10.N1(false);
            o10.M0();
            o10.E1(true);
            this.f72001c.a(E.this);
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (E.this.f71999X == null) {
                return true;
            }
            E.this.f71999X.onClick(view);
            return true;
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View view) {
            if (E.this.f71999X != null) {
                E.this.f71999X.onClick(view);
            }
            N7.c.Y();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            synchronized (E.f71996Z) {
                E.f71996Z.remove(E.this);
                E.f71997a0 = !E.f71996Z.isEmpty();
            }
        }
    }

    public interface e {
        void a(E blockPanel);
    }

    public E() {
        super(null, f71995Y);
        super.a1(false);
    }

    public static void s1(e post) {
        E e10 = new E();
        Set<E> set = f71996Z;
        synchronized (set) {
            set.add(e10);
            f71997a0 = !set.isEmpty();
        }
        N7.c.d0(7, new a(post));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.ui_block_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        inflate.setOnClickListener(new c());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.d0(7, new d());
    }

    public void r1(View.OnClickListener clickListener) {
        this.f71999X = clickListener;
    }
}
