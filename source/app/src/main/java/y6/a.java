package Y6;

import M7.h;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.D;
import com.itsmagic.engine.Activities.Editor.Utils.E;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import dd.InterfaceC12909c;
import java.util.List;
import n4.C14349a;
import r4.C15147a;
import rc.C15169a;

public class a extends EditorPanel {

    public static final String f29834g0 = "FloatingPopupMenu";

    public static final int f29835h0 = 2;

    public static final int f29836i0 = 6;

    public static final int f29837j0 = 14;

    public final List<C12908b> f29838X;

    public final Y6.b f29839Y;

    public FloatingPanelArea f29840Z;

    public final C15147a.e f29841a0;

    public FloatingPanelArea f29842b0;

    public boolean f29843c0;

    public boolean f29844d0;

    public boolean f29845e0;

    public E f29846f0;

    public class C0795a implements E.e {

        public final List f29847a;

        public final Y6.b f29848b;

        public final C15147a.e f29849c;

        public final View f29850d;

        public final Context f29851e;

        public class C0796a extends AbstractViewOnClickListenerC12733a {

            public final a f29852b;

            public final E f29853c;

            public C0796a(final a val$menu, final E val$blockPanel) {
                this.f29852b = val$menu;
                this.f29853c = val$blockPanel;
            }

            @Override
            public void click(View view) {
                try {
                    this.f29852b.R0();
                    this.f29853c.R0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public C0795a(final List val$items, final Y6.b val$listener, final C15147a.e val$anchorSide, final View val$anchor, final Context val$context) {
            this.f29847a = val$items;
            this.f29848b = val$listener;
            this.f29849c = val$anchorSide;
            this.f29850d = val$anchor;
            this.f29851e = val$context;
        }

        @Override
        public void a(E blockPanel) {
            a aVar = new a(this.f29847a, this.f29848b, this.f29849c, blockPanel, null);
            FloatingPanelArea g10 = C15147a.g(this.f29850d, aVar, this.f29849c, a.A1(this.f29847a), a.z1(this.f29847a, this.f29851e));
            aVar.f29840Z = g10;
            g10.T();
            g10.N1(false);
            g10.N0(false, false, true, false);
            g10.O1(true);
            blockPanel.r1(new C0796a(aVar, blockPanel));
        }
    }

    public class b implements E.e {

        public final List f29855a;

        public final Y6.b f29856b;

        public final float f29857c;

        public final float f29858d;

        public final Context f29859e;

        public class C0797a extends AbstractViewOnClickListenerC12733a {

            public final a f29860b;

            public final E f29861c;

            public C0797a(final a val$menu, final E val$blockPanel) {
                this.f29860b = val$menu;
                this.f29861c = val$blockPanel;
            }

            @Override
            public void click(View view) {
                try {
                    this.f29860b.R0();
                    this.f29861c.R0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public b(final List val$items, final Y6.b val$listener, final float val$x, final float val$y, final Context val$context) {
            this.f29855a = val$items;
            this.f29856b = val$listener;
            this.f29857c = val$x;
            this.f29858d = val$y;
            this.f29859e = val$context;
        }

        @Override
        public void a(E blockPanel) {
            a aVar = new a(this.f29855a, this.f29856b, C15147a.e.Right, blockPanel, null);
            FloatingPanelArea n10 = C15147a.n(aVar, this.f29857c, this.f29858d, a.A1(this.f29855a), a.z1(this.f29855a, this.f29859e));
            aVar.f29840Z = n10;
            n10.T();
            n10.N1(false);
            n10.N0(false, false, true, false);
            n10.O1(true);
            blockPanel.r1(new C0797a(aVar, blockPanel));
        }
    }

    public class c implements E.e {

        public final List f29863a;

        public final Y6.b f29864b;

        public final C15147a.e f29865c;

        public final View f29866d;

        public final Context f29867e;

        public final f f29868f;

        public class C0798a extends AbstractViewOnClickListenerC12733a {

            public final a f29869b;

            public final E f29870c;

            public C0798a(final a val$menu, final E val$blockPanel) {
                this.f29869b = val$menu;
                this.f29870c = val$blockPanel;
            }

            @Override
            public void click(View view) {
                try {
                    this.f29869b.R0();
                    this.f29870c.R0();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public c(final List val$items, final Y6.b val$listener, final C15147a.e val$anchorSide, final View val$anchor, final Context val$context, final f val$showChildListener) {
            this.f29863a = val$items;
            this.f29864b = val$listener;
            this.f29865c = val$anchorSide;
            this.f29866d = val$anchor;
            this.f29867e = val$context;
            this.f29868f = val$showChildListener;
        }

        @Override
        public void a(E blockPanel) {
            a aVar = new a(this.f29863a, this.f29864b, this.f29865c, blockPanel, null);
            FloatingPanelArea g10 = C15147a.g(this.f29866d, aVar, this.f29865c, a.A1(this.f29863a), a.z1(this.f29863a, this.f29867e));
            aVar.f29840Z = g10;
            g10.T();
            g10.N1(false);
            g10.N0(false, false, true, false);
            g10.O1(true);
            this.f29868f.a(g10);
            blockPanel.r1(new C0798a(aVar, blockPanel));
        }
    }

    public class d implements View.OnTouchListener {
        public d() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class e implements View.OnClickListener {

        public final C12908b f29873b;

        public class C0799a implements Y6.b {
            public C0799a() {
            }

            @Override
            public void a(C12908b item, String name) {
                a.this.R0();
                N7.c.D().B0(new C14349a());
            }
        }

        public class b implements f {
            public b() {
            }

            @Override
            public void a(FloatingPanelArea floatingPanelArea) {
                a.this.f29842b0 = floatingPanelArea;
                ((a) a.this.f29842b0.f70756w.get(0).M()).f29843c0 = false;
            }
        }

        public e(final C12908b val$item) {
            this.f29873b = val$item;
        }

        @Override
        public void onClick(View v10) {
            if (a.this.f29842b0 != null) {
                a.this.f29842b0.u0();
                a.this.f29842b0 = null;
            }
            if (this.f29873b.f84528a == C12908b.EnumC1575b.Folder) {
                a.H1(v10, a.this.f29841a0 == C15147a.e.Below ? C15147a.e.Right : a.this.f29841a0 == C15147a.e.Above ? C15147a.e.Right : a.this.f29841a0, this.f29873b.f84530c, new C0799a(), new b());
                return;
            }
            if (a.this.f29839Y != null) {
                Y6.b bVar = a.this.f29839Y;
                C12908b c12908b = this.f29873b;
                bVar.a(c12908b, c12908b.f84529b);
            }
            InterfaceC12909c interfaceC12909c = this.f29873b.f84532e;
            if (interfaceC12909c != null) {
                if (interfaceC12909c.onSelected(v10)) {
                    a.this.R0();
                    N7.c.D().B0(new C14349a());
                    return;
                }
                return;
            }
            a.this.R0();
            N7.c.D().B0(new C14349a());
            dd.d dVar = this.f29873b.f84531d;
            if (dVar != null) {
                dVar.onSelected(v10);
            }
        }
    }

    public interface f {
        void a(FloatingPanelArea floatingPanelArea);
    }

    public a(List list, Y6.b bVar, C15147a.e eVar, E e10, C0795a c0795a) {
        this(list, bVar, eVar, e10);
    }

    public static float A1(List<C12908b> items) {
        float f10 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < items.size(); i10++) {
            C12908b c12908b = items.get(i10);
            if (c12908b.f84528a != C12908b.EnumC1575b.Separator) {
                f10 = Nc.b.S0(D.f(N7.c.t(), c12908b.f84529b + "...", 14.0f)[0], f10);
                if (c12908b.f84533f != -1) {
                    z10 = true;
                }
                if (c12908b.f84528a == C12908b.EnumC1575b.Folder) {
                    z10 = true;
                    z11 = true;
                }
            }
        }
        return Nc.b.E(0.01f, N7.c.g((int) f10) + N7.c.g((z10 ? 26 : 0) + (z11 ? 26 : 0)) + N7.c.g(12), 0.95f);
    }

    public static void B1(int pixelX, int pixelY, List<C12908b> items) {
        D1(pixelX, pixelY, items, N7.c.t(), null);
    }

    public static void C1(int pixelX, int pixelY, List<C12908b> items, Context context) {
        D1(pixelX, pixelY, items, context, null);
    }

    public static void D1(int pixelX, int pixelY, List<C12908b> items, Context context, Y6.b listener) {
        FrameLayout P10 = N7.c.D().P();
        E.s1(new b(items, listener, pixelX / P10.getWidth(), pixelY / P10.getHeight(), context));
    }

    public static void E1(View anchor, C15147a.e anchorSide, C12908b item) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(item);
        F1(anchor, anchorSide, steppedArrayList);
    }

    public static void F1(View anchor, C15147a.e anchorSide, List<C12908b> items) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        G1(anchor, anchorSide, items, null);
    }

    public static void G1(View anchor, C15147a.e anchorSide, List<C12908b> items, Y6.b listener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        E.s1(new C0795a(items, listener, anchorSide, anchor, N7.c.t()));
    }

    public static void H1(View anchor, C15147a.e anchorSide, List<C12908b> items, Y6.b listener, f showChildListener) {
        if (anchor == null) {
            throw new NullPointerException("Anchor can't be null");
        }
        E.s1(new c(items, listener, anchorSide, anchor, N7.c.t(), showChildListener));
    }

    public static float z1(List<C12908b> items, Context context) {
        int dimension = (int) context.getResources().getDimension(R.dimen.editor3d_v2_popupmenu_item_height);
        int l02 = Nc.b.l0(6.0f, context);
        int l03 = Nc.b.l0(20.0f, context);
        int l04 = Nc.b.l0(2.0f, context);
        int l05 = Nc.b.l0(4.0f, context) + dimension;
        int i10 = 0;
        for (int i11 = 0; i11 < items.size(); i11++) {
            C12908b.EnumC1575b enumC1575b = items.get(i11).f84528a;
            i10 = enumC1575b == C12908b.EnumC1575b.Separator ? i10 + l02 : enumC1575b == C12908b.EnumC1575b.Tittle ? i10 + l03 : enumC1575b == C12908b.EnumC1575b.ButtonElements ? i10 + l05 : i10 + dimension;
            if (i11 < items.size() - 1) {
                i10 += l04;
            }
        }
        return Nc.b.E(N7.c.i(dimension), N7.c.i(i10), 1.0f);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.popupmenu_panel, (ViewGroup) null);
        LayoutInflater from = LayoutInflater.from(inflate.getContext());
        inflate.setOnTouchListener(new d());
        ViewGroup viewGroup = (LinearLayout) inflate.findViewById(R.id.content);
        viewGroup.removeAllViews();
        Nc.b.k0(2.0f);
        int k02 = Nc.b.k0(6.0f);
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        for (int i10 = 0; i10 < this.f29838X.size(); i10++) {
            C12908b c12908b = this.f29838X.get(i10);
            C12908b.EnumC1575b enumC1575b = c12908b.f84528a;
            if (enumC1575b != C12908b.EnumC1575b.Separator) {
                if (c12908b.f84533f != -1) {
                    z11 = true;
                }
                if (enumC1575b == C12908b.EnumC1575b.Folder) {
                    z11 = true;
                    z12 = true;
                }
            }
            if (c12908b.b() != null && c12908b.b().hasIcon()) {
                z11 = true;
            }
        }
        for (int i11 = 0; i11 < this.f29838X.size(); i11++) {
            C12908b c12908b2 = this.f29838X.get(i11);
            C12908b.EnumC1575b enumC1575b2 = c12908b2.f84528a;
            if (enumC1575b2 == C12908b.EnumC1575b.Separator) {
                View inflate2 = from.inflate(R.layout.popup_menu_item_separator, viewGroup, z10);
                viewGroup.addView(inflate2);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate2.getLayoutParams();
                layoutParams.width = -1;
                layoutParams.height = k02;
                inflate2.setLayoutParams(layoutParams);
                com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(inflate2, inflate2.getContext());
            } else if (enumC1575b2 == C12908b.EnumC1575b.ButtonElements) {
                View inflate3 = from.inflate(R.layout.popup_menu_submenu, viewGroup, z10);
                viewGroup.addView(inflate3);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) inflate3.getLayoutParams();
                layoutParams2.width = -1;
                layoutParams2.height = -2;
                inflate3.setLayoutParams(layoutParams2);
                LinearLayout linearLayout = (LinearLayout) inflate3.findViewById(R.id.left);
                if (c12908b2.f84539l != null) {
                    h hVar = new h();
                    hVar.k(linearLayout, M());
                    hVar.g(c12908b2.f84539l);
                }
                LinearLayout linearLayout2 = (LinearLayout) inflate3.findViewById(R.id.right);
                if (c12908b2.f84540m != null) {
                    h hVar2 = new h();
                    hVar2.k(linearLayout2, M());
                    hVar2.g(c12908b2.f84540m);
                }
                com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(inflate3, inflate3.getContext());
            } else if (enumC1575b2 == C12908b.EnumC1575b.Tittle) {
                View inflate4 = from.inflate(R.layout.popup_menu_title, viewGroup, z10);
                viewGroup.addView(inflate4);
                TextView textView = (TextView) inflate4.findViewById(R.id.name);
                textView.setText(c12908b2.f84529b);
                int i12 = c12908b2.f84534g;
                if (i12 != -1) {
                    textView.setTextColor(i12);
                }
                com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(inflate4, inflate4.getContext());
            } else {
                View inflate5 = from.inflate(c12908b2.f84537j ? R.layout.popup_menu_item : R.layout.popup_menu_item_disabled, viewGroup, z10);
                viewGroup.addView(inflate5);
                inflate5.findViewById(R.id.initSpace);
                TextView textView2 = (TextView) inflate5.findViewById(R.id.name);
                textView2.setText(c12908b2.f84529b);
                int i13 = c12908b2.f84534g;
                if (i13 != -1 && c12908b2.f84537j) {
                    textView2.setTextColor(i13);
                }
                ImageView imageView = (ImageView) inflate5.findViewById(R.id.icon);
                ImageView imageView2 = (ImageView) inflate5.findViewById(R.id.icon2);
                if (c12908b2.b() != null) {
                    c12908b2.b().a(M(), imageView);
                } else {
                    int i14 = c12908b2.f84533f;
                    if (i14 != -1) {
                        Vc.e.V(imageView, i14, M());
                    } else if (c12908b2.f84528a == C12908b.EnumC1575b.Folder) {
                        Vc.e.V(imageView, R.drawable.small_circle, M());
                        imageView.setImageTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
                    } else {
                        imageView.setVisibility(4);
                    }
                }
                if (c12908b2.f84528a == C12908b.EnumC1575b.Folder) {
                    z10 = false;
                    imageView2.setVisibility(0);
                } else {
                    z10 = false;
                    imageView2.setVisibility(4);
                }
                if (!z11) {
                    imageView.setVisibility(8);
                }
                if (!z12) {
                    imageView2.setVisibility(8);
                }
                inflate5.setOnClickListener(new e(c12908b2));
                com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.c(inflate5, inflate5.getContext());
            }
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        E e10 = this.f29846f0;
        if (e10 != null) {
            e10.R0();
        }
        FloatingPanelArea floatingPanelArea = this.f29842b0;
        if (floatingPanelArea != null) {
            floatingPanelArea.u0();
            this.f29842b0 = null;
        }
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (panelIntent instanceof C14349a) {
            R0();
        }
        return super.O0(panelIntent);
    }

    @Override
    public EditorPanel k() {
        return new a(new SteppedArrayList(this.f29838X), this.f29839Y, this.f29841a0, this.f29846f0);
    }

    @Override
    public void m1() {
        super.m1();
        if (this.f29843c0) {
            if (!this.f29844d0) {
                this.f29844d0 = true;
                for (int i10 = 0; i10 < C15169a.L(); i10++) {
                    tc.h n10 = C15169a.n(i10);
                    if (n10.k() || n10.q()) {
                        this.f29844d0 = false;
                        break;
                    }
                }
            }
            if (this.f29844d0) {
                for (int i11 = 0; i11 < C15169a.L(); i11++) {
                    tc.h n11 = C15169a.n(i11);
                    if (this.f29845e0) {
                        if ((n11.k() || n11.q()) && !n11.f117309e && !y1(n11)) {
                            R0();
                            return;
                        }
                    } else if (n11.k() && !n11.f117309e && !y1(n11)) {
                        R0();
                        return;
                    }
                }
            }
        }
    }

    public final boolean y1(tc.h t10) {
        try {
            FloatingPanelArea floatingPanelArea = this.f29842b0;
            if (floatingPanelArea != null && !floatingPanelArea.panelList.isEmpty()) {
                if (((a) this.f29842b0.panelList.get(0).M()).y1(t10)) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return u0(t10);
    }

    public a(List<C12908b> items, Y6.b listener, C15147a.e anchorSide, E blockPanel) {
        this.f29842b0 = null;
        this.f29843c0 = true;
        this.f29845e0 = true;
        this.f29838X = items;
        this.f29839Y = listener;
        this.f29841a0 = anchorSide;
        this.f29846f0 = blockPanel;
    }
}
