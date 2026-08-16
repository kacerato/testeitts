package I4;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import e7.C13042a;
import r4.C15147a;

public class d extends EditorPanel {

    public static final String f8821Z = "CloudSyncPlans";

    public RecyclerView f8822X;

    public C13042a<e, f> f8823Y;

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
            d.this.R0();
        }
    }

    public class c implements C13042a.InterfaceC1584a<e, f> {

        public class a extends AbstractViewOnClickListenerC12733a {

            public final e f8827b;

            public a(final e val$displayElement) {
                this.f8827b = val$displayElement;
            }

            @Override
            public void click(View view) {
                I4.c.t1(d.this, this.f8827b.e() + " - " + this.f8827b.d() + this.f8827b.f(), this.f8827b.c(), view, C15147a.e.Right);
            }
        }

        public c() {
        }

        @Override
        public void a(f holder, e displayElement, int position) {
            holder.f8835b.setText(displayElement.e());
            holder.f8837d.setText(displayElement.d());
            holder.f8838e.setText(displayElement.f());
            holder.f8839f.setImageResource(displayElement.b());
            if (d.this.q1().equals(displayElement.c())) {
                holder.f8840g.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.PANEL_TOPBAR)));
                holder.f8841h.setVisibility(8);
                holder.f8836c.setText("Current plan");
                holder.itemView.setOnClickListener(null);
                return;
            }
            holder.f8840g.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.CARD)));
            if (displayElement.g()) {
                holder.f8836c.setText("Change plan");
                holder.f8841h.setVisibility(0);
                holder.itemView.setOnClickListener(new a(displayElement));
            } else {
                holder.f8836c.setText("");
                holder.f8841h.setVisibility(8);
                holder.itemView.setOnClickListener(null);
            }
        }

        @Override
        public f b(LayoutInflater inflater, ViewGroup parent) {
            return new f(inflater.inflate(R.layout.cloud_sync_plans_panel_item, parent, false));
        }
    }

    public d() {
        super(null, "Cloud sync");
        super.e1(false);
    }

    public static FloatingPanelArea r1(View anchor, C15147a.e side) {
        FloatingPanelArea g10 = C15147a.g(anchor, new d(), side, N7.c.g(300), N7.c.f(T6.a.f24083g0));
        g10.T();
        g10.N1(false);
        return g10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.cloud_sync_plans_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        inflate.findViewById(R.id.close).setOnClickListener(new b());
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f8822X = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f8822X.setItemAnimator(null);
        C13042a<e, f> c13042a = new C13042a<>(M(), new c());
        this.f8823Y = c13042a;
        this.f8822X.setAdapter(c13042a);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new e().k("Free").j("250").l("MB").i("free").h(R.drawable.free).a());
        steppedArrayList.add(new e().k("VIP").j("1").l("GB").i("vip").h(R.drawable.vip_tag).a());
        steppedArrayList.add(new e().k("Enthusiast").j("10").l("GB").i("itsmagic.subscription.cloudsync.a").h(R.drawable.enthusiastic));
        steppedArrayList.add(new e().k("Advanced").j("30").l("GB").i("itsmagic.subscription.cloudsync.b").h(R.drawable.advancement));
        steppedArrayList.add(new e().k("Enterprise").j(Dd.c.f5131w).l("GB").i("itsmagic.subscription.cloudsync.c").h(R.drawable.enterprise));
        this.f8823Y.t(steppedArrayList);
        return inflate;
    }

    public final String q1() {
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        if (userController != null && userController.Q()) {
            String y10 = aVar.f2461d.y();
            if (y10 != null && !y10.trim().isEmpty()) {
                return y10;
            }
            if (aVar.f2461d.T()) {
                return "vip";
            }
        }
        return "free";
    }
}
