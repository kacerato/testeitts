package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.i;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.r;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class ImportedPackage {

    public static final String f70106a = ".ipm";

    @Expose
    private final List<SFile> importedFiles = new SteppedArrayList();

    @Expose
    private String name;

    @Expose
    private String packID;

    @Expose
    private int version;

    public static class SFile {

        @Expose
        final List<SFile> files = new SteppedArrayList();

        @Expose
        String name;

        @Expose
        String originalPath;

        public SFile(String name, String originalPath) {
            this.name = name;
            this.originalPath = originalPath;
        }

        public void a(r.b f10) {
            SFile sFile = new SFile(f10.getName(), f10.i());
            c(sFile);
            for (int i10 = 0; i10 < f10.h(); i10++) {
                sFile.a(f10.f(i10));
            }
        }

        public void b(r.b f10, a filter) {
            SFile sFile = new SFile(f10.getName(), f10.i());
            c(sFile);
            for (int i10 = 0; i10 < f10.h(); i10++) {
                r.b f11 = f10.f(i10);
                if (filter.b(f11)) {
                    sFile.b(f11, filter);
                }
            }
        }

        public void c(SFile f10) {
            this.files.add(f10);
        }

        public SFile d(int i10) {
            return this.files.get(i10);
        }

        public int e() {
            return this.files.size();
        }

        public String f() {
            return this.name;
        }

        public String g() {
            return this.originalPath;
        }
    }

    public interface a {
        boolean b(r.b file);
    }

    @Deprecated
    public ImportedPackage() {
    }

    public void a(List<i.j> children) {
        for (i.j jVar : children) {
            b(new SFile(jVar.d(), jVar.c()));
            a(jVar.f70322d);
        }
    }

    public void b(SFile f10) {
        this.importedFiles.add(f10);
    }

    public void c(r.b f10) {
        SFile sFile = new SFile(f10.getName(), f10.i());
        b(sFile);
        for (int i10 = 0; i10 < f10.h(); i10++) {
            sFile.a(f10.f(i10));
        }
    }

    public void d(r.b f10, a filter) {
        SFile sFile = new SFile(f10.getName(), f10.i());
        b(sFile);
        for (int i10 = 0; i10 < f10.h(); i10++) {
            r.b f11 = f10.f(i10);
            if (filter.b(f11)) {
                sFile.b(f11, filter);
            }
        }
    }

    public void e(i.C1064i data) {
        for (i.j jVar : data.b()) {
            b(new SFile(jVar.d(), jVar.c()));
            a(jVar.f70322d);
        }
    }

    public void f(List<r.b> files) {
        for (int i10 = 0; i10 < files.size(); i10++) {
            c(files.get(i10));
        }
    }

    public void g(List<r.b> files, a filter) {
        if (files != null) {
            for (int i10 = 0; i10 < files.size(); i10++) {
                r.b bVar = files.get(i10);
                if (filter.b(bVar)) {
                    d(bVar, filter);
                }
            }
        }
    }

    public SFile h(int i10) {
        return this.importedFiles.get(i10);
    }

    public int i() {
        return this.importedFiles.size();
    }

    public String j() {
        return this.name;
    }

    public String k() {
        return this.packID;
    }

    public int l() {
        return this.version;
    }

    public void m(String name) {
        this.name = name;
    }

    public void n(int versionCode) {
        this.version = versionCode;
    }

    public ImportedPackage(String packID, String name, int version) {
        this.packID = packID;
        this.name = name;
        this.version = version;
    }
}
