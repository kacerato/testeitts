package A5;

import A5.a;
import a8.C3589a;
import a8.C3590b;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import gb.C13317e;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import n4.C14351c;
import n4.f;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f299d0 = "Inspector";

    public static final Class f300e0 = a.class;

    public static final List<A5.c> f301f0;

    public RecyclerView f302X;

    public B5.a f303Y;

    public LinearLayout f304Z;

    public LinearLayout f305a0;

    public View f306b0;

    public final A5.c f307c0;

    public class C0010a extends EditorPanel.j {
        @Override
        public Class b() {
            return a.f300e0;
        }

        @Override
        public String c() {
            return a.f299d0;
        }
    }

    public class b implements Runnable {
        @Override
        public void run() {
            boolean z10 = false;
            for (int i10 = 0; i10 < a.f301f0.size(); i10++) {
                A5.c cVar = (A5.c) a.f301f0.get(i10);
                if (cVar != null) {
                    cVar.e();
                } else {
                    z10 = true;
                }
            }
            if (!z10) {
                return;
            }
            while (true) {
                int i11 = 0;
                while (i11 < a.f301f0.size()) {
                    if (((A5.c) a.f301f0.get(i11)) == null) {
                        break;
                    } else {
                        i11++;
                    }
                }
                return;
                a.f301f0.remove(i11);
            }
        }
    }

    public class c implements A5.c {

        public class RunnableC0011a implements Runnable {

            public final int f309b;

            public RunnableC0011a(final int val$position) {
                this.f309b = val$position;
            }

            @Override
            public void run() {
                if (this.f309b < 0) {
                    a.this.A1(W7.b.f27309i.f31909a.f31910a);
                } else if (a.this.f303Y != null) {
                    a.this.f303Y.b(this.f309b);
                }
            }
        }

        public class b implements Runnable {

            public final Component f311b;

            public b(final Component val$component) {
                this.f311b = val$component;
            }

            @Override
            public void run() {
                if (a.this.f303Y == null || !(a.this.f303Y instanceof B5.c)) {
                    return;
                }
                ((B5.c) a.this.f303Y).s(this.f311b);
            }
        }

        public class RunnableC0012c implements Runnable {
            public RunnableC0012c() {
            }

            @Override
            public void run() {
                if (a.this.f303Y != null) {
                    a.this.f303Y.c();
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                a.this.A1(W7.b.f27309i.f31909a.f31910a);
            }
        }

        public c() {
        }

        @Override
        public void b() {
            a.this.A().runOnUiThread(new d());
        }

        @Override
        public void c(final GameObject gameObject) {
            a.this.A().runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    a.c.this.h(gameObject);
                }
            });
        }

        @Override
        public void d() {
            a.this.S0();
        }

        @Override
        public void e() {
            a.this.r1();
        }

        @Override
        public void f(Component component) {
            if (component != null) {
                N7.c.j0(new b(component));
            }
        }

        @Override
        public void g() {
            a.this.A().runOnUiThread(new RunnableC0012c());
        }

        @Override
        public a getInstance() {
            return a.this;
        }

        public final void h(GameObject gameObject) {
            a.this.A1(gameObject);
            if (EditorSettings.a().focusOnPropertiesAfterObjectSelection) {
                d();
            }
        }

        @Override
        public void refresh(int position) {
            a.this.A().runOnUiThread(new RunnableC0011a(position));
        }
    }

    public class d extends SteppedArrayList<C12908b> {

        public class C0013a implements dd.d {
            public C0013a() {
            }

            @Override
            public void onSelected(View v10) {
                C3589a c3589a = W7.b.f27309i;
                if (c3589a.f31909a.b() == C3590b.a.Empty) {
                    d.this.clear();
                } else {
                    a.this.A1(c3589a.f31909a.f31910a);
                }
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                GameObject gameObject = W7.b.f27309i.f31909a.f31910a;
                if (gameObject != null) {
                    C13317e.M(gameObject, v10, C15147a.e.Right);
                }
            }
        }

        public d() {
            add(new C12908b(F2.d.f6290y0, new C0013a()));
            add(new C12908b("Object options", new b()));
        }
    }

    static {
        EditorPanel.a(new C0010a());
        f301f0 = Collections.synchronizedList(new LinkedList());
    }

    public a(K8.a engine) {
        super(engine);
        this.f307c0 = new c();
    }

    public static void B1() {
        N7.c.j0(new b());
    }

    public static void s1() {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.d();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static a t1() {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 < list2.size()) {
                A5.c cVar = list2.get(i10);
                if (cVar != null) {
                    return cVar.getInstance();
                }
                i10++;
                z10 = true;
            } else {
                if (!z10) {
                    return null;
                }
                while (true) {
                    int i11 = 0;
                    while (true) {
                        list = f301f0;
                        if (i11 >= list.size()) {
                            return null;
                        }
                        if (list.get(i11) == null) {
                            break;
                        }
                        i11++;
                    }
                    list.remove(i11);
                }
            }
        }
    }

    public static void v1(int position) {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.refresh(position);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void w1() {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.g();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void x1(Component component) {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.f(component);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void y1() {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.b();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void z1(GameObject gameObject) {
        List<A5.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<A5.c> list2 = f301f0;
            if (i10 >= list2.size()) {
                break;
            }
            A5.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.c(gameObject);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f301f0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public void A1(GameObject gameObject) {
        if (J3.a.d() && gameObject == J3.a.b()) {
            u1(J3.a.b());
            return;
        }
        B5.a aVar = this.f303Y;
        if (aVar != null && (aVar instanceof B5.c)) {
            ((B5.c) aVar).t(gameObject);
            return;
        }
        r1();
        B5.c cVar = new B5.c(gameObject, this.f306b0, this.f305a0, this.f304Z, this.f302X, A(), this.f70908j);
        this.f303Y = cVar;
        cVar.d();
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.inspector_panel, (ViewGroup) null);
        com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(inflate, M());
        this.f302X = (RecyclerView) inflate.findViewById(R.id.listView);
        this.f304Z = (LinearLayout) inflate.findViewById(R.id.topContent);
        this.f306b0 = inflate.findViewById(R.id.scrollView);
        this.f305a0 = (LinearLayout) inflate.findViewById(R.id.scrollContent);
        this.f302X.setItemAnimator(null);
        f301f0.add(this.f307c0);
        A1(W7.b.f27309i.f31909a.f31910a);
        return inflate;
    }

    @Override
    public void G0() {
        B5.a aVar = this.f303Y;
        if (aVar != null) {
            aVar.a();
        }
        this.f303Y = null;
        f301f0.remove(this.f307c0);
    }

    @Override
    public void M0() {
        super.M0();
        r1();
        this.f303Y = null;
        A1(W7.b.f27309i.f31909a.f31910a);
    }

    @Override
    public List<C12908b> N() {
        return new d();
    }

    @Override
    public boolean O0(f panelIntent) {
        boolean z10 = panelIntent instanceof C14351c;
        return false;
    }

    @Override
    public EditorPanel k() {
        return new a();
    }

    @Override
    public void n1() {
        super.n1();
        B5.a aVar = this.f303Y;
        if (aVar != null) {
            aVar.h();
        }
    }

    public void r1() {
        B5.a aVar = this.f303Y;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void u1(GameObject gameObject) {
        B5.a aVar = this.f303Y;
        if (aVar != null && (aVar instanceof B5.d)) {
            ((B5.d) aVar).r(gameObject);
            return;
        }
        r1();
        B5.d dVar = new B5.d(gameObject, this.f306b0, this.f305a0, this.f304Z, this.f302X, A(), this.f70908j);
        this.f303Y = dVar;
        dVar.d();
    }

    public a() {
        super(null, Lang.l(Lang.T.PROPERTIES), f299d0);
        this.f307c0 = new c();
    }
}
