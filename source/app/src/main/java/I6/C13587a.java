package i6;

import Ic.C2630i;
import M7.c;
import M7.k;
import M7.o;
import M7.p;
import M7.r;
import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import i6.C13587a;
import j6.InterfaceC13809a;
import java.util.LinkedList;
import java.util.List;
import k6.C13945a;
import l6.C14053a;
import l6.C14054b;
import l6.C14055c;
import o7.C14486a;
import r4.C15147a;

public class C13587a extends EditorPanel {

    public static final String f91539m0 = "PrefabSpawnerPanel";

    public static final long f91540n0 = 1000;

    public static final int f91541o0 = 2;

    public final List<j6.d> f91542X;

    public j6.d f91543Y;

    public int f91544Z;

    public final List<j6.b> f91545a0;

    public C13945a f91546b0;

    public RecyclerView f91547c0;

    public C14486a f91548d0;

    public EditText f91549e0;

    public LinearLayout f91550f0;

    public C14055c f91551g0;

    public boolean f91552h0;

    public Handler f91553i0;

    public Runnable f91554j0;

    public boolean f91555k0;

    public final InterfaceC13809a f91556l0;

    public class C1770a implements InterfaceC13809a {
        public C1770a() {
        }

        @Override
        public EditorPanel a() {
            return C13587a.this;
        }

        @Override
        public int b() {
            return C13587a.this.E1();
        }

        @Override
        public void c(List<j6.b> elementList) {
            C13587a.this.B1(elementList);
        }

        @Override
        public void d() {
            C13587a.this.C1();
        }

        @Override
        public View e() {
            return C13587a.this.f91549e0;
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

    public class c implements C13945a.e {
        public c() {
        }

        @Override
        public void b() {
            C13587a.this.R0();
        }
    }

    public class d extends RecyclerView.OnScrollListener {
        public d() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int itemCount = C13587a.this.f91546b0.getItemCount();
            boolean z10 = C13587a.this.f91548d0.a() + (Nc.b.N(1, C13587a.this.f91548d0.b()) * 2) >= itemCount;
            if (itemCount <= 0 || !z10) {
                C13587a.this.f91555k0 = false;
            } else {
                if (C13587a.this.f91555k0) {
                    return;
                }
                C13587a.this.f91555k0 = true;
                C13587a.this.D1();
            }
        }
    }

    public class e implements TextView.OnEditorActionListener {
        public e() {
        }

        @Override
        public boolean onEditorAction(TextView v10, int actionId, KeyEvent event) {
            if (actionId != 3 && actionId != 6) {
                if (event == null) {
                    return false;
                }
                try {
                    if (event.getAction() != 0 || event.getKeyCode() != 66) {
                        return false;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return false;
                }
            }
            Editable text = C13587a.this.f91549e0.getText();
            if (text == null) {
                C13587a.this.f91549e0.setText("");
                return true;
            }
            C13587a.this.L1(text.toString());
            C2630i.b();
            return true;
        }
    }

    public class f implements TextWatcher {
        public f() {
        }

        @Override
        public void afterTextChanged(final Editable s10) {
            C13587a.this.f91553i0.removeCallbacks(C13587a.this.f91554j0);
            C13587a.this.f91554j0 = new Runnable() {
                @Override
                public final void run() {
                    C13587a.f.this.b(s10);
                }
            };
            C13587a.this.f91553i0.postDelayed(C13587a.this.f91554j0, 1000L);
        }

        public final void b(Editable editable) {
            C13587a.this.L1(editable.toString());
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            C13587a.this.f91553i0.removeCallbacks(C13587a.this.f91554j0);
        }
    }

    public class g implements r {

        public final j6.d f91563a;

        public g(final j6.d val$tab) {
            this.f91563a = val$tab;
        }

        @Override
        public void b(boolean value, View v10, Context context, o tbToggle, boolean isFromUserAction) {
            if (value) {
                C13587a.this.K1(this.f91563a);
            }
        }
    }

    public C13587a() {
        super(null, "Object spawner");
        this.f91542X = new SteppedArrayList();
        this.f91545a0 = new SteppedArrayList();
        this.f91553i0 = new Handler();
        this.f91556l0 = new C1770a();
        super.e1(false);
    }

    public void D1() {
        j6.d dVar = this.f91543Y;
        if (dVar != null) {
            dVar.b();
        } else {
            this.f91555k0 = false;
        }
    }

    public int E1() {
        return Nc.b.N(0, this.f91545a0.size() - 1);
    }

    public static k F1(Context context, LinearLayout parent, LayoutInflater layoutInflater) {
        k kVar = new k(Nc.b.l0(2.0f, context));
        kVar.a(parent, context, layoutInflater);
        return kVar;
    }

    private k G1(LinearLayout parent) {
        return F1(M(), parent, this.f70908j);
    }

    private void H1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), this.f70908j);
        element.n(G1(topbar).e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void I1() {
        LinkedList linkedList = new LinkedList();
        p pVar = new p(M());
        linkedList.add(pVar);
        j6.d dVar = null;
        for (j6.d dVar2 : this.f91542X) {
            if (this.f91549e0.getText() == null || this.f91549e0.getText().toString().trim().isEmpty()) {
                if (!(dVar2 instanceof C14055c)) {
                    if (dVar2 instanceof j6.c) {
                        if (dVar == null) {
                            dVar = dVar2;
                        }
                        o oVar = new o(dVar2.c(), new g(dVar2), c.b.Disconnected, M());
                        oVar.N0(Theme.T.PANEL_TOPBAR).B0(Theme.T.PRIMARY_DARK).m0(Nc.b.k0(30.0f)).Y(Nc.b.k0(30.0f));
                        oVar.W(true);
                        oVar.f14699g = dVar2;
                        pVar.s(oVar);
                    } else {
                        pVar.s(new k(Nc.b.k0(4.0f)));
                    }
                }
            } else if (dVar2 instanceof C14055c) {
                if (dVar2 instanceof j6.c) {
                }
            }
        }
        if (this.f91549e0.getText() == null || this.f91549e0.getText().toString().trim().isEmpty()) {
            this.f91552h0 = true;
        } else {
            this.f91552h0 = false;
        }
        this.f91550f0.removeAllViews();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            H1(this.f91550f0, (M7.g) linkedList.get(i10));
        }
        K1(dVar);
    }

    public void L1(String text) {
        if (text == null || text.trim().isEmpty()) {
            if (this.f91552h0) {
                return;
            }
            I1();
        } else {
            if (this.f91552h0) {
                I1();
            }
            this.f91551g0.A(text);
        }
    }

    public static FloatingPanelArea M1(View anchor, C15147a.e side) {
        return C15147a.g(anchor, new C13587a(), side, N7.c.g(DisplayMetrics.DENSITY_360), N7.c.f(300));
    }

    public void B1(List<j6.b> elementList) {
        this.f91555k0 = false;
        this.f91545a0.addAll(elementList);
        this.f91546b0.q(elementList);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.prefab_spawner_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new b());
        this.f91549e0 = (EditText) inflate.findViewById(R.id.searchET2);
        this.f91547c0 = (RecyclerView) inflate.findViewById(R.id.recycler);
        this.f91550f0 = (LinearLayout) inflate.findViewById(R.id.topbar);
        C13945a c13945a = new C13945a(new SteppedArrayList(), M(), new c());
        this.f91546b0 = c13945a;
        this.f91547c0.setAdapter(c13945a);
        this.f91548d0 = new C14486a(M(), this.f91547c0, this.f91546b0, 96);
        this.f91547c0.addOnScrollListener(new d());
        this.f91542X.clear();
        this.f91542X.add(new C14053a(R.drawable.prefab2, "Project objects"));
        this.f91542X.add(new j6.c());
        this.f91542X.add(new C14054b(R.drawable.esp_scene, Lang.l(Lang.T.SCENARIO), "scenario"));
        this.f91542X.add(new C14054b(R.drawable.esp_nature, Lang.l(Lang.T.NATURE), "nature"));
        this.f91542X.add(new C14054b(R.drawable.esp_tree, Lang.l(Lang.T.TREES), "tree"));
        this.f91542X.add(new C14054b(R.drawable.esp_rock, Lang.l(Lang.T.ROCKS), "rock"));
        this.f91542X.add(new C14054b(R.drawable.esp_stone, Lang.l(Lang.T.STONES), "stone"));
        this.f91542X.add(new C14054b(R.drawable.esp_wood, Lang.l(Lang.T.WOOD), "wood"));
        this.f91542X.add(new C14054b(R.drawable.esp_house, Lang.l(Lang.T.HOUSES), "house"));
        this.f91542X.add(new C14054b(R.drawable.esp_gun, Lang.l(Lang.T.GUNS), "gun", "guns"));
        this.f91542X.add(new C14054b(R.drawable.esp_weapon, Lang.l(Lang.T.WEAPONS), "weapon"));
        this.f91542X.add(new C14054b(R.drawable.esp_tool, Lang.l(Lang.T.TOOLS), "tool"));
        this.f91542X.add(new C14054b(R.drawable.esp_food, Lang.l(Lang.T.FOOD), "food"));
        this.f91542X.add(new C14054b(R.drawable.esp_furniture, Lang.l(Lang.T.FURNITURE), "furniture"));
        this.f91542X.add(new C14054b(R.drawable.esp_medieval, "Medieval", "medieval"));
        C14055c c14055c = new C14055c();
        this.f91551g0 = c14055c;
        this.f91542X.add(c14055c);
        I1();
        this.f91549e0.setOnEditorActionListener(new e());
        this.f91549e0.addTextChangedListener(new f());
        return inflate;
    }

    public void C1() {
        this.f91555k0 = false;
        this.f91545a0.clear();
        this.f91546b0.m();
    }

    public final void J1(LinearLayout topbar, M7.g element) {
        element.a(topbar, M(), this.f70908j);
        element.n(G1(topbar).e());
    }

    public final void K1(j6.d tab) {
        if (tab == null) {
            throw new NullPointerException("tab can't be null");
        }
        j6.d dVar = this.f91543Y;
        if (dVar != null) {
            dVar.n();
            this.f91543Y.m();
        }
        C1();
        this.f91543Y = tab;
        super.f1(tab.f());
        this.f91543Y.j();
        this.f91543Y.l(this.f91556l0);
        this.f91543Y.k();
    }

    @Override
    public EditorPanel k() {
        return new C13587a();
    }

    @Override
    public void n1() {
        super.n1();
        C14486a c14486a = this.f91548d0;
        if (c14486a != null) {
            c14486a.c();
        }
    }
}
