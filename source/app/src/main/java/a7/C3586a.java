package a7;

import Ic.C2633l;
import Z6.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.C12736d;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import e7.C13042a;
import h4.k;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import r4.C15147a;

public class C3586a extends EditorPanel {

    public static final String f31860j0 = "RevertFilePanel";

    public RecyclerView f31861X;

    public C13042a<C3587b, C3588c> f31862Y;

    public LinearLayoutManager f31863Z;

    public String f31864a0;

    public TextView f31865b0;

    public TextView f31866c0;

    public int f31867d0 = -1;

    public View f31868e0;

    public C3587b f31869f0;

    public View f31870g0;

    public View f31871h0;

    public View f31872i0;

    public class ViewOnTouchListenerC0841a implements View.OnTouchListener {
        public ViewOnTouchListenerC0841a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends LinearLayoutManager {
        public b(Context context) {
            super(context);
        }

        @Override
        public boolean supportsPredictiveItemAnimations() {
            return false;
        }
    }

    public class c implements C13042a.InterfaceC1584a<C3587b, C3588c> {

        public class C0842a extends AbstractViewOnClickListenerC12733a {

            public final C3587b f31876b;

            public class C0843a extends SteppedArrayList<C12908b> {

                public final View f31878b;

                public class C0844a implements dd.d {

                    public class C0845a implements c.i {
                        public C0845a() {
                        }

                        @Override
                        public void a(c.g dialogC) {
                            dialogC.dismiss();
                            C3587b c3587b = C0842a.this.f31876b;
                            c3587b.f31904d.b(c3587b.f31903c);
                        }

                        @Override
                        public void b(c.g dialog) {
                            dialog.dismiss();
                        }
                    }

                    public C0844a() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        Z6.c.w1(C0843a.this.f31878b, C15147a.e.Below, "Delete", "Delete this commit?", new C0845a());
                    }
                }

                public class b implements dd.d {

                    public class C0846a implements c.i {
                        public C0846a() {
                        }

                        @Override
                        public void a(c.g dialogC) {
                            dialogC.dismiss();
                            C3587b c3587b = C0842a.this.f31876b;
                            c3587b.f31904d.a(c3587b.f31903c);
                        }

                        @Override
                        public void b(c.g dialog) {
                            dialog.dismiss();
                        }
                    }

                    public b() {
                    }

                    @Override
                    public void onSelected(View v10) {
                        Z6.c.w1(C0843a.this.f31878b, C15147a.e.Below, "Revert", "Revert file to this commit?", new C0846a());
                    }
                }

                public C0843a(final View val$view) {
                    this.f31878b = val$view;
                    add(new C12908b("Delete", new C0844a()));
                    add(new C12908b("Revert", new b()));
                }
            }

            public C0842a(final C3587b val$element) {
                this.f31876b = val$element;
            }

            @Override
            public void click(View view) {
                Y6.a.F1(view, C15147a.e.Below, new C0843a(view));
            }
        }

        public class b extends AbstractViewOnClickListenerC12733a {

            public final C3588c f31884b;

            public final int f31885c;

            public final C3587b f31886d;

            public b(final C3588c val$holder, final int val$position, final C3587b val$element) {
                this.f31884b = val$holder;
                this.f31885c = val$position;
                this.f31886d = val$element;
            }

            @Override
            public void click(View view) {
                if (C3586a.this.f31868e0 != null) {
                    Vc.e.t(C3586a.this.f31868e0, C3586a.this.M(), Theme.i(Theme.T.TREE_LIST_ROW1));
                }
                C3586a.this.f31868e0 = this.f31884b.f31908e;
                Vc.e.t(this.f31884b.f31908e, C3586a.this.M(), Theme.i(Theme.T.ACCENT_GREEN));
                C3586a.this.f31867d0 = this.f31885c;
                C3587b c3587b = this.f31886d;
                c3587b.f31904d.c(c3587b.f31903c);
            }
        }

        public c() {
        }

        @Override
        public void a(C3588c holder, C3587b element, int position) {
            holder.f31905b.setText(element.f31902b);
            holder.f31907d.setOnClickListener(new C0842a(element));
            if (position == C3586a.this.f31867d0) {
                Vc.e.t(holder.f31908e, C3586a.this.M(), Theme.i(Theme.T.ACCENT_GREEN));
            }
            holder.f31908e.setOnClickListener(new b(holder, position, element));
        }

        @Override
        public C3588c b(LayoutInflater inflater, ViewGroup parent) {
            return new C3588c(inflater.inflate(R.layout.revert_file_element, parent, false));
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {

        public class C0847a implements c.i {
            public C0847a() {
            }

            @Override
            public void a(c.g dialogC) {
                dialogC.dismiss();
                if (C3586a.this.f31869f0 != null) {
                    C3586a.this.f31869f0.f31903c.b();
                }
                C3586a.this.f31862Y.r(C3586a.this.f31869f0);
                C3586a.this.f31869f0 = null;
                C3586a.this.x1(null);
            }

            @Override
            public void b(c.g dialog) {
                dialog.dismiss();
            }
        }

        public d() {
        }

        @Override
        public void click(View view) {
            if (C3586a.this.f31869f0 != null) {
                Z6.c.w1(view, C15147a.e.Below, "Delete", "Delete this commit?", new C0847a());
            }
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public class RunnableC0848a implements Runnable {
            public RunnableC0848a() {
            }

            @Override
            public void run() {
                N7.c.v0("File reverted to " + C3586a.this.f31869f0.f31903c.e());
                C3586a.this.R0();
            }
        }

        public e() {
        }

        @Override
        public void click(View view) {
            if (C3586a.this.f31869f0 != null) {
                C3586a.this.f31869f0.f31903c.c(new RunnableC0848a());
            }
        }
    }

    public class f implements Runnable {

        public class C0849a implements k.j {

            public class RunnableC0850a implements Runnable {

                public final h4.d f31894b;

                public final SimpleDateFormat f31895c;

                public class C0851a implements g {

                    public final C3587b f31897a;

                    public class RunnableC0852a implements Runnable {

                        public final h4.d f31899b;

                        public RunnableC0852a(final h4.d val$version) {
                            this.f31899b = val$version;
                        }

                        @Override
                        public void run() {
                            N7.c.v0("File reverted to " + this.f31899b.e());
                            C3586a.this.R0();
                        }
                    }

                    public C0851a(final C3587b val$e) {
                        this.f31897a = val$e;
                    }

                    @Override
                    public void a(h4.d version) {
                        version.c(new RunnableC0852a(version));
                    }

                    @Override
                    public void b(h4.d version) {
                        version.b();
                        C3586a.this.f31862Y.r(this.f31897a);
                        N7.c.v0("File removed from " + version.e());
                    }

                    @Override
                    public void c(h4.d version) {
                        C3586a.this.x1(this.f31897a);
                    }
                }

                public RunnableC0850a(final h4.d val$version, final SimpleDateFormat val$simpleDateFormat) {
                    this.f31894b = val$version;
                    this.f31895c = val$simpleDateFormat;
                }

                @Override
                public void run() {
                    String e10 = this.f31894b.e();
                    try {
                        Date parse = this.f31895c.parse(this.f31894b.e());
                        if (this.f31894b.getMode() == 3) {
                            e10 = "Reverted to (" + this.f31894b.h() + ")";
                        } else {
                            e10 = C12736d.b(parse);
                        }
                    } catch (ParseException e11) {
                        e11.printStackTrace();
                    }
                    C3587b c3587b = new C3587b();
                    c3587b.f31901a = this.f31894b.e();
                    c3587b.f31902b = e10;
                    c3587b.f31903c = this.f31894b;
                    c3587b.f31904d = new C0851a(c3587b);
                    C3586a.this.f31862Y.g(c3587b);
                }
            }

            public C0849a() {
            }

            @Override
            public void a(h4.d version) {
                N7.c.j0(new RunnableC0850a(version, new SimpleDateFormat(C12736d.f72115a, Locale.US)));
            }
        }

        public f() {
        }

        @Override
        public void run() {
            k.z().F(new File(C3586a.this.f31864a0), true, new C0849a());
        }
    }

    public interface g {
        void a(h4.d version);

        void b(h4.d version);

        void c(h4.d version);
    }

    public C3586a(String path) {
        this.f31864a0 = path;
        super.e1(false);
        super.f1(Tc.b.w(path, true) + " VCS");
    }

    public static FloatingPanelArea z1(String path) {
        return C15147a.m(new C3586a(path), N7.c.g(650), 0.8f);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.revert_file_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new ViewOnTouchListenerC0841a());
        this.f31861X = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        b bVar = new b(A());
        this.f31863Z = bVar;
        this.f31861X.setLayoutManager(bVar);
        C13042a<C3587b, C3588c> c13042a = new C13042a<>(M(), new c());
        this.f31862Y = c13042a;
        this.f31861X.setAdapter(c13042a);
        this.f31861X.setItemAnimator(null);
        this.f31865b0 = (TextView) inflate.findViewById(R.id.size_info);
        this.f31866c0 = (TextView) inflate.findViewById(R.id.date_info);
        this.f31870g0 = inflate.findViewById(R.id.text_preview_layout);
        this.f31871h0 = inflate.findViewById(R.id.image_preview_layout);
        this.f31872i0 = inflate.findViewById(R.id.simple_informations);
        View findViewById = inflate.findViewById(R.id.delete_button);
        View findViewById2 = inflate.findViewById(R.id.revert_button);
        findViewById.setOnClickListener(new d());
        findViewById2.setOnClickListener(new e());
        y1();
        return inflate;
    }

    @SuppressLint({"SetTextI18n"})
    public void x1(C3587b element) {
        if (element == null) {
            this.f31872i0.setVisibility(8);
            this.f31871h0.setVisibility(8);
            this.f31870g0.setVisibility(8);
            this.f31869f0 = null;
            return;
        }
        this.f31872i0.setVisibility(0);
        this.f31871h0.setVisibility(8);
        this.f31870g0.setVisibility(8);
        h4.d dVar = element.f31903c;
        this.f31869f0 = element;
        this.f31865b0.setText("size: " + Tc.b.r(M(), dVar.a()));
        this.f31866c0.setText("date: " + dVar.e());
        String f10 = element.f31903c.f();
        if (f10 != null) {
            this.f31870g0.setVisibility(0);
            ((TextView) this.f31870g0.findViewById(R.id.text_file)).setText(f10);
        }
        File d10 = element.f31903c.d();
        if (d10.exists()) {
            if (C2633l.b(d10.getName(), ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm")) {
                this.f31871h0.setVisibility(0);
                C2633l.i((ImageView) this.f31871h0.findViewById(R.id.image), d10.getAbsolutePath(), M());
            } else if (C2633l.b(d10.getName(), ".texture")) {
                this.f31871h0.setVisibility(0);
                Vc.e.O((ImageView) this.f31871h0.findViewById(R.id.image), d10.getAbsolutePath(), M());
            }
        }
    }

    public final void y1() {
        O9.b.d(new f());
    }
}
