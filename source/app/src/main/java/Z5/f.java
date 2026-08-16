package Z5;

import Ic.C2630i;
import M7.c;
import M7.r;
import T5.b;
import Z5.f;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import h7.AbstractC13433d;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Predicate;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import ob.b;
import org.openjdk.tools.doclint.DocLint;
import q7.C15045a;
import r4.C15147a;
import yd.C16181m;

public class f extends EditorPanel {

    public static final String f30778x0 = "StorePanel";

    public static final long f30779y0 = 1000;

    public final List<Package> f30780X;

    public AbstractC13433d f30781Y;

    public final p f30782Z;

    public final InterfaceC14359d f30783a0;

    public final Map<String, Package> f30784b0;

    public final Map<String, Package> f30785c0;

    public final Map<String, String> f30786d0;

    public final Map<String, String> f30787e0;

    public final List<String> f30788f0;

    public View f30789g0;

    public o f30790h0;

    public View f30791i0;

    public EditText f30792j0;

    public TextView f30793k0;

    public LinearLayout f30794l0;

    public Z5.b f30795m0;

    public Z5.b f30796n0;

    public AtomicBoolean f30797o0;

    public boolean f30798p0;

    public boolean f30799q0;

    public final List<String> f30800r0;

    public final U5.a f30801s0;

    public View f30802t0;

    public FloatingPanelArea f30803u0;

    public Handler f30804v0;

    public Runnable f30805w0;

    public class a implements r {
        public a() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            f.this.Y1(o.Home);
        }
    }

    public class b implements r {
        public b() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            f.this.Y1(o.MyPackages);
        }
    }

    public class c implements r {
        public c() {
        }

        @Override
        public void b(boolean value, View v10, Context context, M7.o tbToggle, boolean isFromUserAction) {
            f.this.Y1(o.Home);
        }
    }

    public class d implements b.a {

        public final AtomicBoolean f30809a = new AtomicBoolean();

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                f.this.Z1();
            }
        }

        public d() {
        }

        @Override
        public boolean run() {
            if (f.this.f30797o0.get()) {
                return true;
            }
            N7.c.j0(new a());
            return false;
        }
    }

    public class e implements Runnable {

        public final C15045a f30812b;

        public class a implements Runnable {

            public final List f30814b;

            public a(final List val$filteredResult) {
                this.f30814b = val$filteredResult;
            }

            @Override
            public void run() {
                e.this.f30812b.p1();
                synchronized (f.this.f30800r0) {
                    try {
                        if (f.this.f30800r0.isEmpty()) {
                            f.this.W1(this.f30814b);
                            f.this.f30799q0 = true;
                            f.this.f30797o0.set(false);
                            f.this.f30798p0 = false;
                            return;
                        }
                        String str = (String) f.this.f30800r0.get(f.this.f30800r0.size() - 1);
                        f.this.f30800r0.clear();
                        f.this.f30801s0.t(str);
                        f.this.f30797o0.set(false);
                        f.this.f30798p0 = false;
                        f.this.d2();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public class b implements Runnable {

            public final RuntimeException f30816b;

            public b(final RuntimeException val$e) {
                this.f30816b = val$e;
            }

            @Override
            public void run() {
                f.this.f30797o0.set(false);
                f.this.f30798p0 = false;
                Z6.i.y1("Ops!", this.f30816b.getMessage());
            }
        }

        public e(final C15045a val$loading) {
            this.f30812b = val$loading;
        }

        @Override
        public void run() {
            String str;
            UserController userController;
            if (f.this.f30801s0.i() != null && f.this.f30801s0.i().length > 0) {
                for (int i10 = 0; i10 < f.this.f30801s0.i().length; i10++) {
                    String str2 = f.this.f30801s0.i()[i10];
                    if (str2 != null && !str2.trim().isEmpty()) {
                        str = str2.trim();
                        break;
                    }
                }
            }
            str = null;
            if (str == null && f.this.f30790h0 == o.MyPackages && (userController = W7.b.f27306f.f2461d) != null) {
                str = userController.L();
            }
            try {
                N7.c.j0(new a(f.this.e2(T5.b.l0(null, str, f.i2(f.this.f30801s0.g()), f.this.f30801s0.j() ? b.k.NotTemplate : b.k.DonotMatter))));
            } catch (RuntimeException e10) {
                N7.c.j0(new b(e10));
            }
        }
    }

    public class C0810f implements InterfaceC14359d {
        public C0810f() {
        }

        @Override
        public boolean a(File file) {
            return true;
        }
    }

    public class g implements View.OnTouchListener {
        public g() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class h extends AbstractViewOnClickListenerC12733a {
        public h() {
        }

        @Override
        public void click(View view) {
            if (f.this.f30795m0.c()) {
                f.this.f30796n0.d(false);
            }
            f.this.x2();
        }
    }

    public class i extends AbstractViewOnClickListenerC12733a {
        public i() {
        }

        @Override
        public void click(View view) {
            if (f.this.f30796n0.c()) {
                f.this.f30795m0.d(false);
            }
            f.this.x2();
        }
    }

    public class j extends AbstractViewOnClickListenerC12733a {
        public j() {
        }

        @Override
        public void click(View view) {
            f.this.R0();
        }
    }

    public class k implements TextView.OnEditorActionListener {
        public k() {
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
            Editable text = f.this.f30792j0.getText();
            if (text == null) {
                f.this.f30792j0.setText("");
                return true;
            }
            f.this.y2(text.toString());
            C2630i.b();
            return true;
        }
    }

    public class l implements TextWatcher {
        public l() {
        }

        @Override
        public void afterTextChanged(final Editable s10) {
            f.this.f30804v0.removeCallbacks(f.this.f30805w0);
            f.this.f30805w0 = new Runnable() {
                @Override
                public final void run() {
                    f.l.this.b(s10);
                }
            };
            f.this.f30804v0.postDelayed(f.this.f30805w0, 1000L);
        }

        public final void b(Editable editable) {
            f.this.y2(editable.toString());
        }

        @Override
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            f.this.f30804v0.removeCallbacks(f.this.f30805w0);
        }
    }

    public class m extends AbstractC13433d {
        public m(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
            super(activity, explorerDataProvider, filter);
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(String openFolder, View v10) {
        }

        @Override
        public void u(File file, View v10) {
            Package g22;
            if (f.this.f30782Z.h(file) || (g22 = f.this.g2(file.getAbsolutePath())) == null) {
                return;
            }
            f.this.r2(g22, v10);
        }

        @Override
        public void v(File file, View v10) {
        }
    }

    public class n extends RecyclerView.OnScrollListener {
        public n() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int i10;
            int i11;
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter == null) {
                return;
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                i10 = gridLayoutManager.findLastVisibleItemPosition();
                i11 = Math.max(1, gridLayoutManager.getSpanCount());
            } else {
                i10 = 0;
                i11 = 1;
            }
            int itemCount = adapter.getItemCount();
            boolean z10 = i10 + (i11 * 2) >= itemCount;
            if (itemCount <= 0 || !z10) {
                f.this.f30798p0 = false;
            } else {
                if (f.this.f30798p0) {
                    return;
                }
                f.this.f30798p0 = true;
                f.this.d2();
            }
        }
    }

    public enum o {
        Home,
        MyPackages
    }

    public class p extends AbstractC14360e {

        public static final String f30827b = "/";

        public static final String f30828c = "";

        public static final String f30829d = " __id__";

        public static final String f30830e = "Latest";

        public class a implements F7.j {

            public final String f30832a;

            public a(final String val$finalUrl) {
                this.f30832a = val$finalUrl;
            }

            @Override
            public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
                Vc.e.a0(imageView, this.f30832a, R.drawable.package_failedload, R.drawable.package_failedload, context);
            }
        }

        public p() {
        }

        public static int r(Package r22, Package r32) {
            return Long.compare(T5.b.g0(r32), T5.b.g0(r22));
        }

        @Override
        public boolean a(File file) {
            return true;
        }

        @Override
        public String c(boolean isSearching, File file, String ipp) {
            Package g22;
            if (h(file) || (g22 = f.this.g2(file.getAbsolutePath())) == null) {
                return "";
            }
            String str = g22.userName;
            String trim = str != null ? str.trim() : "";
            return trim.isEmpty() ? Lang.l(Lang.T.UNKNOWN_ERROR) : trim;
        }

        @Override
        public String d(File file, String ipp) {
            String P10;
            String str;
            String s10 = s(file.getAbsolutePath());
            if (f.this.f30787e0.containsKey(s10) && (str = (String) f.this.f30786d0.get(s10)) != null && !str.trim().isEmpty()) {
                return str;
            }
            Package g22 = f.this.g2(file.getAbsolutePath());
            if (g22 != null && (P10 = T5.b.P(g22)) != null && !P10.trim().isEmpty()) {
                return P10;
            }
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(f30829d);
            return lastIndexOf > 0 ? name.substring(0, lastIndexOf) : name;
        }

        @Override
        public F7.j e(File file, String ipp, boolean isGrid) {
            List<String> list;
            Package g22 = f.this.g2(file.getAbsolutePath());
            if (g22 == null) {
                return null;
            }
            String str = g22.thumbnail;
            String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(g22, g22.thumbnail);
            if ((I10 == null || I10.isEmpty()) && (list = g22.images) != null && !list.isEmpty()) {
                I10 = T5.b.I(g22, g22.images.get(0));
            }
            if (I10 == null || I10.trim().isEmpty()) {
                return null;
            }
            return new a(I10);
        }

        @Override
        public String f() {
            return "/";
        }

        @Override
        public String g(File file, String ipp) {
            String str;
            if (h(file)) {
                return s(file.getAbsolutePath());
            }
            Package g22 = f.this.g2(file.getAbsolutePath());
            if (g22 != null && (str = g22.f71742id) != null) {
                return "package:" + str;
            }
            return file.getAbsolutePath();
        }

        @Override
        public boolean h(File file) {
            String s10 = s(file.getAbsolutePath());
            return s10.equals("/") || s10.equals("/") || f.this.f30787e0.containsKey(s10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public List<File> j(File parent) {
            String s10 = s(parent.getAbsolutePath());
            int i10 = 0;
            if (s10.equals("/")) {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                while (i10 < f.this.f30788f0.size()) {
                    steppedArrayList.add(new File((String) f.this.f30788f0.get(i10)));
                    i10++;
                }
                return steppedArrayList;
            }
            if (!f.this.f30787e0.containsKey(s10)) {
                return new SteppedArrayList();
            }
            final String str = (String) f.this.f30787e0.get(s10);
            SteppedArrayList steppedArrayList2 = new SteppedArrayList(f.this.f30780X);
            if (!f30830e.equals(str)) {
                steppedArrayList2.removeIf(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean q10;
                        q10 = f.p.this.q(str, (Package) obj);
                        return q10;
                    }
                });
            }
            steppedArrayList2.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int r10;
                    r10 = f.p.r((Package) obj, (Package) obj2);
                    return r10;
                }
            });
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            while (i10 < steppedArrayList2.size()) {
                Package r32 = (Package) steppedArrayList2.get(i10);
                if (r32 != null) {
                    File file = new File(p(r32, s10));
                    f.this.f30785c0.put(file.getAbsolutePath(), r32);
                    steppedArrayList3.add(file);
                }
                i10++;
            }
            return steppedArrayList3;
        }

        @Override
        public boolean k(File file, String ipp, String searchText) {
            if (searchText == null) {
                searchText = "";
            }
            String lowerCase = searchText.trim().toLowerCase();
            if (lowerCase.isEmpty()) {
                return true;
            }
            if (h(file)) {
                String d10 = d(file, ipp);
                return d10 != null && d10.toLowerCase().contains(lowerCase);
            }
            Package g22 = f.this.g2(file.getAbsolutePath());
            if (g22 == null) {
                return false;
            }
            String P10 = T5.b.P(g22);
            if (P10 != null && P10.toLowerCase().contains(lowerCase)) {
                return true;
            }
            String str = g22.userName;
            if (str != null && str.toLowerCase().contains(lowerCase)) {
                return true;
            }
            String str2 = g22.tags;
            return str2 != null && str2.toLowerCase().contains(lowerCase);
        }

        @Override
        public boolean l() {
            return true;
        }

        public final String o(Package pack) {
            return f.this.X1(pack, "/");
        }

        public final String p(Package pack, String folderPath) {
            return f.this.X1(pack, folderPath);
        }

        public final boolean q(String str, Package r32) {
            return !f.this.s2(r32, str);
        }

        public final String s(String value) {
            if (value == null || value.isEmpty()) {
                return "/";
            }
            String o10 = Tc.b.o(value);
            if (!o10.startsWith("/")) {
                o10 = "/" + o10;
            }
            if (o10.endsWith("/")) {
                return o10;
            }
            return o10 + "/";
        }

        public p(f fVar, C0810f c0810f) {
            this();
        }
    }

    public f(K8.a engine) {
        super(engine);
        this.f30780X = new SteppedArrayList();
        this.f30782Z = new p(this, null);
        this.f30783a0 = new C0810f();
        this.f30784b0 = new HashMap();
        this.f30785c0 = new HashMap();
        this.f30786d0 = new HashMap();
        this.f30787e0 = new HashMap();
        this.f30788f0 = new SteppedArrayList();
        this.f30790h0 = o.Home;
        this.f30797o0 = new AtomicBoolean();
        this.f30800r0 = new SteppedArrayList();
        this.f30804v0 = new Handler();
        this.f30801s0 = new U5.a();
        super.e1(false);
    }

    private static List<Package> A2(List<Package> packages, int offset, int count) {
        if (packages == null || packages.isEmpty()) {
            return new SteppedArrayList();
        }
        int N10 = Nc.b.N(0, offset);
        int min = Math.min(packages.size(), count + N10);
        return N10 >= min ? new SteppedArrayList() : new SteppedArrayList(packages.subList(N10, min));
    }

    public void W1(List<Package> newPosts) {
        int i10;
        String str;
        LinkedList linkedList = new LinkedList();
        for (int i11 = 0; i11 < newPosts.size(); i11++) {
            Package r32 = newPosts.get(i11);
            if (r32 == null) {
                throw new NullPointerException("Package " + i11 + " is null");
            }
            while (true) {
                if (i10 >= this.f30780X.size()) {
                    linkedList.add(r32);
                    break;
                }
                Package r52 = this.f30780X.get(i10);
                i10 = (r52 == null || (str = r32.f71742id) == null || !str.equals(r52.f71742id)) ? i10 + 1 : 0;
            }
        }
        this.f30780X.addAll(linkedList);
        v2();
        AbstractC13433d abstractC13433d = this.f30781Y;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    public void Z1() {
        this.f30780X.clear();
        this.f30784b0.clear();
        this.f30785c0.clear();
        this.f30786d0.clear();
        this.f30787e0.clear();
        this.f30788f0.clear();
        this.f30798p0 = false;
        this.f30799q0 = false;
        AbstractC13433d abstractC13433d = this.f30781Y;
        if (abstractC13433d != null) {
            abstractC13433d.j();
        }
    }

    public void d2() {
        if (!this.f30799q0 && this.f30797o0.compareAndSet(false, true)) {
            C15045a t12 = C15045a.t1(this.f30789g0, C15147a.e.Left);
            this.f30801s0.o(0);
            this.f30801s0.m(0);
            this.f30801s0.p(this.f30795m0.c());
            this.f30801s0.q(this.f30796n0.c());
            O9.b.d(new e(t12));
        }
    }

    private int f2() {
        return this.f30780X.size();
    }

    public static String i2(String[] tags) {
        if (tags == null || tags.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : tags) {
            if (str != null && !str.trim().isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(str.trim());
            }
        }
        return sb2.toString();
    }

    public static int j2(Package r22, Package r32) {
        return Long.compare(T5.b.g0(r32), T5.b.g0(r22));
    }

    public static FloatingPanelArea n2() {
        FloatingPanelArea m10 = C15147a.m(new f(), 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        return m10;
    }

    public static FloatingPanelArea o2(U5.a storeSearchOptions) {
        FloatingPanelArea m10 = C15147a.m(new f(storeSearchOptions), 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        return m10;
    }

    public static FloatingPanelArea p2(U5.a storeSearchOptions, View anchor, C15147a.e anchorSide) {
        FloatingPanelArea g10 = C15147a.g(anchor, new f(storeSearchOptions), anchorSide, 1.0f, 1.0f);
        g10.N0(true, true, true, false);
        return g10;
    }

    public static FloatingPanelArea q2(View anchor, C15147a.e anchorSide) {
        FloatingPanelArea g10 = C15147a.g(anchor, new f(), anchorSide, 1.0f, 1.0f);
        g10.N0(true, true, true, false);
        return g10;
    }

    public void x2() {
        if (this.f30797o0.get()) {
            K8.a.J(new ob.b(new d()));
        } else {
            Z1();
            d2();
        }
    }

    public void y2(String text) {
        if (this.f30797o0.get()) {
            synchronized (this.f30800r0) {
                this.f30800r0.add(text);
            }
        } else {
            this.f30801s0.t(text);
            Z1();
            x2();
        }
    }

    @Override
    @SuppressLint({"InflateParams"})
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.marketplace_store_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new g());
        ViewGroup viewGroup = (ViewGroup) inflate.findViewById(R.id.contentSearch);
        this.f30793k0 = (TextView) inflate.findViewById(R.id.title);
        this.f30794l0 = (LinearLayout) inflate.findViewById(R.id.storeTabs);
        View findViewById = inflate.findViewById(R.id.searchLayout);
        this.f30791i0 = findViewById;
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        this.f30795m0 = new Z5.b((LinearLayout) inflate.findViewById(R.id.onlyFreeFilter));
        this.f30796n0 = new Z5.b((LinearLayout) inflate.findViewById(R.id.onlyPaidFilter));
        this.f30795m0.e(new h());
        this.f30796n0.e(new i());
        h2();
        c2(viewGroup);
        t2(inflate);
        z2(inflate);
        d2();
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
    }

    public final void V1(String name, String rootPath) {
        String trim = name != null ? name.trim() : "";
        if (trim.isEmpty()) {
            return;
        }
        String d10 = Tc.b.d(trim);
        String replace = d10.replace("/", ConstantDescs.DEFAULT_NAME).replace(C16181m.f130232i, ConstantDescs.DEFAULT_NAME);
        String o10 = Tc.b.o(rootPath);
        if (!o10.startsWith("/")) {
            o10 = "/" + o10;
        }
        if (!o10.endsWith("/")) {
            o10 = o10 + "/";
        }
        String str = o10 + replace + "/";
        this.f30788f0.add(str);
        this.f30786d0.put(str, d10);
        this.f30787e0.put(str, d10);
    }

    public final String X1(Package pack, String folderPath) {
        String P10 = T5.b.P(pack);
        if (P10 == null || P10.trim().isEmpty()) {
            P10 = Lang.l(Lang.T.STORE_ERROR_DEFAULT_NAME);
        }
        String trim = P10.replace("/", ConstantDescs.DEFAULT_NAME).replace(C16181m.f130232i, ConstantDescs.DEFAULT_NAME).trim();
        if (trim.isEmpty()) {
            trim = "Package";
        }
        String str = pack.f71742id;
        String o10 = Tc.b.o(folderPath);
        if (!o10.startsWith("/")) {
            o10 = "/" + o10;
        }
        if (!o10.endsWith("/")) {
            o10 = o10 + "/";
        }
        return o10 + trim + p.f30829d + str;
    }

    public final void Y1(o mode) {
        this.f30790h0 = mode;
        Z1();
        x2();
        int ordinal = mode.ordinal();
        if (ordinal == 0) {
            this.f30793k0.setText(Lang.l(Lang.T.STORE));
            this.f30791i0.setVisibility(0);
        } else {
            if (ordinal != 1) {
                return;
            }
            this.f30793k0.setText("My Packages");
            this.f30791i0.setVisibility(8);
        }
    }

    public final List<String> a2() {
        String str;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f30780X.size(); i10++) {
            Package r32 = this.f30780X.get(i10);
            if (r32 != null && (str = r32.tags) != null) {
                String[] split = str.split("[,;]");
                for (int i11 = 0; i11 < split.length; i11++) {
                    String str2 = split[i11];
                    String trim = str2 != null ? str2.trim() : "";
                    if (!trim.isEmpty() && !b2(steppedArrayList, trim)) {
                        steppedArrayList.add(trim);
                    }
                }
            }
        }
        steppedArrayList.sort(String.CASE_INSENSITIVE_ORDER);
        return steppedArrayList;
    }

    public final boolean b2(List<String> list, String value) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (list.get(i10).equalsIgnoreCase(value)) {
                return true;
            }
        }
        return false;
    }

    public final void c2(ViewGroup content) {
        m mVar = new m(A(), this.f30782Z, this.f30783a0);
        this.f30781Y = mVar;
        mVar.D(true);
        this.f30781Y.y(true);
        this.f30781Y.f(new n());
        this.f30781Y.i(content);
        this.f30781Y.o("/");
    }

    public final List<Package> e2(List<Package> input) {
        if (input == null || input.isEmpty()) {
            return new SteppedArrayList();
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String[] i10 = this.f30801s0.i();
        String[] g10 = this.f30801s0.g();
        String h10 = this.f30801s0.h();
        boolean j10 = this.f30801s0.j();
        for (int i11 = 0; i11 < input.size(); i11++) {
            Package r62 = input.get(i11);
            if (r62 != null && ((!j10 || !r62.isTemplate) && m2(r62, i10) && l2(r62, g10) && k2(r62, h10))) {
                steppedArrayList.add(r62);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int j22;
                j22 = f.j2((Package) obj, (Package) obj2);
                return j22;
            }
        });
        return steppedArrayList;
    }

    public final Package g2(String path) {
        return this.f30785c0.get(path);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h2() {
        Context M10 = M();
        LinkedList linkedList = new LinkedList();
        M7.p pVar = new M7.p(M10);
        UserController userController = W7.b.f27306f.f2461d;
        if (userController == null || !userController.Q()) {
            pVar.s(new M7.o(R.drawable.home, new c(), c.b.Disconnected, M10).B0(Theme.T.PANEL_TOPBAR).N0(Theme.T.PANEL));
        } else {
            M7.o oVar = new M7.o(R.drawable.home, new a(), c.b.Left, M10);
            Ac.b bVar = Theme.T.PANEL_TOPBAR;
            M7.o B02 = oVar.B0(bVar);
            Ac.b bVar2 = Theme.T.PANEL;
            pVar.s(B02.N0(bVar2));
            pVar.s(new M7.o(R.drawable.my_packages, new b(), c.b.Right, M10).B0(bVar).N0(bVar2));
        }
        linkedList.add(pVar);
        this.f30794l0.removeAllViews();
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            M7.g gVar = (M7.g) linkedList.get(i10);
            gVar.a(this.f30794l0, M10, this.f70908j);
            M7.k kVar = new M7.k(Nc.b.l0(2.0f, M10));
            kVar.a(this.f30794l0, M10, this.f70908j);
            gVar.n(kVar.e());
        }
    }

    @Override
    public EditorPanel k() {
        return new f(this.f30801s0);
    }

    public final boolean k2(Package pack, String text) {
        if (text == null || text.trim().isEmpty()) {
            return true;
        }
        String lowerCase = text.trim().toLowerCase();
        String P10 = T5.b.P(pack);
        if (P10 != null && P10.toLowerCase().contains(lowerCase)) {
            return true;
        }
        String str = pack.userName;
        if (str != null && str.toLowerCase().contains(lowerCase)) {
            return true;
        }
        String str2 = pack.tags;
        return str2 != null && str2.toLowerCase().contains(lowerCase);
    }

    public final boolean l2(Package pack, String[] tags) {
        if (tags == null || tags.length == 0) {
            return true;
        }
        for (String str : tags) {
            if (str != null && !str.trim().isEmpty() && s2(pack, str)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void m1() {
        AbstractC13433d abstractC13433d = this.f30781Y;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    public final boolean m2(Package pack, String[] users) {
        if (users == null || users.length == 0) {
            return true;
        }
        String str = pack.userName;
        String trim = str != null ? str.trim() : "";
        if (trim.isEmpty()) {
            return false;
        }
        for (String str2 : users) {
            if (str2 != null && trim.equalsIgnoreCase(str2.trim())) {
                return true;
            }
        }
        return false;
    }

    public final void r2(Package pack, View view) {
        if (pack == null) {
            return;
        }
        X5.b.Q1(view, C15147a.e.Right, pack);
    }

    public final boolean s2(Package pack, String tag) {
        String str;
        if (pack != null && (str = pack.tags) != null && tag != null) {
            String[] split = str.split("[,;]");
            for (int i10 = 0; i10 < split.length; i10++) {
                String str2 = split[i10];
                if ((str2 != null ? str2.trim() : "").equalsIgnoreCase(tag.trim())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void t2(View v10) {
        View findViewById = v10.findViewById(R.id.close);
        this.f30789g0 = findViewById;
        findViewById.setOnClickListener(new j());
    }

    public final void u2(View v10) {
        EditText editText = (EditText) v10.findViewById(R.id.searchET);
        this.f30792j0 = editText;
        editText.setOnEditorActionListener(new k());
        this.f30792j0.addTextChangedListener(new l());
    }

    public final void v2() {
        this.f30784b0.clear();
        for (int i10 = 0; i10 < this.f30780X.size(); i10++) {
            Package r12 = this.f30780X.get(i10);
            if (r12 != null) {
                this.f30784b0.put(r12.f71742id, r12);
            }
        }
        w2();
    }

    public final void w2() {
        this.f30786d0.clear();
        this.f30787e0.clear();
        this.f30788f0.clear();
        V1(p.f30830e, "/");
        List<String> a22 = a2();
        for (int i10 = 0; i10 < a22.size(); i10++) {
            V1(a22.get(i10), "/");
        }
    }

    public final void z2(View v10) {
        TextView textView = (TextView) v10.findViewById(R.id.repositoryText);
        if (textView != null) {
            textView.setText("Repository: " + T5.b.M());
        }
    }

    public f() {
        super(null, Lang.l(Lang.T.STORE));
        this.f30780X = new SteppedArrayList();
        this.f30782Z = new p(this, null);
        this.f30783a0 = new C0810f();
        this.f30784b0 = new HashMap();
        this.f30785c0 = new HashMap();
        this.f30786d0 = new HashMap();
        this.f30787e0 = new HashMap();
        this.f30788f0 = new SteppedArrayList();
        this.f30790h0 = o.Home;
        this.f30797o0 = new AtomicBoolean();
        this.f30800r0 = new SteppedArrayList();
        this.f30804v0 = new Handler();
        this.f30801s0 = new U5.a();
        super.e1(false);
    }

    public f(U5.a searchOptions) {
        super(null, Lang.l(Lang.T.STORE));
        this.f30780X = new SteppedArrayList();
        this.f30782Z = new p(this, null);
        this.f30783a0 = new C0810f();
        this.f30784b0 = new HashMap();
        this.f30785c0 = new HashMap();
        this.f30786d0 = new HashMap();
        this.f30787e0 = new HashMap();
        this.f30788f0 = new SteppedArrayList();
        this.f30790h0 = o.Home;
        this.f30797o0 = new AtomicBoolean();
        this.f30800r0 = new SteppedArrayList();
        this.f30804v0 = new Handler();
        if (searchOptions != null) {
            this.f30801s0 = searchOptions.c();
        } else {
            this.f30801s0 = new U5.a();
        }
        super.e1(false);
    }
}
