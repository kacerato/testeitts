package com.itsmagic.engine.Engines.Engine.ImGUI.Utils;

import Bb.e;
import C5.b;
import D5.h;
import Ic.C2629h;
import Ic.C2632k;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import ub.g;
import ub.p;
import yb.C16165b;

public class UIImageHandler implements Serializable {

    public String f78332c;

    public p f78334e;

    @Expose
    private boolean force9patch;

    public transient Runnable f78336g;

    @Expose
    private String imageFile;

    @Expose
    private int spriteIndex = 0;

    public boolean f78331b = false;

    public String f78333d = null;

    public boolean f78335f = false;

    public final e f78337h = new a();

    public class a implements e {
        public a() {
        }

        @Override
        public void b() {
            UIImageHandler.this.r();
        }
    }

    public class b implements h {

        public class a implements Runnable {

            public final Variable f78340b;

            public a(final Variable val$variable) {
                this.f78340b = val$variable;
            }

            @Override
            public void run() {
                UIImageHandler.this.v(this.f78340b.str_value);
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("temp", UIImageHandler.this.imageFile + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f78343b;

            public a(final Variable val$variable) {
                this.f78343b = val$variable;
            }

            @Override
            public void run() {
                UIImageHandler.this.u(this.f78343b.booolean_value.booleanValue());
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIImageHandler.this.force9patch + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements h {

        public class a implements Runnable {

            public final Variable f78346b;

            public a(final Variable val$variable) {
                this.f78346b = val$variable;
            }

            @Override
            public void run() {
                UIImageHandler.this.w(this.f78346b.int_value);
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", UIImageHandler.this.spriteIndex + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public UIImageHandler clone() {
        UIImageHandler uIImageHandler = new UIImageHandler();
        uIImageHandler.imageFile = this.imageFile;
        uIImageHandler.force9patch = this.force9patch;
        uIImageHandler.spriteIndex = this.spriteIndex;
        return uIImageHandler;
    }

    public void f(Runnable onRequestDrawRunnable) {
        this.f78336g = onRequestDrawRunnable;
        if (this.f78335f) {
            return;
        }
        this.f78335f = true;
        y();
    }

    public C2632k g(C2629h dependencyRequest) {
        String str = this.imageFile;
        if (!this.f78331b && str != null && str.startsWith("@@UIG@@")) {
            str = H3.h.G1(this.imageFile.substring(7));
            this.f78332c = str;
            this.f78331b = true;
        }
        if (this.f78331b) {
            str = this.f78332c;
        }
        C2632k c2632k = new C2632k();
        c2632k.f9114a.add(str);
        return c2632k;
    }

    public String h() {
        return this.imageFile;
    }

    public List<C5.b> i(String title, Context context) {
        return k(title, context, true, false);
    }

    public List<C5.b> j(String title, Context context, boolean display9Patch) {
        return k(title, context, display9Patch, false);
    }

    public List<C5.b> k(String title, Context context, boolean display9Patch, boolean forceShowSpriteIndex) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(new C5.b(new b(), title, b.a.UITexture, context));
        if (display9Patch) {
            linkedList.add(new C5.b(new c(), "Force 9-patch", b.a.SLBoolean));
        }
        if (g.x0(this.f78334e) || forceShowSpriteIndex) {
            linkedList.add(new C5.b(new d(), "Sprite index", b.a.SLInt));
        }
        return linkedList;
    }

    public int l() {
        return this.spriteIndex;
    }

    public Rect m() {
        p pVar = this.f78334e;
        if (pVar == null || !(pVar instanceof g) || ((g) pVar).u0() == null || ((g) this.f78334e).u0().type != TextureConfig.f.Sprite || ((g) this.f78334e).u0().v() == null || ((g) this.f78334e).u0().v().C() <= 0) {
            return null;
        }
        return Rect.a(((g) this.f78334e).u0().v().B(Nc.b.F(0, this.spriteIndex, r0.v().C() - 1)));
    }

    public p n() {
        return this.f78334e;
    }

    public boolean o() {
        if (this.force9patch) {
            return true;
        }
        p pVar = this.f78334e;
        if (pVar != null) {
            return pVar.B();
        }
        return false;
    }

    public boolean p() {
        return this.force9patch;
    }

    public void q() {
        if (this.f78335f) {
            return;
        }
        this.f78335f = true;
        y();
    }

    public final void r() {
        Runnable runnable = this.f78336g;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void s(BuildDictionary dictionary) {
        String str = this.imageFile;
        if (!this.f78331b && str != null && str.startsWith("@@UIG@@")) {
            str = H3.h.G1(this.imageFile.substring(7));
            this.f78332c = str;
            this.f78331b = true;
        }
        if (this.f78331b) {
            str = this.f78332c;
        }
        BuildDicFile f10 = dictionary.f(str);
        if (f10 != null) {
            dictionary.h("UIImageHandler: REPLACING " + str + " TO " + f10.b());
            this.imageFile = f10.b();
        }
    }

    public void u(boolean force9patch) {
        this.force9patch = force9patch;
        r();
    }

    public void v(String imageFile) {
        this.imageFile = imageFile;
        this.f78334e = null;
        this.f78331b = false;
        this.f78332c = null;
        y();
        r();
    }

    public void w(int spriteIndex) {
        boolean z10 = this.spriteIndex != spriteIndex;
        this.spriteIndex = spriteIndex;
        if (z10) {
            r();
        }
    }

    public void x(p texture) {
        this.f78334e = texture;
        if (texture instanceof g) {
            this.imageFile = ((g) texture).getFile();
        } else if (texture != null) {
            this.imageFile = "@@";
        }
        this.f78333d = this.imageFile;
        this.f78331b = false;
        this.f78332c = null;
        r();
    }

    public final void y() {
        p pVar = this.f78334e;
        if (pVar == null) {
            String str = this.imageFile;
            if (str == null || str.isEmpty()) {
                this.f78334e = null;
                this.f78333d = null;
            } else {
                String str2 = this.imageFile;
                if (!this.f78331b && str2.startsWith("@@UIG@@")) {
                    str2 = H3.h.G1(this.imageFile.substring(7));
                    this.f78332c = str2;
                    this.f78331b = true;
                }
                if (this.f78331b) {
                    str2 = this.f78332c;
                }
                if (str2 == null || str2.isEmpty()) {
                    this.f78334e = null;
                    this.f78333d = null;
                } else {
                    String str3 = this.f78333d;
                    if (str3 == null || !str3.equals(str2)) {
                        this.f78333d = str2;
                        g u10 = C16165b.u(str2);
                        this.f78334e = u10;
                        if (u10 != null) {
                            u10.e(this.f78337h);
                        }
                    }
                }
            }
        }
        if (pVar != this.f78334e) {
            if (pVar != null) {
                pVar.T(this.f78337h);
            }
            r();
        }
    }
}
