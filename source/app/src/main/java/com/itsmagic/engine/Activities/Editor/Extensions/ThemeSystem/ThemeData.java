package com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem;

import Ic.InterfaceC2638q;
import android.graphics.Color;
import android.util.Log;
import com.google.gson.annotations.Expose;
import java.util.HashMap;
import java.util.function.BiConsumer;
import yd.C16181m;

@InterfaceC2638q
public class ThemeData {
    private static final Ac.b sharpOHString = new Ac.b(C16181m.f130230g);

    @Expose
    private final HashMap<Ac.b, Ac.b> baseColors = new HashMap<>();

    @Expose
    private final HashMap<Ac.b, Ac.b> entries = new HashMap<>();
    private String fileName;

    @Expose
    private String name;

    public class a implements BiConsumer<Ac.b, Ac.b> {
        public a() {
        }

        @Override
        public void accept(Ac.b tag, Ac.b value) {
            Log.d("LanguageDump(" + ThemeData.this.fileName + ")", "[" + ((Object) tag) + "]:(" + value.toString() + ") hash:(" + tag.hashCode() + ")");
        }
    }

    public class b implements BiConsumer<Ac.b, Ac.b> {

        public final ThemeData f70700a;

        public b(final ThemeData val$c) {
            this.f70700a = val$c;
        }

        @Override
        public void accept(Ac.b tag, Ac.b value) {
            this.f70700a.j(tag, value);
        }
    }

    public int b() {
        return this.baseColors.size();
    }

    public boolean c(Ac.b tag) {
        return this.entries.containsKey(tag);
    }

    public void d() {
        this.entries.forEach(new a());
    }

    public int e() {
        return this.entries.size();
    }

    public int f(Ac.b tag) {
        Ac.b bVar = this.entries.get(tag);
        if (bVar == null) {
            throw new RuntimeException("Tag not found " + ((Object) tag));
        }
        if (bVar.F0(sharpOHString)) {
            try {
                return Color.parseColor(bVar.toString());
            } catch (Exception e10) {
                throw new RuntimeException("Failed to convert to color the value of entry:" + ((Object) tag) + " with color value:" + ((Object) bVar), e10);
            }
        }
        Ac.b bVar2 = this.baseColors.get(bVar);
        if (bVar2 == null) {
            throw new RuntimeException("baseColor not found " + ((Object) tag));
        }
        try {
            return Color.parseColor(bVar2.toString());
        } catch (Exception e11) {
            throw new RuntimeException("Failed to convert to color the value of entry:" + ((Object) tag) + " with color value:" + ((Object) bVar2), e11);
        }
    }

    public String g() {
        return this.fileName;
    }

    public String h() {
        return this.name;
    }

    public ThemeData i() {
        ThemeData themeData = new ThemeData();
        themeData.k(g());
        this.entries.forEach(new b(themeData));
        return themeData;
    }

    public void j(Ac.b tag, Ac.b value) {
        this.entries.put(tag, value);
    }

    public void k(String fileName) {
        this.fileName = fileName;
    }

    public void l(String name) {
        this.name = name;
    }

    public int m(Ac.b tag) {
        try {
            return f(tag);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }
}
