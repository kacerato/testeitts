package com.itsmagic.engine.Engines.Engine.Settings;

import C5.b;
import D5.e;
import D5.h;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import JAVARuntime.Runnable;
import Yc.g;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.load.engine.i;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Settings.DecalSettings;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import jd.C13823b;

public class DecalSettings implements Serializable {

    @Expose
    @Deprecated
    private List<String> textures;

    @Expose
    private int resolutionID = 6;

    @Expose
    private final List<Decal> decals = new SteppedArrayList();

    @Expose
    private int maxDecals = 16;

    public static class Decal {

        @Expose
        private String fileIpp;

        @Expose
        private String name;

        public Decal() {
        }

        public String e() {
            return this.fileIpp;
        }

        public String f() {
            return this.name;
        }

        public void g(String fileIpp) {
            this.fileIpp = fileIpp;
        }

        public void h(String name) {
            this.name = name;
        }

        public Decal(String name, String fileIpp) {
            this.name = name;
            this.fileIpp = fileIpp;
        }
    }

    public class a implements c.s0 {

        public class RunnableC1348a implements Runnable {

            public final int f79502b;

            public RunnableC1348a(final int val$id) {
                this.f79502b = val$id;
            }

            @Override
            public void run() {
                DecalSettings.this.resolutionID = this.f79502b;
                K8.a.l().k();
                K8.a.B(new com.itsmagic.engine.Engines.Engine.Settings.a());
            }
        }

        public a() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(int id2) {
            K8.a.I(new RunnableC1348a(id2));
        }
    }

    public class b implements h {

        public final com.itsmagic.engine.Engines.Engine.Settings.c f79504a;

        public class a implements Runnable {

            public final Variable f79506b;

            public class RunnableC1349a implements Runnable {
                public RunnableC1349a() {
                }

                @Override
                public void run() {
                    b.this.f79504a.a();
                }
            }

            public a(final Variable val$variable) {
                this.f79506b = val$variable;
            }

            @Override
            public void run() {
                DecalSettings.this.maxDecals = Nc.b.F(1, this.f79506b.int_value, 255);
                while (DecalSettings.this.decals.size() > DecalSettings.this.maxDecals) {
                    DecalSettings.this.decals.remove(DecalSettings.this.decals.size() - 1);
                }
                K8.a.l().k();
                if (b.this.f79504a != null) {
                    N7.c.j0(new RunnableC1349a());
                    K8.a.B(new com.itsmagic.engine.Engines.Engine.Settings.a());
                }
            }
        }

        public b(final com.itsmagic.engine.Engines.Engine.Settings.c val$listener) {
            this.f79504a = val$listener;
        }

        @Override
        public Variable get() {
            return new Variable("", DecalSettings.this.maxDecals + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements e {

        public final String f79509a;

        public final String f79510b;

        public final int f79511c;

        public class a extends AbstractViewOnClickListenerC12733a {

            public final TextView f79513b;

            public final Context f79514c;

            public final ImageView f79515d;

            public class C1350a implements g {
                public C1350a() {
                }

                @Override
                public void b(C13823b file) {
                    final String f10 = (file == null || file.f().isEmpty()) ? "" : file.f();
                    final String w10 = (f10 == null || f10.trim().isEmpty()) ? null : Tc.b.w(f10, true);
                    String str = "Decal [" + c.this.f79511c + "]";
                    if (w10 != null && !w10.trim().isEmpty()) {
                        str = w10 + " [" + c.this.f79511c + "]";
                    }
                    a.this.f79513b.setText(str);
                    a aVar = a.this;
                    c.this.d(aVar.f79514c, aVar.f79515d, f10);
                    final int i10 = c.this.f79511c;
                    K8.a.I(new Runnable() {
                        @Override
                        public final void run() {
                            DecalSettings.c.a.C1350a.this.c(i10, f10, w10);
                        }
                    });
                }

                public final void c(int i10, String str, String str2) {
                    DecalSettings.this.p(i10, str);
                    DecalSettings.this.q(i10, str2);
                    K8.a.l().k();
                    K8.a.B(new com.itsmagic.engine.Engines.Engine.Settings.a());
                }
            }

            public a(final TextView val$tittle, final Context val$context, final ImageView val$colorImage) {
                this.f79513b = val$tittle;
                this.f79514c = val$context;
                this.f79515d = val$colorImage;
            }

            @Override
            public void click(View view) {
                Yc.c.a(".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm", new C1350a());
            }
        }

        public c(final String val$finalName, final String val$ipp, final int val$finalI) {
            this.f79509a = val$finalName;
            this.f79510b = val$ipp;
            this.f79511c = val$finalI;
        }

        public final void d(Context context, ImageView colorImage, String ipp) {
            if (ipp == null || ipp.equals("")) {
                Vc.e.U(colorImage, R.drawable.empty_image);
                return;
            }
            String str = Tc.b.O(ipp) + ".texture";
            if (new File(com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str).exists()) {
                Vc.e.Q(colorImage, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + str, context, R.drawable.empty_image, i.f59186b);
                return;
            }
            Vc.e.Q(colorImage, com.itsmagic.engine.Core.Components.ProjectController.a.S(context) + "/" + ipp, context, R.drawable.empty_image, i.f59186b);
        }

        @Override
        public void onCreate(View view, Context context, C5.b entry) {
            TextView textView = (TextView) view.findViewById(R.id.tittle);
            textView.setText(this.f79509a);
            ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
            d(context, imageView, this.f79510b);
            imageView.setOnClickListener(new a(textView, context, imageView));
        }
    }

    public void e(String ipp) {
        this.decals.add(new Decal(null, ipp));
    }

    public void f(int i10) {
        p(i10, null);
    }

    public C2632k g(C2629h dependencyRequest) {
        String str;
        C2632k c2632k = new C2632k();
        if (this.decals != null) {
            for (int i10 = 0; i10 < this.decals.size(); i10++) {
                Decal decal = this.decals.get(i10);
                if (decal != null && (str = decal.fileIpp) != null && !str.isEmpty()) {
                    c2632k.f9114a.add(str);
                }
            }
        }
        return c2632k;
    }

    public List<C5.b> h(Context context, com.itsmagic.engine.Engines.Engine.Settings.c listener) {
        Decal decal;
        String str;
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(F5.c.v("Resolution", this.resolutionID, new a()));
        int i10 = 0;
        linkedList.add(new C5.b((h) new b(listener), "Max decals", b.a.SLInt, false));
        while (i10 < this.maxDecals) {
            String str2 = "Decal [" + i10 + "]";
            if (this.decals.size() > i10 && (decal = this.decals.get(i10)) != null && (str = decal.name) != null && !str.trim().isEmpty()) {
                str2 = str + " [" + i10 + "]";
            }
            linkedList.add(new C5.b(new c(str2, this.decals.size() > i10 ? r(i10) : null, i10), R.layout.inspector_component_texture, (Object) null));
            i10++;
        }
        linkedList.add(new C5.b("All textures are resized to the resolution of the decals due to the packaging method.\nTexture filter settings are not preserved; use the decalPixel method on shaders if you want.", 12));
        return linkedList;
    }

    public int i() {
        return this.maxDecals;
    }

    public int j() {
        return this.resolutionID;
    }

    public void k() {
        if (this.textures == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            String str = null;
            if (i10 >= this.textures.size()) {
                this.textures = null;
                return;
            }
            String str2 = this.textures.get(i10);
            if (str2 != null && !str2.trim().isEmpty()) {
                str = Tc.b.w(str2, true);
            }
            this.decals.add(new Decal(str, str2));
            i10++;
        }
    }

    public void l(BuildDictionary dictionary) {
        String str;
        BuildDicFile f10;
        if (this.decals != null) {
            for (int i10 = 0; i10 < this.decals.size(); i10++) {
                Decal decal = this.decals.get(i10);
                if (decal != null && (str = decal.fileIpp) != null && !str.isEmpty() && (f10 = dictionary.f(str)) != null) {
                    dictionary.h("REPLACING " + str + " TO " + f10.b());
                    decal.fileIpp = f10.b();
                }
            }
        }
    }

    public void m(int i10) {
        this.decals.remove(i10);
    }

    public void n(int maxDecals) {
        this.maxDecals = Nc.b.F(1, maxDecals, 255);
    }

    public void o(int resolutionID) {
        this.resolutionID = resolutionID;
    }

    public void p(int i10, String ipp) {
        while (this.decals.size() <= i10) {
            this.decals.add(new Decal());
        }
        Decal decal = this.decals.get(i10);
        if (decal == null) {
            this.decals.set(i10, decal);
        }
        decal.fileIpp = ipp;
    }

    public void q(int i10, String name) {
        while (this.decals.size() <= i10) {
            this.decals.add(new Decal());
        }
        Decal decal = this.decals.get(i10);
        if (decal == null) {
            this.decals.set(i10, decal);
        }
        decal.name = name;
    }

    public String r(int i10) {
        Decal decal = this.decals.get(i10);
        if (decal != null) {
            return decal.fileIpp;
        }
        return null;
    }

    public int s() {
        return this.decals.size();
    }
}
