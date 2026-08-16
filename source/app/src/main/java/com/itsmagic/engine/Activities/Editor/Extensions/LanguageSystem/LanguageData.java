package com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem;

import Ic.InterfaceC2638q;
import android.util.Log;
import com.google.gson.annotations.Expose;
import java.util.HashMap;
import java.util.function.BiConsumer;

@InterfaceC2638q
public class LanguageData {

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
            Log.d("LanguageDump(" + LanguageData.this.fileName + ")", "[" + ((Object) tag) + "]:(" + ((Object) value) + ") hash:(" + tag.hashCode() + ")");
        }
    }

    public class b implements BiConsumer<Ac.b, Ac.b> {

        public final LanguageData f70100a;

        public b(final LanguageData val$c) {
            this.f70100a = val$c;
        }

        @Override
        public void accept(Ac.b tag, Ac.b value) {
            this.f70100a.i(tag, value);
        }
    }

    public boolean b(Ac.b tag) {
        return this.entries.containsKey(tag);
    }

    public void c() {
        this.entries.forEach(new a());
    }

    public int d() {
        return this.entries.size();
    }

    public Ac.b e(Ac.b tag) {
        Ac.b bVar = this.entries.get(tag);
        if (bVar != null) {
            return bVar;
        }
        throw new RuntimeException("Tag not found " + ((Object) tag));
    }

    public String f() {
        return this.fileName;
    }

    public String g() {
        return this.name;
    }

    public LanguageData h() {
        LanguageData languageData = new LanguageData();
        languageData.k(f());
        this.entries.forEach(new b(languageData));
        return languageData;
    }

    public void i(Ac.b tag, Ac.b value) {
        this.entries.put(tag, value);
    }

    public void j(String tag, String value) {
        i(new Ac.b(tag), new Ac.b(value));
    }

    public void k(String fileName) {
        this.fileName = fileName;
    }

    public void l(String name) {
        this.name = name;
    }

    public Ac.b m(Ac.b tag) {
        try {
            return this.entries.get(tag);
        } catch (Exception unused) {
            return null;
        }
    }
}
