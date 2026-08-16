package d6;

import Ic.C2636o;
import Z6.f;
import Z6.i;
import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.load.engine.i;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C12735c;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import o4.InterfaceC14482a;
import r4.C15147a;
import w6.C15971b;

@SuppressLint({"SetTextI18n", "InflateParams"})
public class C12880e extends EditorPanel {

    public static final String f84180b0 = "TemplateViewerV2";

    public static final AtomicBoolean f84181c0 = new AtomicBoolean(false);

    public final String f84182X;

    public Package f84183Y;

    public final InterfaceC14482a f84184Z;

    public FloatingPanelArea f84185a0;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        @Override
        public void click(View view) {
            C12880e.this.R0();
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {

        public boolean f84187b = false;

        public final TextView f84188c;

        public final TextView f84189d;

        public b(final TextView val$textDescription, final TextView val$readMore) {
            this.f84188c = val$textDescription;
            this.f84189d = val$readMore;
        }

        @Override
        public void click(View view) {
            boolean z10 = this.f84187b;
            this.f84187b = !z10;
            this.f84188c.setMaxLines(!z10 ? Integer.MAX_VALUE : 6);
            this.f84189d.setText(Lang.l(this.f84187b ? Lang.T.READ_LESS : Lang.T.READ_MORE));
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public final String f84191b;

        public c(final String val$url) {
            this.f84191b = val$url;
        }

        @Override
        public void click(View view) {
            W5.a.s1(this.f84191b, view, C15147a.e.Below);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public final Package f84193b;

        public d(final Package val$pack) {
            this.f84193b = val$pack;
        }

        @Override
        public void click(View view) {
            C12880e.this.w1(this.f84193b);
        }
    }

    public class C1508e implements f.g {

        public final Package f84195a;

        public C1508e(final Package val$pack) {
            this.f84195a = val$pack;
        }

        @Override
        public void c(String text) {
            C12880e.this.t1(text, this.f84195a);
        }

        @Override
        public void onCancel() {
        }
    }

    public class f implements Runnable {

        public final String f84197b;

        public final String f84198c;

        public f(final String val$packageIdLong, final String val$finalProjectTittle) {
            this.f84197b = val$packageIdLong;
            this.f84198c = val$finalProjectTittle;
        }

        @Override
        public void run() {
            C12735c.a("NEW_PROJECT_TEMPLATE[" + this.f84197b + "]");
            L5.a.p1(this.f84197b, this.f84198c);
        }
    }

    public C12880e(String packageId, InterfaceC14482a parentTrigger) {
        super(null, Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        this.f84182X = packageId;
        this.f84184Z = parentTrigger;
        super.e1(false);
    }

    public static FloatingPanelArea A1(View anchor, C15147a.e anchorSide, String packageId) {
        return B1(anchor, anchorSide, packageId, null);
    }

    public static FloatingPanelArea B1(View anchor, C15147a.e anchorSide, String packageId, InterfaceC14482a parentTrigger) {
        C12880e c12880e = new C12880e(packageId, parentTrigger);
        FloatingPanelArea g10 = C15147a.g(anchor, c12880e, anchorSide, 1.0f, 1.0f);
        g10.N1(false);
        c12880e.f84185a0 = g10;
        return g10;
    }

    public static FloatingPanelArea C1(InterfaceC14482a parentTrigger, Package pack) {
        C12880e c12880e = new C12880e(pack, parentTrigger);
        FloatingPanelArea m10 = C15147a.m(c12880e, 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        m10.N1(false);
        m10.T();
        c12880e.f84185a0 = m10;
        return m10;
    }

    public static FloatingPanelArea D1(InterfaceC14482a parentTrigger, String packageId) {
        C12880e c12880e = new C12880e(packageId, parentTrigger);
        FloatingPanelArea m10 = C15147a.m(c12880e, 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        m10.N1(false);
        m10.T();
        c12880e.f84185a0 = m10;
        return m10;
    }

    private void s1(View v10, Package pack) {
        List<String> list;
        if (pack == null) {
            N7.c.v0(Lang.l(Lang.T.ERROR_SOMETHING_WENT_WRONG));
            R0();
            return;
        }
        ((TextView) v10.findViewById(R.id.panel_title)).setText(Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        ((TextView) v10.findViewById(R.id.packageName)).setText(y1(T5.b.P(pack), Lang.l(Lang.T.STORE_ERROR_DEFAULT_NAME)));
        TextView textView = (TextView) v10.findViewById(R.id.text_description);
        textView.setText(y1(T5.b.H(pack), Lang.l(Lang.T.STORE_ERROR_WITHOUT_DESCRIPTION)) + "\n\nLicense:\n" + T5.b.K(pack));
        TextView textView2 = (TextView) v10.findViewById(R.id.read_more);
        textView2.setText(Lang.l(Lang.T.READ_MORE));
        textView2.setOnClickListener(new b(textView, textView2));
        textView.setMaxLines(6);
        ImageView imageView = (ImageView) v10.findViewById(R.id.product_icon);
        String str = pack.thumbnail;
        String I10 = (str == null || str.isEmpty()) ? null : T5.b.I(pack, pack.thumbnail);
        if ((I10 == null || I10.isEmpty()) && (list = pack.images) != null && !list.isEmpty()) {
            I10 = T5.b.I(pack, pack.images.get(0));
        }
        String str2 = I10;
        if (str2 != null) {
            Vc.e.b0(imageView, str2, R.drawable.package_failedload, R.drawable.package_failedload, M(), i.f59186b);
        } else {
            Vc.e.U(imageView, R.drawable.package_failedload);
        }
        LinearLayout linearLayout = (LinearLayout) v10.findViewById(R.id.user_display);
        linearLayout.removeAllViews();
        TextView textView3 = new TextView(M());
        textView3.setText(y1(pack.userName, Lang.l(Lang.T.UNKNOWN_ERROR)));
        textView3.setTextColor(Theme.i(Theme.T.HIGH_TEXT_COLOR));
        textView3.setTextSize(14.0f);
        linearLayout.addView(textView3);
        LinearLayout linearLayout2 = (LinearLayout) v10.findViewById(R.id.product_informations);
        linearLayout2.removeAllViews();
        String str3 = pack.tags;
        String trim = str3 != null ? str3.trim() : "";
        if (!trim.isEmpty()) {
            TextView textView4 = new TextView(M());
            textView4.setText(Lang.l(Lang.T.TAG) + ": " + trim);
            textView4.setTextColor(Theme.i(Theme.T.MID_TEXT_COLOR));
            linearLayout2.addView(textView4);
        }
        ((TextView) v10.findViewById(R.id.text_version)).setText("");
        ((TextView) v10.findViewById(R.id.text_offered_by)).setText("");
        String u12 = u1(y1(pack.date, ""));
        TextView textView5 = (TextView) v10.findViewById(R.id.text_release_date);
        if (textView5 != null) {
            if (u12.isEmpty()) {
                textView5.setVisibility(8);
            } else {
                textView5.setVisibility(0);
                String trim2 = textView5.getText().toString().trim();
                textView5.setText(trim2.isEmpty() ? u12 : trim2 + " " + u12);
            }
        }
        TextView textView6 = (TextView) v10.findViewById(R.id.text_updated_date);
        if (textView6 != null) {
            if (u12.isEmpty()) {
                textView6.setVisibility(8);
            } else {
                textView6.setVisibility(0);
                String trim3 = textView6.getText().toString().trim();
                if (!trim3.isEmpty()) {
                    u12 = trim3 + " " + u12;
                }
                textView6.setText(u12);
            }
        }
        v10.findViewById(R.id.text_size).setVisibility(8);
        v10.findViewById(R.id.product_review).setVisibility(8);
        v10.findViewById(R.id.user_review).setVisibility(8);
        v10.findViewById(R.id.review_list).setVisibility(8);
        v10.findViewById(R.id.price_display).setVisibility(8);
        v10.findViewById(R.id.VIP_warning).setVisibility(8);
        LinearLayout linearLayout3 = (LinearLayout) v10.findViewById(R.id.media);
        linearLayout3.removeAllViews();
        List list2 = pack.images;
        if (list2 == null) {
            list2 = new SteppedArrayList();
        }
        for (int i10 = 0; i10 < list2.size(); i10++) {
            String I11 = T5.b.I(pack, (String) list2.get(i10));
            if (I11 != null) {
                ImageView imageView2 = new ImageView(M());
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Nc.b.l0(160.0f, M()));
                layoutParams.bottomMargin = Nc.b.l0(8.0f, M());
                imageView2.setLayoutParams(layoutParams);
                imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
                Vc.e.b0(imageView2, I11, R.drawable.package_failedload, R.drawable.package_failedload, M(), i.f59186b);
                imageView2.setOnClickListener(new c(I11));
                linearLayout3.addView(imageView2);
            }
        }
        LinearLayout linearLayout4 = (LinearLayout) v10.findViewById(R.id.actions_layout);
        linearLayout4.removeAllViews();
        View inflate = this.f70908j.inflate(R.layout.marketplace_product_button_action_module, (ViewGroup) linearLayout4, false);
        ((TextView) inflate.findViewById(R.id.text)).setText(Lang.l(Lang.T.CREATE_PROJECT));
        inflate.findViewById(R.id.button).setOnClickListener(new d(pack));
        linearLayout4.addView(inflate);
    }

    private static String u1(String value) {
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

    public static boolean v1(View view, MotionEvent motionEvent) {
        return true;
    }

    private Package x1() {
        Package r02 = this.f84183Y;
        if (r02 != null) {
            return r02;
        }
        String str = this.f84182X;
        if (str == null) {
            return null;
        }
        Package D10 = T5.b.D(str);
        this.f84183Y = D10;
        return D10;
    }

    private static String y1(String value, String fallback) {
        return (value == null || value.trim().isEmpty()) ? fallback : value;
    }

    public static FloatingPanelArea z1(View anchor, C15147a.e anchorSide, Package pack) {
        C12880e c12880e = new C12880e(pack, (InterfaceC14482a) null);
        FloatingPanelArea g10 = C15147a.g(anchor, c12880e, anchorSide, 1.0f, 1.0f);
        g10.N1(false);
        c12880e.f84185a0 = g10;
        return g10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.template_viewer_panel_v2, (ViewGroup) null);
        inflate.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean v12;
                v12 = C12880e.v1(view, motionEvent);
                return v12;
            }
        });
        ((ImageView) inflate.findViewById(R.id.exit_button)).setOnClickListener(new a());
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.product_layout);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.skeleton);
        linearLayout.setVisibility(0);
        linearLayout2.setVisibility(8);
        s1(inflate, x1());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        InterfaceC14482a interfaceC14482a = this.f84184Z;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
    }

    @Override
    public EditorPanel k() {
        return new C12880e(this.f84183Y, this.f84184Z);
    }

    public final void t1(String projectTittle, Package pack) {
        if (projectTittle == null || projectTittle.equals("")) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameempty), new i.g());
            return;
        }
        String K10 = Tc.b.K(projectTittle);
        File file = new File(W7.b.f27306f.f2458a.n(M()) + "/" + K10);
        if (file.exists()) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_nameexists), new i.g());
            return;
        }
        if (K10.equals("Files")) {
            Z6.i.z1("Ops!", "Files is a reserved name, please try another", new i.g());
            return;
        }
        if (!file.mkdirs()) {
            Z6.i.z1("Ops!", M().getResources().getString(R.string.activity_projectbrowser_permissionerror), new i.g());
            return;
        }
        f84181c0.set(true);
        R0();
        InterfaceC14482a interfaceC14482a = this.f84184Z;
        if (interfaceC14482a != null) {
            interfaceC14482a.a();
        }
        for (int i10 = 0; i10 < N7.c.D().M(); i10++) {
            try {
                for (Panel panel : N7.c.D().O(i10).panelList) {
                    if (panel.M() instanceof C15971b) {
                        panel.o0();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        C12878c.r1();
        C2636o.e("2.0", new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(K10) + "/_EDITOR/mj.bin"));
        N7.c.l(0.5f, new f(pack.f71742id, K10));
    }

    public final void w1(Package pack) {
        if (pack == null) {
            return;
        }
        if (com.itsmagic.engine.Engines.Engine.World.a.A()) {
            N7.c.v0(Lang.l(Lang.T.PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING));
        } else {
            Z6.f.x1(Lang.l(Lang.T.TEMPLATE_VIEWER_NAME_PROJECT_TEXT), y1(T5.b.P(pack), Lang.l(Lang.T.TEMPLATE_VIEWER_PROJECT_NAME)), new C1508e(pack));
        }
    }

    public C12880e(Package pack, InterfaceC14482a parentTrigger) {
        super(null, Lang.l(Lang.T.STORE_VIEWER_ABOUT_THIS_PACKAGE));
        this.f84183Y = pack;
        this.f84182X = pack.f71742id;
        this.f84184Z = parentTrigger;
        super.e1(false);
    }
}
