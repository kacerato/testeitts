package com.itsmagic.engine.Engines.Engine.ImGUI.Utils;

import C5.b;
import D5.h;
import F5.c;
import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.io.InputStream;
import tb.C15391a;

public class UIFontHandler {

    public static final int f78319e = 0;

    public static final int f78320f = 1;

    public static final int f78321g = 2;

    public static final int f78322h = 3;

    public static final int f78323i = 4;

    public static int[] f78324j = {16, 24, 32, 48, 64};

    public C15391a f78325a;

    public C15391a f78326b;

    public transient Runnable f78328d;

    @Expose
    private String fontFile;

    @Expose
    private int resolutionID = 1;

    public String f78327c = "";

    public class a implements h {

        public final c.s0 f78329a;

        public final int f78330b;

        public a(final c.s0 val$listener, final int val$shadowResolutionID) {
            this.f78329a = val$listener;
            this.f78330b = val$shadowResolutionID;
        }

        @Override
        public Variable get() {
            return new Variable("", UIFontHandler.f78324j[this.f78330b] + "x" + UIFontHandler.f78324j[this.f78330b]);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                this.f78329a.b(variable.int_value);
            }
        }
    }

    public interface b {
        void a();

        void b(int id2);
    }

    public static C5.b b(String tittle, int value, c.s0 listener) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 : f78324j) {
            steppedArrayList.add(i10 + "");
        }
        return new C5.b(new a(listener, value), f78324j[value] + "x" + f78324j[value], steppedArrayList, b.a.SLDropdown, tittle);
    }

    public UIFontHandler a() {
        UIFontHandler uIFontHandler = new UIFontHandler();
        uIFontHandler.fontFile = this.fontFile;
        uIFontHandler.resolutionID = this.resolutionID;
        return uIFontHandler;
    }

    public final C15391a c() {
        C15391a c15391a = this.f78326b;
        return (c15391a == null || !c15391a.f()) ? this.f78325a : this.f78326b;
    }

    public C2632k d(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        c2632k.f9114a.add(this.fontFile);
        return c2632k;
    }

    public C15391a e() {
        return c();
    }

    public String f() {
        return this.fontFile;
    }

    public long g() {
        C15391a c10 = c();
        if (c10 != null) {
            return c10.d();
        }
        return 0L;
    }

    public int h() {
        return this.resolutionID;
    }

    public final void i() {
        Runnable runnable = this.f78328d;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void j(BuildDictionary dictionary) {
        BuildDicFile f10 = dictionary.f(this.fontFile);
        if (f10 != null) {
            dictionary.h("UIFontHandler: REPLACING " + this.fontFile + " TO " + f10.b());
            this.fontFile = f10.b();
        }
    }

    public void k(C15391a font) {
        this.f78325a = font;
        if (font != null) {
            this.fontFile = font.b();
        }
        i();
    }

    public void l(String fontFile) {
        this.fontFile = fontFile;
        i();
    }

    public void m(int resolutionID) {
        if (resolutionID < 0 || resolutionID >= f78324j.length) {
            throw new RuntimeException("Invalid resolution ID");
        }
        this.resolutionID = resolutionID;
        i();
    }

    public void n(Runnable onRequestDrawRunnable) {
        this.f78328d = onRequestDrawRunnable;
        C15391a c15391a = this.f78326b;
        if (c15391a != null && c15391a.f()) {
            this.f78325a = this.f78326b;
            this.f78326b = null;
            i();
        }
        int F10 = Nc.b.F(0, this.resolutionID, f78324j.length - 1);
        this.resolutionID = F10;
        int N10 = Nc.b.N(4, f78324j[F10]);
        String str = this.fontFile;
        if (str == null || str.equals(this.f78327c)) {
            C15391a c15391a2 = this.f78325a;
            if (c15391a2 == null || c15391a2.e() != N10) {
                C15391a c15391a3 = this.f78326b;
                C15391a a10 = P9.a.f21183p.a(N10);
                this.f78326b = a10;
                if (a10 != c15391a3) {
                    i();
                    return;
                }
                return;
            }
            return;
        }
        String str2 = this.fontFile;
        this.f78327c = str2;
        C15391a c15391a4 = this.f78325a;
        if (c15391a4 == null) {
            if (str2 == null || str2.isEmpty()) {
                this.f78325a = P9.a.f21183p.a(N10);
                i();
                return;
            }
            String str3 = this.fontFile;
            if (com.itsmagic.engine.Core.Components.ProjectController.a.R() != null && com.itsmagic.engine.Core.Components.ProjectController.a.R().contains("@@ASSET@@")) {
                str3 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R().replace("@@ASSET@@", "") + "/" + str3);
            }
            InputStream o10 = X7.a.o(str3);
            if (o10 != null) {
                this.f78325a = P9.a.f21183p.c(str3, N10);
            } else {
                this.f78325a = P9.a.f21183p.a(N10);
            }
            i();
            if (o10 != null) {
                try {
                    o10.close();
                    return;
                } catch (Error | Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            return;
        }
        if (c15391a4.e() == N10 && this.f78325a.b().equals(this.fontFile)) {
            return;
        }
        String str4 = this.fontFile;
        if (str4 == null || str4.isEmpty()) {
            C15391a c15391a5 = this.f78326b;
            C15391a a11 = P9.a.f21183p.a(N10);
            this.f78326b = a11;
            if (a11 != c15391a5) {
                i();
                return;
            }
            return;
        }
        String str5 = this.fontFile;
        if (com.itsmagic.engine.Core.Components.ProjectController.a.R() != null && com.itsmagic.engine.Core.Components.ProjectController.a.R().contains("@@ASSET@@")) {
            str5 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.R().replace("@@ASSET@@", "") + "/" + str5);
        }
        InputStream o11 = X7.a.o(str5);
        if (o11 != null) {
            C15391a c15391a6 = this.f78326b;
            C15391a c10 = P9.a.f21183p.c(str5, N10);
            this.f78326b = c10;
            if (c10 != c15391a6) {
                i();
            }
        } else {
            C15391a c15391a7 = this.f78326b;
            C15391a a12 = P9.a.f21183p.a(N10);
            this.f78326b = a12;
            if (a12 != c15391a7) {
                i();
            }
        }
        if (o11 != null) {
            try {
                o11.close();
            } catch (Error | Exception e11) {
                e11.printStackTrace();
            }
        }
    }
}
