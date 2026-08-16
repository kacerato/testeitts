package e8;

import JAVARuntime.JsonSerializer;
import androidx.annotation.NonNull;

public class c {

    public final Class f85399a;

    public String f85400b;

    public String f85401c;

    public final d f85402d;

    public boolean f85403e;

    public c(Class cls) {
        d dVar = new d();
        this.f85402d = dVar;
        this.f85403e = false;
        this.f85399a = cls;
        this.f85400b = cls.getName();
        this.f85401c = cls.getSimpleName();
        dVar.c(cls);
        if (JsonSerializer.class.isAssignableFrom(cls)) {
            this.f85403e = true;
        }
    }

    public Class a() {
        return this.f85399a;
    }

    public String b() {
        return this.f85400b;
    }

    public String c() {
        Class<?> a10 = a();
        while (a10.isArray()) {
            a10 = a10.getComponentType();
        }
        if (a10.isPrimitive()) {
            return "java.lang";
        }
        String name = a10.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf != -1 ? name.substring(0, lastIndexOf).intern() : "";
    }

    public String d() {
        return this.f85401c;
    }

    public d e() {
        return this.f85402d;
    }

    public boolean f() {
        return this.f85403e;
    }

    @NonNull
    public String toString() {
        return d();
    }
}
