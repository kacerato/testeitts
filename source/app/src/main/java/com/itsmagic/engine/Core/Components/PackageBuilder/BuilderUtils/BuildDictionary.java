package com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils;

import Tc.b;
import android.util.Log;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Utils.C;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import t3.C15377a;

public class BuildDictionary implements Serializable {

    public static boolean f72537c = false;

    @Expose
    private List<BuildDicFile> files = new LinkedList();

    public final Map<String, BuildDicFile> f72538b = new HashMap();

    static {
        if (C15377a.f109719g.booleanValue()) {
            f72537c = false;
        }
    }

    public synchronized boolean a(BuildDicFile bdf) {
        String o10 = b.o(bdf.c());
        if (this.f72538b.containsKey(o10)) {
            C.b("Duplicate insertion:" + o10);
            return false;
        }
        bdf.f(o10);
        this.f72538b.put(o10, bdf);
        if (this.files.add(bdf)) {
            return true;
        }
        h("CREATING FILE RESULT ERROR");
        return false;
    }

    public void b(String originalName) {
        BuildDicFile d10;
        if (originalName == null || originalName.isEmpty() || (d10 = d(b.o(originalName))) == null) {
            return;
        }
        this.files.remove(d10);
    }

    public void c(String newName) {
        BuildDicFile e10;
        if (newName == null || newName.isEmpty() || (e10 = e(b.o(newName))) == null) {
            return;
        }
        this.files.remove(e10);
    }

    public final BuildDicFile d(String originalName) {
        String o10 = b.o(originalName);
        for (int i10 = 0; i10 < this.files.size(); i10++) {
            BuildDicFile buildDicFile = this.files.get(i10);
            if (i(b.o(buildDicFile.c()), o10)) {
                buildDicFile.a();
                return buildDicFile;
            }
        }
        return null;
    }

    public final BuildDicFile e(String newName) {
        String o10 = b.o(newName);
        for (int i10 = 0; i10 < this.files.size(); i10++) {
            BuildDicFile buildDicFile = this.files.get(i10);
            if (i(b.o(buildDicFile.b()), o10)) {
                buildDicFile.a();
                return buildDicFile;
            }
        }
        return null;
    }

    public BuildDicFile f(String originalName) {
        if (originalName == null || originalName.isEmpty() || originalName.contains("@@ASSET@@")) {
            return null;
        }
        String o10 = b.o(originalName);
        BuildDicFile d10 = d(o10);
        if (d10 != null) {
            return d10;
        }
        h("SearchError: " + o10 + " NOT FOUND");
        return null;
    }

    public List<BuildDicFile> g() {
        return this.files;
    }

    public void h(String message) {
        if (f72537c) {
            Log.d("APKB", message);
        }
    }

    public final boolean i(String pathA, String pathB) {
        if (pathA == null || pathB == null) {
            return false;
        }
        if (pathA.equalsIgnoreCase(pathB)) {
            return true;
        }
        String k10 = k(pathA);
        if (k10 != null && k10.equalsIgnoreCase(pathB)) {
            return true;
        }
        String k11 = k(pathB);
        if (k11 == null || !pathA.equalsIgnoreCase(k11)) {
            return (k10 == null || k11 == null || !k10.equalsIgnoreCase(k11)) ? false : true;
        }
        return true;
    }

    public void j(List<BuildDicFile> files) {
        this.files.removeAll(files);
    }

    public final String k(String path) {
        String V10;
        if (path == null || (V10 = b.V(path)) == null || V10.equals(path)) {
            return null;
        }
        return V10;
    }
}
