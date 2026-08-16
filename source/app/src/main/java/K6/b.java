package K6;

import d8.r;
import java.util.List;

public final class b {

    public final k f10882a = new k();

    public final m f10883b = new m();

    public final l f10884c = new l();

    public List<f> a(String fullScript, int lineNumber, List<r> loadedClassList, String className) {
        List<f> c10 = this.f10882a.c(fullScript, lineNumber);
        c10.addAll(this.f10883b.b(loadedClassList, className));
        c10.addAll(this.f10884c.c());
        return e.d(c10);
    }

    public List<f> b(Class<?> cls, boolean isStatic) {
        return this.f10883b.d(cls, isStatic);
    }
}
