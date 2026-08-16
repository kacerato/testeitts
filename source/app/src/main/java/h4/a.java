package H4;

import Ic.C2633l;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import e7.C13042a;
import java.util.Comparator;
import r4.C15147a;
import ve.j;
import w5.k;

@Deprecated
public class a extends EditorPanel {

    public static final String f8093e0 = "CloudSyncProjectPanel";

    public RecyclerView f8094X;

    public C13042a<H4.b, H4.c> f8095Y;

    public float f8096Z;

    public com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a f8097a0;

    public TextView f8098b0;

    public View f8099c0;

    public View f8100d0;

    public class C0166a implements Comparator<H4.b> {
        public C0166a() {
        }

        @Override
        public int compare(H4.b o12, H4.b o22) {
            return Integer.compare(o12.g(), o22.g());
        }
    }

    public class b implements View.OnTouchListener {
        public b() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View view) {
            if (a.this.f8097a0 == null) {
                a.this.f8097a0 = com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.A();
            }
            if (a.this.f8097a0 == null) {
                return;
            }
            a.this.f8097a0.y().enableCloudSync = true;
            a.this.f8097a0.J();
            a.this.s1();
        }
    }

    public class d implements C13042a.InterfaceC1584a<H4.b, H4.c> {

        public class C0167a extends AbstractViewOnClickListenerC12733a {

            public final H4.b f8105b;

            public class C0168a implements dd.d {
                public C0168a() {
                }

                @Override
                public void onSelected(View v10) {
                    N7.c.D().B0(new k(C0167a.this.f8105b.c()));
                }
            }

            public C0167a(final H4.b val$displayElement) {
                this.f8105b = val$displayElement;
            }

            @Override
            public void click(View view) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                steppedArrayList.add(new C12908b("Open", new C0168a()));
                Y6.a.F1(view, C15147a.e.Below, steppedArrayList);
            }
        }

        public d() {
        }

        @Override
        public void a(H4.c holder, H4.b displayElement, int position) {
            holder.f8120b.setText(displayElement.e());
            int g10 = displayElement.g();
            if (g10 == 0) {
                holder.f8121c.setText("Uploading ...");
                holder.f8121c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
            } else if (g10 == 1) {
                holder.f8121c.setText("Downloading " + displayElement.f() + j.f121589a);
                holder.f8121c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.PRIMARY_DARK)));
            } else if (g10 == 2) {
                TextView textView = holder.f8121c;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Waiting to ");
                sb2.append(displayElement.d() == E3.c.Upload ? "upload." : "download.");
                textView.setText(sb2.toString());
                holder.f8121c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.MID_TEXT_COLOR)));
            } else if (g10 == 3) {
                holder.f8121c.setText("");
                holder.f8121c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.MID_TEXT_COLOR)));
            } else if (g10 == 4) {
                holder.f8121c.setText("Success");
                holder.f8121c.setTextColor(ColorStateList.valueOf(Theme.i(Theme.T.ACCENT_GREEN_DARK)));
            } else if (g10 == 5) {
                holder.f8121c.setText(displayElement.a());
                holder.f8121c.setTextColor(AppCompatResources.getColorStateList(a.this.M(), R.color.colorAccent));
            }
            C2633l.h(holder.f8122d, displayElement.b(), a.this.M(), true);
            holder.f8123e.setOnClickListener(new C0167a(displayElement));
        }

        @Override
        public H4.c b(LayoutInflater inflater, ViewGroup parent) {
            return new H4.c(inflater.inflate(R.layout.compiling_panel_item, parent, false));
        }
    }

    public class e implements View.OnClickListener {

        public class C0169a extends SteppedArrayList<C12908b> {

            public class C0170a implements dd.d {
                public C0170a() {
                }

                @Override
                public void onSelected(View v10) {
                    if (a.this.f8097a0 == null) {
                        a.this.f8097a0 = com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.A();
                    }
                    if (a.this.f8097a0 == null) {
                        return;
                    }
                    a.this.f8097a0.y().enableCloudSync = false;
                    a.this.f8097a0.J();
                    a.this.s1();
                }
            }

            public C0169a() {
                add(new C12908b("Disable cloud sync", new C0170a()));
            }
        }

        public e() {
        }

        @Override
        public void onClick(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new C0169a());
        }
    }

    public class f implements Comparator<H4.b> {
        public f() {
        }

        @Override
        public int compare(H4.b o12, H4.b o22) {
            return Integer.compare(o12.g(), o22.g());
        }
    }

    public a(com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a cloudSync) {
        super(null, "Cloud sync");
        this.f8096Z = 0.0f;
        super.e1(false);
        this.f8097a0 = cloudSync;
    }

    public void s1() {
        if (this.f8097a0 == null) {
            this.f8097a0 = com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a.A();
        }
        com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a aVar = this.f8097a0;
        if (aVar == null) {
            return;
        }
        if (!aVar.y().enableCloudSync) {
            this.f8099c0.setVisibility(0);
            this.f8100d0.setVisibility(8);
            return;
        }
        this.f8099c0.setVisibility(8);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f8095Y.getItemCount(); i10++) {
            H4.b m10 = this.f8095Y.m(i10);
            if (!this.f8097a0.C(m10.f8118a)) {
                steppedArrayList.add(m10);
            }
        }
        if (this.f8095Y.getItemCount() >= 30) {
            for (int i11 = 0; i11 < this.f8095Y.getItemCount(); i11++) {
                H4.b m11 = this.f8095Y.m(i11);
                if (m11.g() == 4 || m11.g() == 5) {
                    steppedArrayList.add(m11);
                    break;
                }
            }
        }
        this.f8095Y.s(steppedArrayList);
        if (this.f8095Y.getItemCount() < 30) {
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            for (int i12 = 0; i12 < this.f8097a0.n(); i12++) {
                E3.a m12 = this.f8097a0.m(i12);
                boolean z10 = false;
                for (int i13 = 0; i13 < this.f8095Y.getItemCount(); i13++) {
                    if (this.f8095Y.m(i13).f8118a == m12) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    steppedArrayList2.add(new H4.b(m12));
                }
            }
            this.f8095Y.i(steppedArrayList2);
        }
        this.f8095Y.o(new f());
        int z11 = this.f8097a0.z() - this.f8097a0.n();
        int z12 = this.f8097a0.z();
        if (z12 <= 0) {
            this.f8098b0.setText("Cloud sync");
            this.f8100d0.setVisibility(0);
            return;
        }
        this.f8098b0.setText(z11 + " / " + z12);
        this.f8100d0.setVisibility(8);
    }

    public static FloatingPanelArea t1(View anchor, C15147a.e side) {
        return u1(null, anchor, side);
    }

    public static FloatingPanelArea u1(com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.a cloudSync, View anchor, C15147a.e side) {
        N7.c.v0("Cloud sync was disabled!");
        return null;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.cloud_sync_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f8098b0 = (TextView) inflate.findViewById(R.id.tittle);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f8094X = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(M()));
        this.f8094X.setItemAnimator(null);
        this.f8099c0 = inflate.findViewById(R.id.offLayout);
        this.f8100d0 = inflate.findViewById(R.id.blankSlate);
        this.f8099c0.findViewById(R.id.activateButton).setOnClickListener(new c());
        C13042a<H4.b, H4.c> c13042a = new C13042a<>(M(), new d());
        this.f8095Y = c13042a;
        this.f8094X.setAdapter(c13042a);
        inflate.findViewById(R.id.menu).setOnClickListener(new e());
        s1();
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new a(this.f8097a0);
    }

    @Override
    public void n1() {
        super.n1();
        float d10 = this.f8096Z + K8.d.d();
        this.f8096Z = d10;
        if (d10 >= 0.5f) {
            this.f8095Y.o(new C0166a());
            this.f8096Z = 0.0f;
        }
    }

    @Override
    public void o1() {
        super.o1();
        s1();
    }
}
