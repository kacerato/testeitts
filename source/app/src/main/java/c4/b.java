package C4;

import C4.a;
import Z6.i;
import android.content.Context;
import android.icu.text.PluralRules;
import android.provider.Telephony;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import ed.C13056c;
import ed.f;
import hd.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import o7.C14486a;
import org.json.JSONArray;
import org.json.JSONObject;
import p5.C14929a;
import r4.C15147a;

@Deprecated
public class b extends EditorPanel {

    public static final String f2010e0 = "Builds";

    public RecyclerView f2011X;

    public C14486a f2012Y;

    public C4.a f2013Z;

    public View f2014a0;

    public int f2015b0;

    public int f2016c0;

    public int f2017d0;

    public class a implements a.e {
        public a() {
        }

        @Override
        public void a(int index) {
            b.this.f2013Z.o(index);
        }
    }

    public class C0042b extends AbstractViewOnClickListenerC12733a {

        public class a extends SteppedArrayList<C12908b> {

            public class C0043a implements dd.d {
                public C0043a() {
                }

                @Override
                public void onSelected(View v10) {
                    C14929a.v1();
                }
            }

            public class C0044b implements dd.d {
                public C0044b() {
                }

                @Override
                public void onSelected(View v10) {
                    p5.b.A1(false);
                }
            }

            public class c implements dd.d {
                public c() {
                }

                @Override
                public void onSelected(View v10) {
                    p5.b.A1(true);
                }
            }

            public a() {
                add(new C12908b(Lang.l(Lang.T.BUILDS_PANEL_EXPORT_WIZARD), new C0043a()));
                add(new C12908b(Lang.l(Lang.T.BUILDS_PANEL_ADVANCED_EXPORTATION) + " - VIP", new C0044b()));
                add(new C12908b(Lang.l(Lang.T.BUILDS_PANEL_EXPORT_TO_PLAYSTORE) + " - VIP", new c()));
            }
        }

        public C0042b() {
        }

        @Override
        public void click(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class c implements hd.d {

        public final Context f2024a;

        public final boolean f2025b;

        public c(final Context val$context, final boolean val$forceRefresh) {
            this.f2024a = val$context;
            this.f2025b = val$forceRefresh;
        }

        @Override
        public void a(String result) {
            if (f.a(result, b.this.M(), null) != 1) {
                if (hd.c.g(hd.c.h(result), Telephony.TextBasedSmsColumns.ERROR_CODE).equals("0x0005")) {
                    i.y1("Ops!", "Invalid credentials");
                } else {
                    i.y1("Sorry", "Our server returned unknown error");
                }
            }
        }

        @Override
        public void b(String result) {
            List<D4.b> s12 = b.this.s1(hd.c.d(hd.c.h(result), "builds"), this.f2024a);
            if (this.f2025b) {
                b.this.f2013Z.j();
                b.this.y1(s12);
                return;
            }
            if (b.this.f2013Z.getItemCount() != s12.size()) {
                b.this.f2013Z.j();
                b.this.y1(s12);
                return;
            }
            for (D4.b bVar : s12) {
                int i10 = 0;
                while (true) {
                    if (i10 >= b.this.f2013Z.getItemCount()) {
                        b.this.f2013Z.h(bVar);
                        break;
                    }
                    D4.c k10 = b.this.f2013Z.k(i10);
                    if (k10 instanceof D4.b) {
                        D4.b bVar2 = (D4.b) k10;
                        if (bVar2.f4821a.equals(bVar.f4821a)) {
                            if (!bVar2.f4827g.equals(bVar.f4827g)) {
                                b.this.f2013Z.n(i10, bVar);
                            }
                        }
                    }
                    i10++;
                }
            }
        }
    }

    public class d extends HashMap<String, String> {
        public d() {
            put("projectName", com.itsmagic.engine.Core.Components.ProjectController.a.T());
        }
    }

    public b() {
        super(null, "builds");
        this.f2015b0 = 0;
        this.f2017d0 = Nc.d.j(0, 3);
        super.e1(false);
    }

    private void v1() {
        t1(true);
    }

    public static FloatingPanelArea w1() {
        N7.c.v0("Cloud build was disabled!");
        return null;
    }

    public static FloatingPanelArea x1(View anchor, C15147a.e side) {
        N7.c.v0("Cloud build was disabled!");
        return null;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.builds_panel, (ViewGroup) null);
        this.f2014a0 = inflate;
        this.f2011X = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        this.f2013Z = new C4.a(M(), new a());
        Button button = (Button) this.f2014a0.findViewById(R.id.new_build);
        button.setText(Lang.l(Lang.T.BUILDS_CREATE_BUILD));
        button.setOnClickListener(new C0042b());
        ((TextView) this.f2014a0.findViewById(R.id.desc)).setText(Lang.l(Lang.T.BUILDS_DESCRIPTION));
        this.f2011X.setAdapter(this.f2013Z);
        this.f2012Y = new C14486a(M(), this.f2011X, this.f2013Z, 300);
        this.f2011X.setItemAnimator(null);
        t1(true);
        return this.f2014a0;
    }

    @Override
    public EditorPanel k() {
        return super.k();
    }

    @Override
    public void o1() {
        super.o1();
        int i10 = this.f2015b0 + 1;
        this.f2015b0 = i10;
        if (i10 >= 10) {
            t1(false);
            this.f2015b0 = 0;
        }
    }

    public final List<D4.b> s1(JSONArray list, Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (list != null) {
            for (int i10 = 0; i10 < list.length(); i10++) {
                JSONObject e10 = hd.c.e(list, i10);
                if (!hd.c.g(e10, "error").equals(PluralRules.KEYWORD_ZERO)) {
                    steppedArrayList.add(new D4.b(hd.c.g(e10, "id"), hd.c.g(e10, "compiller_version"), hd.c.g(e10, "apktoken"), hd.c.g(e10, "appname"), hd.c.g(e10, "versioncode"), hd.c.g(e10, "versioname"), hd.c.g(e10, "status"), hd.c.g(e10, "requested_at"), hd.c.g(e10, "compilled_at"), hd.c.g(e10, "position")));
                }
            }
        }
        return steppedArrayList;
    }

    public final void t1(boolean forceRefresh) {
        UserController userController = W7.b.f27306f.f2461d;
        if (userController == null || !userController.Q()) {
            this.f2013Z.j();
        } else {
            u1(M(), forceRefresh);
        }
    }

    public final void u1(Context context, boolean forceRefresh) {
        C13056c c13056c = new C13056c(new c(context, forceRefresh));
        d dVar = new d();
        dVar.putAll(W7.b.f27306f.f2461d.G(context));
        c13056c.d(new e(H8.a.a(H8.a.f8301d, "getBuildList.php"), dVar, context));
    }

    public final void y1(List<D4.b> builds) {
        if (this.f2013Z == null) {
            throw new RuntimeException("Not initialized yet!");
        }
        View findViewById = this.f2014a0.findViewById(R.id.no_builds);
        if (builds.size() < 0) {
            findViewById.setVisibility(0);
            return;
        }
        findViewById.setVisibility(8);
        Iterator<D4.b> it = builds.iterator();
        while (it.hasNext()) {
            this.f2013Z.h(it.next());
        }
    }
}
