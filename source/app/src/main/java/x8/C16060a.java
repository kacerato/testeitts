package x8;

import com.itsmagic.engine.Core.Components.ProjectController.Utils.ProjectVersion;
import java.io.File;

public class C16060a {

    public String f128010a;

    public int f128011b;

    public long f128012c;

    public File f128013d;

    public ProjectVersion f128014e;

    public String f128015f;

    public String f128016g;

    public C16060a(String tittle) {
        this.f128010a = tittle;
        this.f128011b = 0;
    }

    public File a() {
        return this.f128013d;
    }

    public ProjectVersion b() {
        return this.f128014e;
    }

    public long c() {
        return this.f128012c;
    }

    public String d() {
        return this.f128010a;
    }

    public int e() {
        return this.f128011b;
    }

    public void f(File file) {
        this.f128013d = file;
    }

    public void g(ProjectVersion projectVersion) {
        this.f128014e = projectVersion;
    }

    public void h(long size) {
        this.f128012c = size;
    }

    public void i(String tittle) {
        this.f128010a = tittle;
    }

    public void j(int type) {
        this.f128011b = type;
    }

    public C16060a(String tittle, int type) {
        this.f128010a = tittle;
        this.f128011b = type;
    }

    public C16060a(String tittle, int type, long size, File file, ProjectVersion projectVersion) {
        this.f128010a = tittle;
        this.f128011b = type;
        this.f128012c = size;
        this.f128013d = file;
        this.f128014e = projectVersion;
    }
}
