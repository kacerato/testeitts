package C5;

import C5.b;
import C5.d;
import Ic.C2630i;
import JAVARuntime.ClassCategory;
import JAVARuntime.Runnable;
import M7.c;
import Z6.c;
import a8.C3590b;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.text.Spannable;
import android.text.style.StrikethroughSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomCheckBox;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import dd.C12908b;
import java.util.LinkedList;
import java.util.List;
import n4.C14349a;
import r4.C15147a;

public class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    public static final Ac.b f2092e = Theme.T.PANEL_TOPBAR;

    public static final Ac.b f2093f = Theme.T.PRIMARY_DARK;

    public final List<C5.d> f2094a;

    public final Context f2095b;

    public final LayoutInflater f2096c;

    public final j f2097d;

    public class a implements CompoundButton.OnCheckedChangeListener {

        public final C5.d f2098a;

        public final i f2099b;

        public final int f2100c;

        public a(final C5.d val$item, final i val$holder, final int val$position) {
            this.f2098a = val$item;
            this.f2099b = val$holder;
            this.f2100c = val$position;
        }

        @Override
        public void onCheckedChanged(CompoundButton buttonView, boolean b10) {
            if (this.f2098a.f2157d != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2099b.f2149d.getLayoutParams();
                if (b10) {
                    layoutParams.height = -2;
                } else {
                    layoutParams.height = 0;
                }
                this.f2099b.f2149d.setLayoutParams(layoutParams);
                C5.a aVar = this.f2098a.f2157d;
                if (aVar != null) {
                    aVar.b().i(b10);
                    if (b10 != this.f2098a.f2157d.f2045r) {
                        try {
                            c.this.notifyItemChanged(this.f2100c);
                        } catch (IllegalStateException unused) {
                        }
                    }
                }
            }
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public final C5.d f2102b;

        public final i f2103c;

        public final int f2104d;

        public b(final C5.d val$item, final i val$holder, final int val$position) {
            this.f2102b = val$item;
            this.f2103c = val$holder;
            this.f2104d = val$position;
        }

        @Override
        public void click(View view) {
            if (this.f2102b.f2157d != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2103c.f2149d.getLayoutParams();
                if (this.f2103c.f2148c.isChecked()) {
                    layoutParams.height = 0;
                } else {
                    layoutParams.height = -2;
                }
                this.f2103c.f2149d.setLayoutParams(layoutParams);
                this.f2103c.f2148c.setChecked(!r2.isChecked());
                C5.a aVar = this.f2102b.f2157d;
                if (aVar != null) {
                    aVar.b().i(this.f2103c.f2148c.isChecked());
                    if (this.f2102b.f2157d.f2045r != this.f2103c.f2148c.isChecked()) {
                        try {
                            c.this.notifyItemChanged(this.f2104d);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
    }

    public class ViewOnLongClickListenerC0045c implements View.OnLongClickListener {

        public final C5.d f2106b;

        public final Context f2107c;

        public class a extends SteppedArrayList<C12908b> {

            public final Activity f2109b;

            public final View f2110c;

            public class C0046a extends LinkedList<M7.g> {

                public class C0047a implements M7.d {

                    public class C0048a implements Runnable {

                        public class RunnableC0049a implements Runnable {

                            public class RunnableC0050a implements Runnable {
                                public RunnableC0050a() {
                                }

                                @Override
                                public void run() {
                                    A5.a.y1();
                                }
                            }

                            public RunnableC0049a() {
                            }

                            @Override
                            public void run() {
                                N7.c.j0(new RunnableC0050a());
                            }
                        }

                        public C0048a() {
                        }

                        @Override
                        public void run() {
                            ViewOnLongClickListenerC0045c.this.f2106b.f2154a.C0().D(ViewOnLongClickListenerC0045c.this.f2106b.f2155b);
                            K8.a.B(new RunnableC0049a());
                        }
                    }

                    public C0047a() {
                    }

                    @Override
                    public void onClick(View v10, Context context, M7.c tbButton) {
                        K8.a.I(new C0048a());
                    }
                }

                public class b implements M7.d {

                    public class C0051a implements Runnable {

                        public class RunnableC0052a implements Runnable {

                            public class RunnableC0053a implements Runnable {
                                public RunnableC0053a() {
                                }

                                @Override
                                public void run() {
                                    A5.a.y1();
                                }
                            }

                            public RunnableC0052a() {
                            }

                            @Override
                            public void run() {
                                N7.c.j0(new RunnableC0053a());
                            }
                        }

                        public C0051a() {
                        }

                        @Override
                        public void run() {
                            ViewOnLongClickListenerC0045c.this.f2106b.f2154a.C0().C(ViewOnLongClickListenerC0045c.this.f2106b.f2155b);
                            K8.a.B(new RunnableC0052a());
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onClick(View v10, Context context, M7.c tbButton) {
                        K8.a.I(new C0051a());
                    }
                }

                public class C0054c implements M7.d {

                    public class C0055a extends c.h {
                        public C0055a() {
                        }

                        @Override
                        public void a(c.g dialog) {
                            super.a(dialog);
                            N7.c.D().B0(new C14349a());
                            C5.d dVar = ViewOnLongClickListenerC0045c.this.f2106b;
                            GameObject gameObject = dVar.f2154a;
                            if (gameObject != null) {
                                try {
                                    gameObject.u1(dVar.f2155b);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                    }

                    public C0054c() {
                    }

                    @Override
                    public void onClick(View v10, Context context, M7.c tbButton) {
                        try {
                            if (W7.b.f27309i.f31909a.f31910a != null) {
                                Z6.c.w1(a.this.f2110c, C15147a.e.Left, Lang.l(Lang.T.ATTENTION), Lang.l(Lang.T.DELETE) + " " + ViewOnLongClickListenerC0045c.this.f2106b.f2157d.f2028a + "?", new C0055a());
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }

                public C0046a() {
                    M7.c cVar = new M7.c(R.drawable.move_up, new C0047a(), c.b.Left, a.this.f2109b);
                    Ac.b bVar = c.f2092e;
                    M7.c U10 = cVar.U(bVar);
                    Ac.b bVar2 = c.f2093f;
                    M7.c M10 = U10.M(bVar2);
                    Ac.b bVar3 = Theme.T.HIGH_ICON_TINT;
                    add(M10.d0(bVar3).m0((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_height)));
                    add(new M7.c(R.drawable.move_down, new b(), c.b.Right, a.this.f2109b).U(bVar).M(bVar2).d0(bVar3).m0((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_height)));
                    add(new M7.k(Nc.b.k0(8.0f)));
                    add(new M7.c(R.drawable.bin_nopadding_v2, new C0054c(), c.b.Disconnected, a.this.f2109b).U(bVar).M(bVar2).d0(bVar3).m0((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_height)));
                }
            }

            public class b extends LinkedList<M7.g> {

                public class C0056a implements M7.d {
                    public C0056a() {
                    }

                    @Override
                    public void onClick(View v10, Context context, M7.c tbButton) {
                        try {
                            boolean e10 = ViewOnLongClickListenerC0045c.this.f2106b.f2155b.getEditor().e();
                            for (int i10 = 0; i10 < ViewOnLongClickListenerC0045c.this.f2106b.f2154a.N(); i10++) {
                                ViewOnLongClickListenerC0045c.this.f2106b.f2154a.L(i10).getEditor().i(!e10);
                            }
                            A5.a.y1();
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                }

                public class C0057b implements M7.d {
                    public C0057b() {
                    }

                    @Override
                    public void onClick(View v10, Context context, M7.c tbButton) {
                        N7.c.D().B0(new C14349a());
                    }
                }

                public b() {
                    M7.c cVar = new M7.c(R.drawable.collapse, new C0056a(), c.b.Disconnected, a.this.f2109b);
                    Ac.b bVar = c.f2092e;
                    M7.c U10 = cVar.U(bVar);
                    Ac.b bVar2 = c.f2093f;
                    M7.c M10 = U10.M(bVar2);
                    Ac.b bVar3 = Theme.T.HIGH_ICON_TINT;
                    add(M10.d0(bVar3).m0((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_height)));
                    add(new M7.k(Nc.b.k0(8.0f)));
                    add(new M7.c(R.drawable.bordered_close_x, new C0057b(), c.b.Right, a.this.f2109b).U(bVar).M(bVar2).d0(bVar3).m0((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_width)).Y((int) a.this.f2109b.getResources().getDimension(R.dimen.view3d_button_height)));
                }
            }

            public class C0058c extends SteppedArrayList<C12908b> {

                public class C0059a implements dd.d {
                    public C0059a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        try {
                            C3590b c3590b = W7.b.f27309i.f31909a;
                            if (c3590b.f31910a != null) {
                                c3590b.f31911b = ViewOnLongClickListenerC0045c.this.f2106b.f2155b.mo1248clone();
                                Toast.makeText(ViewOnLongClickListenerC0045c.this.f2107c, "Component copied. Paste on another object.", 0).show();
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        try {
                            if (W7.b.f27309i.f31909a.f31910a != null) {
                                ViewOnLongClickListenerC0045c viewOnLongClickListenerC0045c = ViewOnLongClickListenerC0045c.this;
                                Component component = viewOnLongClickListenerC0045c.f2106b.f2155b;
                                GameObject gameObject = component.f79250n;
                                if (gameObject != null) {
                                    GameObject gameObject2 = gameObject.f79294k;
                                    if (gameObject2 != null) {
                                        gameObject2.r(component.mo1248clone());
                                    } else {
                                        Toast.makeText(viewOnLongClickListenerC0045c.f2107c, "Object is not a child", 0).show();
                                    }
                                }
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }

                public class C0060c implements dd.d {
                    public C0060c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        if (W7.b.f27309i.f31909a.f31910a == null || ViewOnLongClickListenerC0045c.this.f2106b.f2155b.f79250n == null) {
                            return;
                        }
                        GameObject gameObject = new GameObject(ViewOnLongClickListenerC0045c.this.f2106b.f2155b.getTitle(), new Transform());
                        gameObject.r(ViewOnLongClickListenerC0045c.this.f2106b.f2155b.mo1248clone());
                        GameObject gameObject2 = ViewOnLongClickListenerC0045c.this.f2106b.f2155b.f79250n;
                        gameObject2.h(gameObject, gameObject2);
                    }
                }

                public C0058c() {
                    add(new C12908b(Lang.l(Lang.T.COPY), new C0059a()));
                    add(new C12908b(Lang.l(Lang.T.COPY_PARENT), new b()));
                    add(new C12908b(Lang.l(Lang.T.COPY_CHILD), new C0060c()));
                }
            }

            public class d extends SteppedArrayList<C12908b> {

                public class C0061a implements dd.d {
                    public C0061a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        try {
                            C3590b c3590b = W7.b.f27309i.f31909a;
                            if (c3590b.f31910a != null) {
                                c3590b.f31911b = ViewOnLongClickListenerC0045c.this.f2106b.f2155b.mo1248clone();
                                Toast.makeText(ViewOnLongClickListenerC0045c.this.f2107c, "Component selected. Paste on another object.", 0).show();
                                try {
                                    Component component = ViewOnLongClickListenerC0045c.this.f2106b.f2155b;
                                    component.f79250n.u1(component);
                                } catch (Exception e10) {
                                    e10.printStackTrace();
                                }
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                }

                public class b implements dd.d {
                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        try {
                            if (W7.b.f27309i.f31909a.f31910a == null || ViewOnLongClickListenerC0045c.this.f2106b.f2155b.f79250n == null) {
                                return;
                            }
                            GameObject gameObject = new GameObject(ViewOnLongClickListenerC0045c.this.f2106b.f2155b.getTitle(), new Transform());
                            gameObject.r(ViewOnLongClickListenerC0045c.this.f2106b.f2155b.mo1248clone());
                            GameObject gameObject2 = ViewOnLongClickListenerC0045c.this.f2106b.f2155b.f79250n;
                            gameObject2.h(gameObject, gameObject2);
                            try {
                                Component component = ViewOnLongClickListenerC0045c.this.f2106b.f2155b;
                                component.f79250n.u1(component);
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                }

                public class C0062c implements dd.d {
                    public C0062c() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        try {
                            if (W7.b.f27309i.f31909a.f31910a != null) {
                                ViewOnLongClickListenerC0045c viewOnLongClickListenerC0045c = ViewOnLongClickListenerC0045c.this;
                                Component component = viewOnLongClickListenerC0045c.f2106b.f2155b;
                                GameObject gameObject = component.f79250n;
                                if (gameObject != null) {
                                    GameObject gameObject2 = gameObject.f79294k;
                                    if (gameObject2 != null) {
                                        gameObject2.r(component.mo1248clone());
                                        try {
                                            Component component2 = ViewOnLongClickListenerC0045c.this.f2106b.f2155b;
                                            component2.f79250n.u1(component2);
                                        } catch (Exception e10) {
                                            e10.printStackTrace();
                                        }
                                    } else {
                                        Toast.makeText(viewOnLongClickListenerC0045c.f2107c, "Object is not a child", 0).show();
                                    }
                                }
                            }
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                }

                public d() {
                    add(new C12908b(Lang.l(Lang.T.MOVE), new C0061a()));
                    add(new C12908b(Lang.l(Lang.T.MOVE_CHILD), new b()));
                    add(new C12908b(Lang.l(Lang.T.MOVE_PARENT), new C0062c()));
                }
            }

            public class e implements dd.d {
                public e() {
                }

                @Override
                public void onSelected(View v10) {
                    JAVARuntime.Component jAVARuntime;
                    String str;
                    try {
                        Component component = ViewOnLongClickListenerC0045c.this.f2106b.f2155b;
                        if (component != null && (jAVARuntime = component.toJAVARuntime()) != null) {
                            Class<?> cls = jAVARuntime.getClass();
                            ClassCategory classCategory = (ClassCategory) cls.getAnnotation(ClassCategory.class);
                            if (classCategory != null && classCategory.cat() != null && classCategory.cat().length > 0 && (str = classCategory.cat()[0]) != null && !str.isEmpty()) {
                                C2630i.n("https://itsmagic.com.br/documentation/docs/Components/" + str + "/" + cls.getSimpleName());
                                return;
                            }
                        }
                        C2630i.n("https://itsmagic.com.br/documentation/docs/intro");
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }

            public a(final Activity val$activity, final View val$view) {
                this.f2109b = val$activity;
                this.f2110c = val$view;
                add(new C12908b(new C0046a(), new b()));
                add(new C12908b(Lang.l(Lang.T.COPY), new C0058c()));
                add(new C12908b(Lang.l(Lang.T.MOVE), new d()));
                add(new C12908b(Lang.l(Lang.T.APP_DOCUMENTATION), new e()));
            }
        }

        public ViewOnLongClickListenerC0045c(final C5.d val$item, final Context val$context) {
            this.f2106b = val$item;
            this.f2107c = val$context;
        }

        @Override
        public boolean onLongClick(View view) {
            N7.c.Y();
            if (this.f2106b.f2157d == null) {
                return true;
            }
            Activity o10 = N7.c.o();
            D5.g gVar = this.f2106b.f2157d.f2035h;
            if (gVar != null) {
                gVar.a(view, this.f2107c, 0);
                return true;
            }
            a aVar = new a(o10, view);
            aVar.addAll(this.f2106b.f2157d.f2039l);
            Y6.a.F1(view, C15147a.e.Left, aVar);
            return true;
        }
    }

    public class d implements View.OnLongClickListener {

        public final C5.d f2135b;

        public final Context f2136c;

        public d(final C5.d val$item, final Context val$context) {
            this.f2135b = val$item;
            this.f2136c = val$context;
        }

        @Override
        public boolean onLongClick(View view) {
            D5.g gVar;
            N7.c.Y();
            C5.a aVar = this.f2135b.f2157d;
            if (aVar == null || (gVar = aVar.f2035h) == null) {
                return true;
            }
            gVar.a(view, this.f2136c, 0);
            return true;
        }
    }

    public class e implements CustomCheckBox.a {

        public final C5.d f2138a;

        public e(final C5.d val$item) {
            this.f2138a = val$item;
        }

        @Override
        public void a(CustomCheckBox compoundButton, boolean b10) {
            C5.a aVar = this.f2138a.f2157d;
            if (aVar != null) {
                aVar.f2030c = b10;
                D5.h hVar = aVar.f2034g;
                if (hVar != null) {
                    hVar.set(new Variable("", Boolean.valueOf(b10)));
                }
            }
        }
    }

    public class f implements n {
        public f() {
        }

        @Override
        public void refresh(int position) {
            try {
                c.this.notifyItemChanged(position);
            } catch (Exception unused) {
            }
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {

        public final C5.d f2141b;

        public final h f2142c;

        public final int f2143d;

        public g(final C5.d val$item, final h val$holder, final int val$position) {
            this.f2141b = val$item;
            this.f2142c = val$holder;
            this.f2143d = val$position;
        }

        @Override
        public void click(View view) {
            D5.a aVar = this.f2141b.f2159f;
            if (aVar != null) {
                aVar.a(this.f2142c.f2145a, this.f2143d);
            }
        }
    }

    public static class h extends RecyclerView.ViewHolder {

        public Button f2145a;

        public h(View v10) {
            super(v10);
            this.f2145a = (Button) v10.findViewById(R.id.button2);
        }
    }

    public static class i extends RecyclerView.ViewHolder {

        public TextView f2146a;

        public ImageView f2147b;

        public ToggleButton f2148c;

        public LinearLayout f2149d;

        public CustomCheckBox f2150e;

        public View f2151f;

        public LinearLayout f2152g;

        public LinearLayout f2153h;

        public i(View v10) {
            super(v10);
            this.f2147b = (ImageView) v10.findViewById(R.id.icon);
            this.f2146a = (TextView) v10.findViewById(R.id.tittle);
            this.f2148c = (ToggleButton) v10.findViewById(R.id.component_oc);
            this.f2149d = (LinearLayout) v10.findViewById(R.id.component_content);
            this.f2150e = (CustomCheckBox) v10.findViewById(R.id.toggle);
            this.f2151f = v10.findViewById(R.id.toggleLayout);
            this.f2152g = (LinearLayout) v10.findViewById(R.id.topbarBackgroud);
            this.f2153h = (LinearLayout) v10.findViewById(R.id.extras);
        }
    }

    public c(List<C5.d> newItens, Context context, j inspectorInterface) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f2094a = steppedArrayList;
        newItens.getClass();
        context.getClass();
        steppedArrayList.addAll(newItens);
        this.f2095b = context;
        this.f2096c = LayoutInflater.from(context);
        this.f2097d = inspectorInterface;
    }

    public void f(List<C5.d> items) {
        h();
        g(items);
    }

    public void g(List<C5.d> items) {
        int size = items.size();
        int size2 = this.f2094a.size();
        this.f2094a.addAll(items);
        try {
            notifyItemRangeInserted(size2, size);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public int getItemCount() {
        return this.f2094a.size();
    }

    @Override
    public int getItemViewType(int position) {
        if (this.f2094a.get(position).f2156c == d.a.GameObject) {
            return 0;
        }
        if (this.f2094a.get(position).f2156c == d.a.Button) {
            return 1;
        }
        return this.f2094a.get(position).f2156c == d.a.Renderer ? 2 : 3;
    }

    public void h() {
        new SteppedArrayList(this.f2094a);
        int size = this.f2094a.size();
        this.f2094a.clear();
        try {
            notifyItemRangeRemoved(0, size);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public C5.d i(int i10) {
        return this.f2094a.get(i10);
    }

    public C5.d j(int i10) {
        if (this.f2094a.size() <= i10) {
            return null;
        }
        return this.f2094a.get(i10);
    }

    public final void k(i holder, int position, Context context, C5.d item, LayoutInflater inflater) {
        for (int i10 = 0; i10 < item.f2157d.f2042o.size(); i10++) {
            C5.b bVar = item.f2157d.f2042o.get(i10);
            b.a aVar = bVar.f2079n;
            if (aVar == b.a.Vector) {
                C5.h.y(holder.f2149d, inflater, bVar, position, context);
            } else if (aVar == b.a.Component || aVar == b.a.ComponentList) {
                C5.h.w(holder.f2149d, inflater, bVar, position, context, new f());
            } else {
                C5.h.x(holder.f2149d, inflater, bVar, position, true, context);
            }
        }
    }

    public void l(int c10) {
        if (c10 < 0 || this.f2094a.size() <= c10) {
            return;
        }
        notifyItemChanged(c10);
    }

    public void m(C5.d element) {
        int indexOf = this.f2094a.indexOf(element);
        if (indexOf >= 0) {
            notifyItemChanged(indexOf);
        }
    }

    public void n(int index, C5.d newElement) {
        C5.d j10 = j(index);
        if (j10 != null) {
            o(j10, newElement);
        }
    }

    public void o(C5.d element, C5.d newElement) {
        int indexOf = this.f2094a.indexOf(element);
        if (indexOf >= 0) {
            this.f2094a.set(indexOf, newElement);
            try {
                notifyItemChanged(indexOf);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        int itemViewType = holder.getItemViewType();
        if (itemViewType == 1) {
            p((h) holder, position);
        } else {
            if (itemViewType == 2) {
                throw new RuntimeException();
            }
            if (itemViewType != 3) {
                return;
            }
            q((i) holder, position, this.f2095b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        RecyclerView.ViewHolder hVar;
        RecyclerView.ViewHolder viewHolder = null;
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (viewType != 1) {
            if (viewType == 3) {
                hVar = new i(LayoutInflater.from(this.f2095b).inflate(R.layout.inspector_component, parent, false));
            }
            if (viewHolder != null) {
                com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.a.b(viewHolder.itemView, this.f2095b);
            }
            viewHolder.getClass();
            return viewHolder;
        }
        hVar = new h(LayoutInflater.from(this.f2095b).inflate(R.layout.inspector_button, parent, false));
        viewHolder = hVar;
        if (viewHolder != null) {
        }
        viewHolder.getClass();
        return viewHolder;
    }

    public final void p(final h holder, final int position) {
        C5.d dVar = this.f2094a.get(position);
        Button button = holder.f2145a;
        if (button != null) {
            button.setText(dVar.f2158e);
            holder.f2145a.setOnClickListener(new g(dVar, holder, position));
        }
    }

    public final void q(i holder, int position, Context context) {
        boolean z10;
        C5.d dVar = this.f2094a.get(position);
        if (dVar == null || dVar.f2160g) {
            return;
        }
        LinearLayout linearLayout = holder.f2152g;
        if (linearLayout != null) {
            int i10 = dVar.f2157d.f2043p;
            if (i10 != 0) {
                try {
                    linearLayout.setBackgroundResource(i10);
                } catch (Resources.NotFoundException unused) {
                    holder.f2152g.setBackgroundColor(dVar.f2157d.f2043p);
                }
            } else {
                linearLayout.setBackgroundColor(Theme.i(Theme.T.PANEL_TOPBAR));
            }
            if (dVar.f2157d.f2033f) {
                holder.f2152g.setVisibility(8);
            } else {
                holder.f2152g.setVisibility(0);
            }
        }
        ToggleButton toggleButton = holder.f2148c;
        if (toggleButton != null) {
            toggleButton.setOnCheckedChangeListener(null);
            holder.f2148c.setChecked(dVar.f2157d.b().e());
            z10 = dVar.f2157d.b().e();
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) holder.f2149d.getLayoutParams();
            if (dVar.f2157d.b().e()) {
                layoutParams.height = -2;
            } else {
                layoutParams.height = 0;
            }
            holder.f2149d.setLayoutParams(layoutParams);
            if (dVar.f2157d.f2032e) {
                holder.f2148c.setVisibility(0);
                holder.f2148c.setOnCheckedChangeListener(new a(dVar, holder, position));
            } else {
                holder.f2148c.setVisibility(8);
                holder.f2148c.setOnCheckedChangeListener(null);
            }
            if (dVar.f2157d.f2032e) {
                holder.f2146a.setOnClickListener(new b(dVar, holder, position));
            }
            if (dVar.f2155b != null) {
                holder.f2146a.setOnLongClickListener(new ViewOnLongClickListenerC0045c(dVar, context));
            } else {
                holder.f2146a.setOnLongClickListener(new d(dVar, context));
            }
        } else {
            z10 = true;
        }
        CustomCheckBox customCheckBox = holder.f2150e;
        if (customCheckBox != null) {
            customCheckBox.setOnCheckedChangeListener(null);
            if (dVar.f2157d.f2031d) {
                holder.f2151f.setVisibility(0);
                holder.f2150e.setChecked(dVar.f2157d.f2030c);
                holder.f2150e.setOnCheckedChangeListener(new e(dVar));
            } else {
                holder.f2151f.setVisibility(8);
                holder.f2150e.setOnCheckedChangeListener(null);
            }
        }
        C5.a aVar = dVar.f2157d;
        if (aVar != null) {
            Vc.e.V(holder.f2147b, aVar.f2037j, context);
            if (dVar.f2157d.f2038k) {
                Vc.e.x(holder.f2147b, context, Theme.i(Theme.T.HIGH_ICON_TINT));
            } else {
                holder.f2147b.setColorFilter((ColorFilter) null);
            }
        } else {
            Vc.e.V(holder.f2147b, R.drawable.unknow_component_icon_2, context);
        }
        C5.a aVar2 = dVar.f2157d;
        if (aVar2 != null) {
            C5.h.C(holder.f2153h, context, aVar2.f2040m);
        }
        C5.a aVar3 = dVar.f2157d;
        if (aVar3.f2046s) {
            holder.f2146a.setText(aVar3.f2028a, TextView.BufferType.SPANNABLE);
            ((Spannable) holder.f2146a.getText()).setSpan(new StrikethroughSpan(), 0, dVar.f2157d.f2028a.length(), 33);
        } else {
            holder.f2146a.setText(aVar3.f2028a);
        }
        LinearLayout linearLayout2 = holder.f2149d;
        if (linearLayout2 != null) {
            linearLayout2.removeAllViews();
            if (!z10) {
                dVar.f2157d.f2045r = false;
            } else {
                dVar.f2157d.f2045r = true;
                k(holder, position, context, dVar, this.f2096c);
            }
        }
    }
}
