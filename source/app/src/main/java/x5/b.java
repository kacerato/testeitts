package X5;

import T5.b;
import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.q;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.r;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.NoAnimationViewPager;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import m7.C14189a;
import m7.C14190b;
import o4.InterfaceC14482a;
import q7.C15045a;
import r4.C15147a;

@SuppressLint({"SetTextI18n", "InflateParams"})
public class b extends EditorPanel {

    public static final String f27971p0 = "ProductViewerPanel";

    public final String f27972X;

    public Package f27973Y;

    public final InterfaceC14482a f27974Z;

    public FloatingPanelArea f27975a0;

    public boolean f27976b0;

    public F7.l<l> f27977c0;

    public RecyclerView f27978d0;

    public View f27979e0;

    public TextView f27980f0;

    public ProgressBar f27981g0;

    public boolean f27982h0;

    public NoAnimationViewPager f27983i0;

    public View f27984j0;

    public View f27985k0;

    public View f27986l0;

    public View f27987m0;

    public final List<r.b> f27988n0;

    public final List<F7.i> f27989o0;

    public class a implements F7.k<l> {
        public a() {
        }

        @Override
        public void a() {
        }

        @Override
        public List<l> c() {
            return b.this.F1();
        }

        @Override
        public List<l> f(l element) {
            return b.this.L1(element);
        }

        @Override
        public void b(l element, View v10) {
        }

        @Override
        public void d(l element, boolean open) {
            if (element != null) {
                b.this.I1(element.f28006m).f28005a = open;
            }
        }

        @Override
        public void e(l element) {
            if (element != null && element.f28006m.j()) {
                if (b.this.I1(element.f28006m).f28005a) {
                    b.this.f27977c0.x(element);
                } else {
                    b.this.f27977c0.z(element);
                }
            }
        }
    }

    public class C0778b extends AbstractViewOnClickListenerC12733a {
        public C0778b() {
        }

        @Override
        public void click(View view) {
            b.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final Package f27992b;

        public c(final Package val$pack) {
            this.f27992b = val$pack;
        }

        @Override
        public void click(View view) {
            String str = this.f27992b.userName;
            if (str == null || str.trim().isEmpty()) {
                N7.c.v0(Lang.l(Lang.T.UNKNOWN_ERROR));
                return;
            }
            U5.a aVar = new U5.a();
            aVar.u(str.trim());
            Z5.f.o2(aVar);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public final String f27994b;

        public d(final String val$url) {
            this.f27994b = val$url;
        }

        @Override
        public void click(View view) {
            W5.a.s1(this.f27994b, view, C15147a.e.Below);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public final Package f27996b;

        public class a implements g.p {

            public final C15045a f27998a;

            public a(final C15045a val$loading) {
                this.f27998a = val$loading;
            }

            @Override
            public void a(String error) {
                N7.c.v0(Lang.l(Lang.T.ERROR_PREFIX) + " " + error);
                this.f27998a.p1();
            }

            @Override
            public void b() {
                N7.c.v0(Lang.l(Lang.T.ERROR_NO_INTERNET_CONNECTION));
                this.f27998a.p1();
            }

            @Override
            public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, g.p.a updateStep) {
            }

            @Override
            public void e(g.p.a updateStep) {
                if (updateStep == g.p.a.Import) {
                    this.f27998a.p1();
                }
            }
        }

        public e(final Package val$pack) {
            this.f27996b = val$pack;
        }

        @Override
        public void click(View view) {
            com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.O1(this.f27996b, new a(C15045a.r1()));
        }
    }

    public class f extends PagerAdapter {
        public f() {
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            if (object instanceof View) {
                container.removeView((View) object);
            }
        }

        @Override
        public int getCount() {
            return 2;
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            View view = position == 0 ? b.this.f27986l0 : b.this.f27987m0;
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            container.addView(view);
            return view;
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }
    }

    public class g extends AbstractViewOnClickListenerC12733a {
        public g() {
        }

        @Override
        public void click(View view) {
            b.this.f27983i0.setCurrentItem(0);
        }
    }

    public class h extends AbstractViewOnClickListenerC12733a {
        public h() {
        }

        @Override
        public void click(View view) {
            b.this.f27983i0.setCurrentItem(1);
        }
    }

    public class i extends ViewPager.SimpleOnPageChangeListener {
        public i() {
        }

        @Override
        public void onPageSelected(int position) {
            b.this.W1(position);
        }
    }

    public class j implements b.l {
        public j() {
        }

        @Override
        public void a(String error) {
            if (b.this.f27976b0) {
                return;
            }
            b.this.O1(Lang.l(Lang.T.STORE_REPOSITORY_LOAD_FAILED), false);
        }

        @Override
        public void b() {
            if (b.this.f27976b0) {
                return;
            }
            b.this.O1(Lang.l(Lang.T.ERROR_NO_INTERNET_CONNECTION), false);
        }

        @Override
        public void onSuccess(List<r.b> files) {
            if (b.this.f27976b0) {
                return;
            }
            b.this.B1(files);
        }
    }

    public static class l extends F7.i {

        public final r.b f28006m;

        public l(r.b file) {
            super(file.i(), file.j() ? new C14190b() : new C14189a());
            this.f28006m = file;
        }

        @Override
        public String g() {
            return this.f28006m.getName();
        }
    }

    public b(String packageId, InterfaceC14482a parentTrigger) {
        super(null, Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        this.f27976b0 = false;
        this.f27982h0 = false;
        this.f27988n0 = new SteppedArrayList();
        this.f27989o0 = new SteppedArrayList();
        this.f27972X = packageId;
        this.f27974Z = parentTrigger;
        super.e1(false);
    }

    public static String H1(String value) {
        if (value == null) {
            return "";
        }
        String trim = value.trim();
        if (trim.isEmpty()) {
            return "";
        }
        if (trim.matches("\\d{2}/\\d{2}/\\d{4}") || !trim.matches("\\d{4}-\\d{2}-\\d{2}")) {
            return trim;
        }
        String[] split = trim.split("-");
        return split[2] + "/" + split[1] + "/" + split[0];
    }

    public static boolean J1(View view, MotionEvent motionEvent) {
        return true;
    }

    public static String N1(String value, String fallback) {
        return (value == null || value.trim().isEmpty()) ? fallback : value;
    }

    public static FloatingPanelArea Q1(View anchor, C15147a.e anchorSide, Package pack) {
        return R1(anchor, anchorSide, pack, null);
    }

    public static FloatingPanelArea R1(View anchor, C15147a.e anchorSide, Package pack, InterfaceC14482a parentTrigger) {
        b bVar = new b(pack, parentTrigger);
        FloatingPanelArea g10 = C15147a.g(anchor, bVar, anchorSide, 1.0f, 1.0f);
        g10.N1(false);
        g10.T();
        bVar.f27975a0 = g10;
        return g10;
    }

    public static FloatingPanelArea S1(View anchor, C15147a.e anchorSide, String packageId) {
        return T1(anchor, anchorSide, packageId, null);
    }

    public static FloatingPanelArea T1(View anchor, C15147a.e anchorSide, String packageId, InterfaceC14482a parentTrigger) {
        b bVar = new b(packageId, parentTrigger);
        FloatingPanelArea g10 = C15147a.g(anchor, bVar, anchorSide, 1.0f, 1.0f);
        g10.N1(false);
        g10.T();
        bVar.f27975a0 = g10;
        return g10;
    }

    public static FloatingPanelArea U1(InterfaceC14482a parentTrigger, Package pack) {
        b bVar = new b(pack, parentTrigger);
        FloatingPanelArea m10 = C15147a.m(bVar, 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        m10.N1(false);
        m10.T();
        bVar.f27975a0 = m10;
        return m10;
    }

    public static List<String> V1(String tags) {
        if (tags == null) {
            return new SteppedArrayList();
        }
        String trim = tags.trim();
        if (trim.isEmpty()) {
            return new SteppedArrayList();
        }
        String[] split = trim.split("[,;]");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i10 = 0; i10 < split.length; i10++) {
            String str = split[i10];
            String trim2 = str != null ? str.trim() : "";
            if (!trim2.isEmpty()) {
                linkedHashSet.add(trim2);
            }
        }
        return new SteppedArrayList(linkedHashSet);
    }

    public final void B1(List<r.b> files) {
        this.f27988n0.clear();
        this.f27989o0.clear();
        if (files == null || files.isEmpty()) {
            O1(Lang.l(Lang.T.STORE_REPOSITORY_NO_FILES), false);
            return;
        }
        this.f27988n0.addAll(files);
        for (int i10 = 0; i10 < this.f27988n0.size(); i10++) {
            G1(this.f27988n0.get(i10));
        }
        F7.l<l> lVar = this.f27977c0;
        if (lVar == null) {
            this.f27977c0 = new F7.l<>(this.f27978d0, new a());
        } else {
            lVar.C(F1());
        }
        O1(null, false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.marketplace_product_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean J12;
                J12 = b.J1(view, motionEvent);
                return J12;
            }
        });
        inflate.findViewById(R.id.exit_button).setOnClickListener(new C0778b());
        Package M12 = M1();
        P1(inflate);
        C1(inflate, M12);
        return inflate;
    }

    public final void C1(View v10, Package pack) {
        List<String> list;
        if (pack == null) {
            N7.c.v0(Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG));
            R0();
            return;
        }
        ((TextView) v10.findViewById(R.id.panel_title)).setText(Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        ((TextView) v10.findViewById(R.id.packageName)).setText(N1(T5.b.P(pack), Lang.l(Lang.T.STORE_ERROR_DEFAULT_NAME)));
        ImageView imageView = (ImageView) v10.findViewById(R.id.product_icon);
        String str = pack.thumbnail;
        String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(pack, pack.thumbnail);
        if ((I10 == null || I10.isEmpty()) && (list = pack.images) != null && !list.isEmpty()) {
            I10 = T5.b.I(pack, pack.images.get(0));
        }
        if (I10 != null) {
            Vc.e.a0(imageView, I10, R.drawable.package_failedload, R.drawable.package_failedload, M());
        } else {
            Vc.e.U(imageView, R.drawable.package_failedload);
        }
        LinearLayout linearLayout = (LinearLayout) v10.findViewById(R.id.user_display);
        linearLayout.removeAllViews();
        TextView textView = new TextView(M());
        textView.setText(N1(pack.userName, Lang.l(Lang.T.UNKNOWN_ERROR)));
        textView.setTextColor(Theme.i(Theme.T.ACCENT_GREEN));
        textView.setTextSize(12.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        linearLayout.addView(textView);
        linearLayout.setOnClickListener(new c(pack));
        View view = this.f27986l0;
        if (view == null) {
            view = v10;
        }
        TextView textView2 = (TextView) view.findViewById(R.id.text_version);
        if (textView2 != null) {
            textView2.setText("");
        }
        TextView textView3 = (TextView) view.findViewById(R.id.text_offered_by);
        if (textView3 != null) {
            textView3.setText("");
        }
        View findViewById = view.findViewById(R.id.text_size);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        String H12 = H1(N1(pack.date, ""));
        TextView textView4 = (TextView) view.findViewById(R.id.text_release_date);
        if (textView4 != null) {
            if (H12.isEmpty()) {
                textView4.setVisibility(8);
            } else {
                textView4.setVisibility(0);
                String trim = textView4.getText().toString().trim();
                if (!trim.isEmpty()) {
                    H12 = trim + " " + H12;
                }
                textView4.setText(H12);
            }
        }
        TextView textView5 = (TextView) view.findViewById(R.id.text_updated_date);
        if (textView5 != null) {
            textView5.setVisibility(8);
        }
        View view2 = this.f27986l0;
        if (view2 == null) {
            view2 = v10;
        }
        ((TextView) view2.findViewById(R.id.text_about_product)).setText(N1(T5.b.H(pack), Lang.l(Lang.T.STORE_ERROR_WITHOUT_DESCRIPTION)) + "\n\nLicense:\n" + T5.b.K(pack));
        E1(v10, pack);
        LinearLayout linearLayout2 = (LinearLayout) v10.findViewById(R.id.media);
        linearLayout2.removeAllViews();
        List<String> list2 = pack.images;
        if (list2 != null) {
            for (int i10 = 0; i10 < list2.size(); i10++) {
                String I11 = T5.b.I(pack, list2.get(i10));
                if (I11 != null) {
                    ImageView imageView2 = new ImageView(M());
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Nc.b.l0(160.0f, M()));
                    layoutParams.bottomMargin = Nc.b.l0(8.0f, M());
                    imageView2.setLayoutParams(layoutParams);
                    imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    Vc.e.a0(imageView2, I11, R.drawable.package_failedload, R.drawable.package_failedload, M());
                    imageView2.setOnClickListener(new d(I11));
                    linearLayout2.addView(imageView2);
                }
            }
        }
        LinearLayout linearLayout3 = (LinearLayout) v10.findViewById(R.id.actions_layout);
        linearLayout3.removeAllViews();
        View inflate = this.f70908j.inflate(R.layout.marketplace_product_button_action_module, (ViewGroup) linearLayout3, false);
        ((TextView) inflate.findViewById(R.id.text)).setText(Lang.l(Lang.T.STORE_IMPORT));
        inflate.findViewById(R.id.button).setOnClickListener(new e(pack));
        linearLayout3.addView(inflate);
        D1(v10, pack);
    }

    public final void D1(View v10, Package pack) {
        View view = this.f27987m0;
        if (view != null) {
            v10 = view;
        }
        this.f27979e0 = v10.findViewById(R.id.package_files_section);
        this.f27980f0 = (TextView) v10.findViewById(R.id.package_files_status);
        this.f27981g0 = (ProgressBar) v10.findViewById(R.id.package_files_progress);
        RecyclerView recyclerView = (RecyclerView) v10.findViewById(R.id.package_files_recycler);
        this.f27978d0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setNestedScrollingEnabled(false);
        }
        if (this.f27979e0 == null || this.f27980f0 == null || this.f27981g0 == null || this.f27978d0 == null) {
            return;
        }
        if (pack == null) {
            O1(Lang.l(Lang.T.STORE_REPOSITORY_UNAVAILABLE), false);
            return;
        }
        String N10 = T5.b.N(pack);
        if (N10 == null || N10.trim().isEmpty()) {
            O1(Lang.l(Lang.T.STORE_REPOSITORY_NOT_PROVIDED), false);
        } else {
            O1(Lang.l(Lang.T.STORE_REPOSITORY_LOADING_FILES), true);
            T5.b.V(pack, new j());
        }
    }

    public final void E1(View v10, Package pack) {
        View view = this.f27986l0;
        if (view != null) {
            v10 = view;
        }
        LinearLayout linearLayout = (LinearLayout) v10.findViewById(R.id.tags);
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        List<String> V12 = V1(pack != null ? pack.tags : null);
        if (V12.isEmpty()) {
            linearLayout.setVisibility(8);
            return;
        }
        linearLayout.setVisibility(0);
        for (int i10 = 0; i10 < V12.size(); i10++) {
            String str = V12.get(i10);
            View inflate = this.f70908j.inflate(R.layout.marketplace_product_tag_module, (ViewGroup) linearLayout, false);
            TextView textView = (TextView) inflate.findViewById(R.id.text_tag);
            if (textView != null) {
                textView.setText(str);
            }
            linearLayout.addView(inflate);
        }
    }

    public final List<l> F1() {
        if (this.f27989o0.isEmpty()) {
            for (int i10 = 0; i10 < this.f27988n0.size(); i10++) {
                r.b bVar = this.f27988n0.get(i10);
                if (!q.b(bVar.i())) {
                    k I12 = I1(bVar);
                    l lVar = new l(bVar);
                    lVar.r(bVar.h() > 0);
                    lVar.f6684f.f6678c = I12.f28005a;
                    this.f27989o0.add(lVar);
                }
            }
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i11 = 0; i11 < this.f27989o0.size(); i11++) {
            steppedArrayList.add((l) this.f27989o0.get(i11));
        }
        return steppedArrayList;
    }

    @Override
    public void G0() {
        this.f27976b0 = true;
        super.G0();
        InterfaceC14482a interfaceC14482a = this.f27974Z;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
    }

    public final void G1(r.b file) {
        I1(file);
        for (int i10 = 0; i10 < file.h(); i10++) {
            G1(file.f(i10));
        }
    }

    public final k I1(r.b file) {
        k kVar = (k) file.getUserPointer();
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(null);
        file.setUserPointer(kVar2);
        return kVar2;
    }

    public final void K1(r.b parent, List<l> elements) {
        if (parent == null) {
            return;
        }
        for (int i10 = 0; i10 < parent.h(); i10++) {
            r.b f10 = parent.f(i10);
            if (!q.b(f10.i())) {
                k I12 = I1(f10);
                l lVar = new l(f10);
                lVar.r(f10.h() > 0);
                lVar.f6684f.f6678c = I12.f28005a;
                elements.add(lVar);
            }
        }
    }

    public final List<l> L1(l element) {
        LinkedList linkedList = new LinkedList();
        if (element != null) {
            K1(element.f28006m, linkedList);
            for (int i10 = 0; i10 < linkedList.size(); i10++) {
                linkedList.get(i10).q(element.e() + 1);
            }
        }
        return linkedList;
    }

    public final Package M1() {
        Package r02 = this.f27973Y;
        if (r02 != null) {
            return r02;
        }
        String str = this.f27972X;
        if (str == null) {
            return null;
        }
        Package D10 = T5.b.D(str);
        this.f27973Y = D10;
        return D10;
    }

    public final void O1(String text, boolean loading) {
        if (this.f27979e0 == null || this.f27980f0 == null || this.f27981g0 == null) {
            return;
        }
        if (text == null || text.trim().isEmpty()) {
            this.f27980f0.setVisibility(8);
        } else {
            this.f27980f0.setVisibility(0);
            this.f27980f0.setText(text);
        }
        this.f27981g0.setVisibility(loading ? 0 : 8);
    }

    public final void P1(View v10) {
        this.f27983i0 = (NoAnimationViewPager) v10.findViewById(R.id.info_pager);
        this.f27984j0 = v10.findViewById(R.id.info_tab_description);
        this.f27985k0 = v10.findViewById(R.id.info_tab_files);
        if (this.f27983i0 == null) {
            return;
        }
        this.f27986l0 = this.f70908j.inflate(R.layout.marketplace_product_info_description_page, (ViewGroup) null);
        this.f27987m0 = this.f70908j.inflate(R.layout.marketplace_product_info_files_page, (ViewGroup) null);
        this.f27983i0.setAdapter(new f());
        this.f27983i0.setOffscreenPageLimit(2);
        this.f27983i0.setPagingEnabled(false);
        this.f27983i0.setAnimationEnabled(true);
        View view = this.f27984j0;
        if (view != null) {
            if (view instanceof TextView) {
                ((TextView) view).setText(Lang.l(Lang.T.STORE_ABOUT_INFORMATION));
            }
            this.f27984j0.setOnClickListener(new g());
        }
        View view2 = this.f27985k0;
        if (view2 != null) {
            if (view2 instanceof TextView) {
                ((TextView) view2).setText(Lang.l(Lang.T.FILES));
            }
            this.f27985k0.setOnClickListener(new h());
        }
        this.f27983i0.addOnPageChangeListener(new i());
        W1(0);
    }

    public final void W1(int index) {
        View view = this.f27984j0;
        if (view instanceof TextView) {
            ((TextView) view).setTextColor(Theme.i(index == 0 ? Theme.T.HIGH_TEXT_COLOR : Theme.T.MID_TEXT_COLOR));
        }
        View view2 = this.f27985k0;
        if (view2 instanceof TextView) {
            ((TextView) view2).setTextColor(Theme.i(index == 1 ? Theme.T.HIGH_TEXT_COLOR : Theme.T.MID_TEXT_COLOR));
        }
    }

    @Override
    public EditorPanel k() {
        return new b(this.f27973Y, this.f27974Z);
    }

    @Override
    public String o() {
        return "ProductViewerPanel[" + this.f27972X + "]";
    }

    public static class k {

        public boolean f28005a;

        public k() {
            this.f28005a = false;
        }

        public k(C0778b c0778b) {
            this();
        }
    }

    public b(Package pack, InterfaceC14482a parentTrigger) {
        super(null, Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        this.f27976b0 = false;
        this.f27982h0 = false;
        this.f27988n0 = new SteppedArrayList();
        this.f27989o0 = new SteppedArrayList();
        this.f27973Y = pack;
        this.f27972X = pack.f71742id;
        this.f27974Z = parentTrigger;
        super.e1(false);
    }
}
