package ec;

import com.google.android.filament.filamat.MaterialBuilder;

public class f {

    public final MaterialBuilder.r f85447a;

    public final String f85448b;

    public MaterialBuilder.g f85449c;

    public final int f85450d;

    public f(MaterialBuilder.r type, String name) {
        this.f85449c = MaterialBuilder.g.DEFAULT;
        this.f85447a = type;
        this.f85448b = name;
        this.f85450d = -1;
    }

    public String a() {
        return this.f85448b;
    }

    public MaterialBuilder.g b() {
        return this.f85449c;
    }

    public int c() {
        return this.f85450d;
    }

    public MaterialBuilder.r d() {
        return this.f85447a;
    }

    public f(MaterialBuilder.r type, MaterialBuilder.g precision, String name) {
        MaterialBuilder.g gVar = MaterialBuilder.g.DEFAULT;
        this.f85448b = name;
        this.f85447a = type;
        this.f85449c = precision;
        this.f85450d = -1;
    }

    public f(MaterialBuilder.r type, String name, MaterialBuilder.g precision) {
        MaterialBuilder.g gVar = MaterialBuilder.g.DEFAULT;
        this.f85448b = name;
        this.f85447a = type;
        this.f85449c = precision;
        this.f85450d = -1;
    }

    public f(MaterialBuilder.r type, String name, MaterialBuilder.g precision, int size) {
        MaterialBuilder.g gVar = MaterialBuilder.g.DEFAULT;
        this.f85448b = name;
        this.f85447a = type;
        this.f85449c = precision;
        this.f85450d = size;
    }
}
