package I4;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Core.Components.GIAP.GIAP;
import com.itsmagic.engine.Core.Components.GIAP.b;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine2.R;
import e7.C13042a;
import r4.C15147a;

public class c extends EditorPanel {

    public static final String f8803c0 = "ChangePlan";

    public I4.d f8804X;

    public final String f8805Y;

    public final String f8806Z;

    public RecyclerView f8807a0;

    public C13042a<I4.a, I4.b> f8808b0;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            c.this.R0();
        }
    }

    public class C0221c implements C13042a.InterfaceC1584a<I4.a, I4.b> {
        public C0221c() {
        }

        @Override
        public void a(I4.b holder, I4.a displayElement, int position) {
            holder.f8796b.setText(displayElement.e());
            holder.f8798d.setText(displayElement.d());
            holder.f8799e.setText(displayElement.f());
            holder.f8800f.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
            holder.f8797c.setText(displayElement.b());
            if (displayElement.h()) {
                holder.f8801g.setVisibility(4);
            } else {
                holder.f8801g.setVisibility(0);
            }
            holder.itemView.setOnClickListener(displayElement.a());
        }

        @Override
        public I4.b b(LayoutInflater inflater, ViewGroup parent) {
            return new I4.b(inflater.inflate(R.layout.cloud_sync_change_plan_panel_item, parent, false));
        }
    }

    public class d implements com.itsmagic.engine.Core.Components.GIAP.a {

        public class a implements e {

            public class C0222a extends AbstractViewOnClickListenerC12733a {

                public final com.itsmagic.engine.Core.Components.GIAP.b f8814b;

                public final b.a f8815c;

                public C0222a(final com.itsmagic.engine.Core.Components.GIAP.b val$product, final b.a val$subPlan) {
                    this.f8814b = val$product;
                    this.f8815c = val$subPlan;
                }

                @Override
                public void click(View view) {
                    UserController userController = W7.b.f27306f.f2461d;
                    if (userController == null || !userController.Q()) {
                        C12735c.a("BUY[" + this.f8814b.d() + "]STARTED_WITHOUT_USER");
                        GIAP.q(N7.c.o(), this.f8814b, this.f8815c);
                    } else {
                        C12735c.a("BUY[" + this.f8814b.d() + "]STARTED");
                        GIAP.q(N7.c.o(), this.f8814b, this.f8815c);
                    }
                    c.this.f8804X.R0();
                    c.this.R0();
                }
            }

            public a() {
            }

            @Override
            public void a(String title, b.C1167b phase, com.itsmagic.engine.Core.Components.GIAP.b product, b.a subPlan) {
                c.this.f8808b0.g(new I4.a().m(Lang.l(Lang.T.SUB_MONTH)).j(Lang.l(Lang.T.SUB_MONTH_INFO_TEXT_CS)).l(Tc.b.p(phase.e(), 2)).n(phase.d()).g().i(new C0222a(product, subPlan)));
            }
        }

        public class b implements e {

            public class a extends AbstractViewOnClickListenerC12733a {

                public final com.itsmagic.engine.Core.Components.GIAP.b f8818b;

                public final b.a f8819c;

                public a(final com.itsmagic.engine.Core.Components.GIAP.b val$product, final b.a val$subPlan) {
                    this.f8818b = val$product;
                    this.f8819c = val$subPlan;
                }

                @Override
                public void click(View view) {
                    UserController userController = W7.b.f27306f.f2461d;
                    if (userController == null || !userController.Q()) {
                        C12735c.a("BUY[" + this.f8818b.d() + "]STARTED_WITHOUT_USER");
                        GIAP.q(N7.c.o(), this.f8818b, this.f8819c);
                    } else {
                        C12735c.a("BUY[" + this.f8818b.d() + "]STARTED");
                        GIAP.q(N7.c.o(), this.f8818b, this.f8819c);
                    }
                    c.this.f8804X.R0();
                    c.this.R0();
                }
            }

            public b() {
            }

            @Override
            public void a(String title, b.C1167b phase, com.itsmagic.engine.Core.Components.GIAP.b product, b.a subPlan) {
                c.this.f8808b0.g(new I4.a().m(Lang.l(Lang.T.SUB_YEAR)).j(Lang.l(Lang.T.SUB_YEAR_INFO_TEXT_CS)).l(Tc.b.p(phase.e(), 2)).n(phase.d()).i(new a(product, subPlan)));
            }
        }

        public d() {
        }

        @Override
        public void a() {
            c.this.s1("P1M", new a());
            c.this.s1("P1Y", new b());
        }
    }

    public interface e {
        void a(String title, b.C1167b phase, com.itsmagic.engine.Core.Components.GIAP.b product, b.a subPlan);
    }

    public c(I4.d cloudSyncPlans, String title, String productID) {
        super(null, "Cloud sync");
        this.f8804X = cloudSyncPlans;
        this.f8805Y = title;
        this.f8806Z = productID;
        super.e1(false);
    }

    public static FloatingPanelArea t1(I4.d cloudSyncPlans, String title, String productID, View anchor, C15147a.e side) {
        FloatingPanelArea m10 = C15147a.m(new c(cloudSyncPlans, title, productID), N7.c.g(392), N7.c.f(230));
        m10.T();
        m10.N1(false);
        m10.F1(true);
        m10.E1(true);
        return m10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.cloud_sync_change_plan_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.close).setOnClickListener(new b());
        ((TextView) inflate.findViewById(R.id.title)).setText(this.f8805Y);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f8807a0 = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f8807a0.setItemAnimator(null);
        C13042a<I4.a, I4.b> c13042a = new C13042a<>(M(), new C0221c());
        this.f8808b0 = c13042a;
        this.f8807a0.setAdapter(c13042a);
        GIAP.d(M(), new d());
        return inflate;
    }

    public final void s1(String period, e listener) {
        com.itsmagic.engine.Core.Components.GIAP.d a10;
        for (com.itsmagic.engine.Core.Components.GIAP.b bVar : GIAP.i()) {
            if (bVar != null && (a10 = com.itsmagic.engine.Core.Components.GIAP.c.a(bVar.d())) != null && a10.d().equals("CLOUD_SYNC") && a10.a().equals(this.f8806Z)) {
                for (b.a aVar : bVar.f()) {
                    if (!aVar.c().isEmpty()) {
                        b.C1167b c1167b = aVar.c().get(0);
                        if (c1167b.b().equalsIgnoreCase(period)) {
                            listener.a(bVar.g(), c1167b, bVar, aVar);
                            return;
                        }
                    }
                }
            }
        }
    }
}
