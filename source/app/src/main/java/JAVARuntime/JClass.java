package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:JClass.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:JClass.class
  classes.dex
 */
@ClassCategory(cat = {"Java"})
public class JClass {
    public transient Class classAddress;
    public transient String name;
    public transient boolean isEngineNative;

    public JClass(Class cls, String str, boolean z10) {
        this.classAddress = cls;
        this.name = str;
        this.isEngineNative = z10;
    }

    public Class getClassAddress() {
        return this.classAddress;
    }

    public String getName() {
        return this.name;
    }

    public boolean isEngineNative() {
        return this.isEngineNative;
    }
}
