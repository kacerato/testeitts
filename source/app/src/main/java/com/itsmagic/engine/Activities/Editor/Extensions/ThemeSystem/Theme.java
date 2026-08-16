package com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem;

import Ic.C2636o;
import Ic.InterfaceC2638q;
import N7.f;
import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import android.widget.Toast;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public class Theme {

    public static final AtomicBoolean f70686a;

    public static final AtomicBoolean f70687b;

    public static final CountDownLatch f70688c;

    public static final Object f70689d;

    public static Settings f70690e;

    public static ThemeData f70691f;

    public static ThemeData f70692g;

    public static ThemeData f70693h;

    @InterfaceC2638q
    public static class Settings {

        @Expose
        public String selectedTheme = "Default";
    }

    @InterfaceC2638q
    public static class T {
        public static final Ac.b DROP_LOCATION = Ac.c.a("drop_location");
        public static final Ac.b PANEL = Ac.c.a("panel");
        public static final Ac.b SEMI_CARD = Ac.c.a("semi_card");
        public static final Ac.b CARD = Ac.c.a("card");
        public static final Ac.b PANEL_TOPBAR = Ac.c.a("panel_topbar");
        public static final Ac.b BACKGROUND = Ac.c.a("background");
        public static final Ac.b PRIMARY = Ac.c.a("primary");
        public static final Ac.b PRIMARY_DARK = Ac.c.a("primary_dark");
        public static final Ac.b ACCENT = Ac.c.a("accent");
        public static final Ac.b ACCENT_GREEN = Ac.c.a("accent_green");
        public static final Ac.b ACCENT_GREEN_DARK = Ac.c.a("accent_green_dark");
        public static final Ac.b TREE_LIST_ROW1 = Ac.c.a("tree_list_row1");
        public static final Ac.b TREE_LIST_ROW2 = Ac.c.a("tree_list_row2");
        public static final Ac.b HIGH_TEXT_COLOR = Ac.c.a("high_text_color");
        public static final Ac.b MID_TEXT_COLOR = Ac.c.a("mid_text_color");
        public static final Ac.b CHECKBOX_BACKGROUND = Ac.c.a("checkbox_background");
        public static final Ac.b CHECKBOX_OUTLINE = Ac.c.a("checkbox_outline");
        public static final Ac.b CHECKBOX_CHECKMARK = Ac.c.a("checkbox_checkmark");
        public static final Ac.b PANELS_SPACING = Ac.c.a("panels_spacing");
        public static final Ac.b TERMINAL_BACKGROUND = Ac.c.a("terminal_background");
        public static final Ac.b TERMINAL_TEXT_COLOR = Ac.c.a("terminal_text_color");
        public static final Ac.b INPUT_BACKGROUND = Ac.c.a("input_background");
        public static final Ac.b INPUT_OUTLINE = Ac.c.a("input_outline");
        public static final Ac.b HIGH_ICON_TINT = Ac.c.a("high_icon_tint");
        public static final Ac.b MID_ICON_TINT = Ac.c.a("mid_icon_tint");
        public static final Ac.b SELECTED_ELEMENTS = Ac.c.a("selected_elements");
        public static final Ac.b POPUP_MENU_SEPARATOR = Ac.c.a("popup_menu_separator");
        public static final Ac.b BUTTON_OUTLINE = Ac.c.a("button_outline");
        public static final Ac.b GENERIC_BUTTON = Ac.c.a("generic_button");
        public static final Ac.b GENERIC_BUTTON_OUTLINE = Ac.c.a("generic_button_outline");
        public static final Ac.b ERROR = Ac.c.a("error");
        public static final Ac.b UI_EDITOR_BUTTONS_COLOR = Ac.c.a("ui_editor_buttons_color");
        public static final Ac.b UI_EDITOR_PRESSED_BUTTONS_COLOR = Ac.c.a("ui_editor_pressed_buttons_color");
        public static final Ac.b UI_EDITOR_BUTTONS_TEXT_COLOR = Ac.c.a("ui_editor_buttons_text_color");
        public static final Ac.b UI_EDITOR_BUTTONS_OUTLINE_COLOR = Ac.c.a("ui_editor_buttons_outline_color");
        public static final Ac.b UI_EDITOR_PRESSED_BUTTONS_OUTLINE_COLOR = Ac.c.a("ui_editor_pressed_buttons_outline_color");
        public static final Ac.b UI_EDITOR_BACKGROUND_COLOR = Ac.c.a("ui_editor_background_color");
        public static final Ac.b UI_EDITOR_GRID_COLOR = Ac.c.a("ui_editor_grid_color");
        public static final Ac.b UI_EDITOR_GRID_BACKGROUND = Ac.c.a("ui_editor_grid_background");
        public static final Ac.b NODEGRAPH_NUMBER_COLOR = Ac.c.a("nodegraph_number_color");
        public static final Ac.b NODEGRAPH_STRING_COLOR = Ac.c.a("nodegraph_string_color");
        public static final Ac.b NODEGRAPH_TYPE_COLOR = Ac.c.a("nodegraph_type_color");
        public static final Ac.b NODEGRAPH_VECTOR_COLOR = Ac.c.a("nodegraph_vector_color");
        public static final Ac.b NODEGRAPH_LIST_COLOR = Ac.c.a("nodegraph_list_color");
        public static final Ac.b NODEGRAPH_DYNAMIC_COLOR = Ac.c.a("nodegraph_dynamic_color");
        public static final Ac.b NODEGRAPH_TEXTURE_COLOR = Ac.c.a("nodegraph_texture_color");
        public static final Ac.b NODEGRAPH_CUBEMAP_COLOR = Ac.c.a("nodegraph_cubemap_color");
        public static final Ac.b NODEGRAPH_BRANCH_COLOR = Ac.c.a("nodegraph_branch_color");
        public static final Ac.b NODEGRAPH_SELECTED_BORDER = Ac.c.a("nodegraph_selected_border");
        public static final Ac.b NODEGRAPH_GRID = Ac.c.a("nodegraph_grid");
        public static final Ac.b NODEGRAPH_EVENT_TOPBAR = Ac.c.a("nodegraph_event_topbar");
        public static final Ac.b NODEGRAPH_SEMAPHORE_TOPBAR = Ac.c.a("nodegraph_semaphore_topbar");
        public static final Ac.b NODEGRAPH_BREAK_TOPBAR = Ac.c.a("nodegraph_break_topbar");
        public static final Ac.b ATL_UNSELECTED_KEYFRAME = Ac.c.a("atl_unselected_keyframe");
        public static final Ac.b ATL_SELECTED_KEYFRAME = Ac.c.a("atl_selected_keyframe");
        public static final Ac.b ATL_KEY = Ac.c.a("atl_key");
        public static final Ac.b ATL_BACKGROUND = Ac.c.a("atl_background");
    }

    public class a implements Runnable {
        @Override
        public void run() {
            Theme.f70686a.set(true);
            SteppedArrayList<d> steppedArrayList = new SteppedArrayList();
            List b10 = Theme.b();
            for (int i10 = 0; i10 < b10.size(); i10++) {
                d k10 = Theme.k((String) b10.get(i10));
                if (k10 != null && k10.b()) {
                    steppedArrayList.add(k10);
                }
            }
            if (steppedArrayList.isEmpty()) {
                Theme.t();
                Theme.s();
                Theme.f70686a.set(false);
                Theme.f70687b.set(true);
                Theme.f70688c.countDown();
                return;
            }
            Log.e("ThemeSystem", "BuiltIn theme validation failed for " + steppedArrayList.size() + " theme(s)");
            for (d dVar : steppedArrayList) {
                Log.e("ThemeSystem", "BuiltIn theme [" + dVar.f70695a + "] issues: " + dVar.a());
            }
            throw new RuntimeException("BuiltIn theme validation failed");
        }
    }

    public class b implements Runnable {

        public final String f70694b;

        public b(final String val$theme) {
            this.f70694b = val$theme;
        }

        @Override
        public void run() {
            Context h10 = Theme.h();
            if (h10 != null) {
                Toast.makeText(h10, "Failed to load theme " + this.f70694b + " data is corrupted!", 0).show();
                return;
            }
            Log.e("ThemeSystem", "Failed to load theme " + this.f70694b + " data is corrupted!");
        }
    }

    public class c implements Runnable {
        @Override
        public void run() {
            if (N7.c.M()) {
                if (N7.c.D() != null) {
                    N7.c.D().n0();
                }
                if (N7.c.H() != null) {
                    N7.c.H().z();
                }
            }
        }
    }

    public static class e {

        public final String f70697a;

        public final String f70698b;

        public e(String file, String displayName) {
            this.f70697a = file;
            this.f70698b = displayName;
        }

        public String a() {
            return this.f70698b;
        }

        public String b() {
            return this.f70697a;
        }
    }

    static {
        Thread thread = new Thread(new a());
        thread.setPriority(1);
        thread.start();
        f70686a = new AtomicBoolean(true);
        f70687b = new AtomicBoolean();
        f70688c = new CountDownLatch(1);
        f70689d = new Object();
    }

    public static Context A() {
        if (N7.c.M()) {
            return N7.c.t();
        }
        if (f.c()) {
            return f.b();
        }
        return null;
    }

    public static void B(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (N7.c.M()) {
            N7.c.j0(runnable);
        } else if (f.c()) {
            f.e(runnable);
        } else {
            Log.w("ThemeSystem", "No Main/SideMain available to run UI task.");
        }
    }

    public static void C() {
        synchronized (f70689d) {
            try {
                if (f70690e != null) {
                    X7.a.j(W7.b.f27306f.f2458a.s(A()) + "/settings.config", l().toJson(f70690e));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void D(e theme) {
        if (theme == null) {
            return;
        }
        y();
        o().selectedTheme = theme.b();
        C();
        ThemeData themeData = f70692g;
        try {
            x(theme.b());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        f70693h = themeData;
        B(new c());
    }

    public static ThemeData E(String name) {
        try {
            return u(name);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static List b() {
        return r();
    }

    public static Context h() {
        return A();
    }

    public static int i(Ac.b tag) {
        y();
        if (tag == null) {
            throw new NullPointerException("Tag can`t be null");
        }
        ThemeData themeData = f70692g;
        if (themeData != null && themeData.c(tag)) {
            try {
                return f70692g.f(tag);
            } catch (Exception e10) {
                Log.e("ThemeSystem", "Failed to resolve color tag in active theme: " + ((Object) tag), e10);
            }
        }
        ThemeData themeData2 = f70691f;
        if (themeData2 != null && themeData2.c(tag)) {
            try {
                return f70691f.f(tag);
            } catch (Exception e11) {
                Log.e("ThemeSystem", "Failed to resolve color tag in fallback theme: " + ((Object) tag), e11);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Color tag not found: ");
        sb2.append((Object) tag);
        sb2.append(" at theme ");
        ThemeData themeData3 = f70692g;
        sb2.append(themeData3 != null ? themeData3.g() : "<none>");
        Log.e("ThemeSystem", sb2.toString());
        return 0;
    }

    public static int j(String tag) {
        if (tag == null) {
            return 0;
        }
        return i(new Ac.b(tag));
    }

    public static d k(String name) {
        ThemeData themeData;
        Gson l10 = l();
        String s10 = X7.a.s("@@ASSET@@Editor/Themes/" + name + ".json", A());
        if (s10 == null || s10.isEmpty()) {
            Log.e("ThemeSystem", "Failed to load built-in theme " + name);
            return new d(name, "Failed to load built-in theme");
        }
        try {
            themeData = (ThemeData) l10.fromJson(s10, ThemeData.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            themeData = null;
        }
        if (themeData == null) {
            Log.e("ThemeSystem", "Invalid built-in theme " + name);
            return new d(name, "Invalid built-in theme");
        }
        themeData.k(name);
        C2636o.e(s10, new File(W7.b.f27306f.f2458a.s(A()) + "/" + name + ".json"));
        return new d(name);
    }

    public static Gson l() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().serializeSpecialFloatingPointValues().registerTypeAdapter(Ac.b.class, new OHStringSerializer()).setPrettyPrinting().create();
    }

    public static e m() {
        String str;
        y();
        String str2 = o().selectedTheme;
        ThemeData themeData = f70692g;
        if (themeData == null || (str = themeData.h()) == null || str.trim().isEmpty()) {
            str = str2;
        }
        return new e(str2, str);
    }

    public static String n() {
        y();
        return m().b();
    }

    public static Settings o() {
        Settings settings;
        synchronized (f70689d) {
            try {
                if (f70690e == null) {
                    t();
                }
                settings = f70690e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return settings;
    }

    public static List<String> p() {
        File[] listFiles;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(W7.b.f27306f.f2458a.s(A()) + "/");
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.getName().endsWith(".json")) {
                    steppedArrayList.add(Tc.b.w(file2.getAbsolutePath(), true));
                }
            }
        }
        return steppedArrayList;
    }

    public static List<e> q() {
        File[] listFiles;
        String w10;
        ThemeData E10;
        y();
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(W7.b.f27306f.f2458a.s(A()) + "/");
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.getName().endsWith(".json") && (E10 = E((w10 = Tc.b.w(file2.getAbsolutePath(), true)))) != null) {
                    String h10 = E10.h();
                    if (h10 == null || h10.trim().isEmpty()) {
                        h10 = w10;
                    }
                    steppedArrayList.add(new e(w10, h10));
                }
            }
        }
        return steppedArrayList;
    }

    public static List<String> r() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            Context A10 = A();
            AssetManager assets = A10 != null ? A10.getAssets() : null;
            if (assets != null) {
                String[] list = assets.list("Editor/Themes");
                if (list == null || list.length == 0) {
                    Log.e("ThemeSystem", "Failed to list built-in themes from assets");
                }
                for (String str : list) {
                    if (str != null) {
                        String trim = str.trim();
                        if (trim.endsWith(".json")) {
                            String substring = trim.substring(0, trim.length() - 5);
                            if (!substring.isEmpty()) {
                                steppedArrayList.add(substring);
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            Log.e("ThemeSystem", "Failed to list built-in themes from assets", e10);
        }
        try {
            Collections.sort(steppedArrayList);
        } catch (Exception unused) {
        }
        return steppedArrayList;
    }

    public static void s() {
        Settings settings = f70690e;
        if (settings != null) {
            try {
                x(settings.selectedTheme);
            } catch (Exception e10) {
                f70692g = f70691f;
                e10.printStackTrace();
            }
        } else {
            try {
                x("Default");
            } catch (Exception e11) {
                f70692g = f70691f;
                e11.printStackTrace();
            }
        }
        if (f70692g == null) {
            f70692g = f70691f;
        }
    }

    public static void t() {
        String z10 = X7.a.z(W7.b.f27306f.f2458a.s(A()) + "/settings.config", A());
        if (z10 != null && !z10.isEmpty()) {
            try {
                f70690e = (Settings) l().fromJson(z10, Settings.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                f70690e = null;
            }
        }
        if (f70690e == null) {
            f70690e = new Settings();
            X7.a.j(W7.b.f27306f.f2458a.s(A()) + "/settings.config", l().toJson(f70690e));
        }
    }

    public static ThemeData u(String name) {
        Gson l10 = l();
        String z10 = X7.a.z(W7.b.f27306f.f2458a.s(A()) + "/" + name + ".json", A());
        if (z10 == null || z10.isEmpty()) {
            throw new RuntimeException("Failed to load theme " + name);
        }
        ThemeData themeData = (ThemeData) l10.fromJson(z10, ThemeData.class);
        if (themeData != null) {
            themeData.k(name);
            return themeData;
        }
        throw new RuntimeException("Failed to load theme " + name);
    }

    public static int v(Ac.b tag) {
        ThemeData themeData;
        y();
        if (tag == null) {
            return 0;
        }
        try {
            themeData = f70693h;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (themeData != null && themeData.c(tag)) {
            return f70693h.f(tag);
        }
        ThemeData themeData2 = f70691f;
        if (themeData2 != null && themeData2.c(tag)) {
            return f70691f.f(tag);
        }
        return 0;
    }

    public static int[] w(Ac.b[] tags) {
        y();
        if (f70693h == null || tags == null) {
            return null;
        }
        int[] iArr = new int[tags.length];
        for (int i10 = 0; i10 < tags.length; i10++) {
            iArr[i10] = v(tags[i10]);
        }
        return iArr;
    }

    public static void x(String wantedTheme) {
        List<String> p10 = p();
        if (p10 != null) {
            for (String str : p10) {
                if (str.equalsIgnoreCase(wantedTheme)) {
                    try {
                        f70692g = u(str);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        B(new b(str));
                    }
                }
            }
        }
        try {
            f70691f = u("Default");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (f70692g != null) {
            return;
        }
        throw new IllegalArgumentException("Failed to load theme " + wantedTheme);
    }

    public static void y() {
        if (f70687b.get()) {
            return;
        }
        try {
            f70688c.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public static Activity z() {
        if (N7.c.M()) {
            return N7.c.o();
        }
        if (f.c()) {
            return f.a();
        }
        return null;
    }

    public static class d {

        public final String f70695a;

        public String f70696b;

        public d(String name) {
            this.f70695a = name;
        }

        public String a() {
            String str = this.f70696b;
            return (str == null || str.isEmpty()) ? "" : this.f70696b;
        }

        public boolean b() {
            String str = this.f70696b;
            return (str == null || str.isEmpty()) ? false : true;
        }

        public void c(String error) {
            String str = this.f70696b;
            if (str == null || str.isEmpty()) {
                this.f70696b = error;
            }
        }

        public d(String name, String error) {
            this.f70695a = name;
            this.f70696b = error;
        }
    }
}
