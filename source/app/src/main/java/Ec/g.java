package ec;

import com.google.android.filament.filamat.MaterialBuilder;

public class g {

    public final MaterialBuilder.m f85451a;

    public final MaterialBuilder.l f85452b;

    public final MaterialBuilder.g f85453c;

    public final String f85454d;

    public g(MaterialBuilder.m type, MaterialBuilder.l format, MaterialBuilder.g precision, String name) {
        this.f85451a = type;
        this.f85452b = format;
        this.f85453c = precision;
        this.f85454d = name;
    }

    public MaterialBuilder.l a() {
        return this.f85452b;
    }

    public String b() {
        return this.f85454d;
    }

    public MaterialBuilder.g c() {
        return this.f85453c;
    }

    public MaterialBuilder.m d() {
        return this.f85451a;
    }
}
