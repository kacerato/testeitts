package java.lang;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Objects;
import jdk.internal.loader.BootLoader;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.Reflection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Package.class
 */
public final class Package extends NamedPackage implements AnnotatedElement {
    private final VersionInfo versionInfo;
    private Class<?> packageInfo;

    public String getName() {
        return packageName();
    }

    public String getSpecificationTitle() {
        return this.versionInfo.specTitle;
    }

    public String getSpecificationVersion() {
        return this.versionInfo.specVersion;
    }

    public String getSpecificationVendor() {
        return this.versionInfo.specVendor;
    }

    public String getImplementationTitle() {
        return this.versionInfo.implTitle;
    }

    public String getImplementationVersion() {
        return this.versionInfo.implVersion;
    }

    public String getImplementationVendor() {
        return this.versionInfo.implVendor;
    }

    public boolean isSealed() {
        return module().isNamed() || this.versionInfo.sealBase != null;
    }

    public boolean isSealed(URL url) {
        Objects.requireNonNull(url);
        URL sealBase = null;
        if (this.versionInfo != VersionInfo.NULL_VERSION_INFO) {
            sealBase = this.versionInfo.sealBase;
        } else {
            try {
                URI uri = location();
                sealBase = uri != null ? uri.toURL() : null;
            } catch (MalformedURLException e10) {
            }
        }
        return url.equals(sealBase);
    }

    public boolean isCompatibleWith(String desired) throws NumberFormatException {
        if (this.versionInfo.specVersion == null || this.versionInfo.specVersion.length() < 1) {
            throw new NumberFormatException("Empty version string");
        }
        String[] sa2 = this.versionInfo.specVersion.split("\\.", -1);
        int[] si2 = new int[sa2.length];
        for (int i10 = 0; i10 < sa2.length; i10++) {
            si2[i10] = Integer.parseInt(sa2[i10]);
            if (si2[i10] < 0) {
                throw NumberFormatException.forInputString("" + si2[i10], 10);
            }
        }
        String[] da2 = desired.split("\\.", -1);
        int[] di2 = new int[da2.length];
        for (int i11 = 0; i11 < da2.length; i11++) {
            di2[i11] = Integer.parseInt(da2[i11]);
            if (di2[i11] < 0) {
                throw NumberFormatException.forInputString("" + di2[i11], 10);
            }
        }
        int len = Math.max(di2.length, si2.length);
        int i12 = 0;
        while (i12 < len) {
            int d10 = i12 < di2.length ? di2[i12] : 0;
            int s10 = i12 < si2.length ? si2[i12] : 0;
            if (s10 < d10) {
                return false;
            }
            if (s10 <= d10) {
                i12++;
            } else {
                return true;
            }
        }
        return true;
    }

    @CallerSensitive
    @Deprecated(since = "9")
    public static Package getPackage(String name) {
        ClassLoader l10 = ClassLoader.getClassLoader(Reflection.getCallerClass());
        return l10 != null ? l10.getPackage(name) : BootLoader.getDefinedPackage(name);
    }

    @CallerSensitive
    public static Package[] getPackages() {
        ClassLoader cl2 = ClassLoader.getClassLoader(Reflection.getCallerClass());
        return cl2 != null ? cl2.getPackages() : (Package[]) BootLoader.packages().toArray(x$0 -> {
            return new Package[x$0];
        });
    }

    public int hashCode() {
        return packageName().hashCode();
    }

    public String toString() {
        String spec;
        String ver;
        String spec2 = this.versionInfo.specTitle;
        String ver2 = this.versionInfo.specVersion;
        if (spec2 != null && !spec2.isEmpty()) {
            spec = ", " + spec2;
        } else {
            spec = "";
        }
        if (ver2 != null && !ver2.isEmpty()) {
            ver = ", version " + ver2;
        } else {
            ver = "";
        }
        return "package " + packageName() + spec + ver;
    }

    private Class<?> getPackageInfo() {
        Class<?> c10;
        if (this.packageInfo == null) {
            String cn2 = packageName() + ".package-info";
            Module module = module();
            ClassLoader loader = module.getClassLoader();
            if (loader != null) {
                c10 = loader.loadClass(module, cn2);
            } else {
                c10 = BootLoader.loadClass(module, cn2);
            }
            if (c10 != null) {
                this.packageInfo = c10;
            } else {
                this.packageInfo = C1PackageInfoProxy.class;
            }
        }
        return this.packageInfo;
    }

    class C1PackageInfoProxy {
        C1PackageInfoProxy(Package this$0) {
            Objects.requireNonNull(this$0);
        }
    }

    @Override
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) getPackageInfo().getAnnotation(cls);
    }

    @Override
    public boolean isAnnotationPresent(Class<? extends Annotation> annotationClass) {
        return super.isAnnotationPresent(annotationClass);
    }

    @Override
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getPackageInfo().getAnnotationsByType(cls);
    }

    @Override
    public Annotation[] getAnnotations() {
        return getPackageInfo().getAnnotations();
    }

    @Override
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        return (A) getPackageInfo().getDeclaredAnnotation(cls);
    }

    @Override
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) getPackageInfo().getDeclaredAnnotationsByType(cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return getPackageInfo().getDeclaredAnnotations();
    }

    public Package(String name, String spectitle, String specversion, String specvendor, String impltitle, String implversion, String implvendor, URL sealbase, ClassLoader loader) {
        super((String) Objects.requireNonNull(name), loader != null ? loader.getUnnamedModule() : BootLoader.getUnnamedModule());
        this.versionInfo = VersionInfo.getInstance(spectitle, specversion, specvendor, impltitle, implversion, implvendor, sealbase);
    }

    public Package(String name, Module module) {
        super(name, module);
        this.versionInfo = VersionInfo.NULL_VERSION_INFO;
    }

    static class VersionInfo {
        static final VersionInfo NULL_VERSION_INFO = new VersionInfo(null, null, null, null, null, null, null);
        private final String specTitle;
        private final String specVersion;
        private final String specVendor;
        private final String implTitle;
        private final String implVersion;
        private final String implVendor;
        private final URL sealBase;

        static VersionInfo getInstance(String spectitle, String specversion, String specvendor, String impltitle, String implversion, String implvendor, URL sealbase) {
            if (spectitle == null && specversion == null && specvendor == null && impltitle == null && implversion == null && implvendor == null && sealbase == null) {
                return NULL_VERSION_INFO;
            }
            return new VersionInfo(spectitle, specversion, specvendor, impltitle, implversion, implvendor, sealbase);
        }

        private VersionInfo(String spectitle, String specversion, String specvendor, String impltitle, String implversion, String implvendor, URL sealbase) {
            this.implTitle = impltitle;
            this.implVersion = implversion;
            this.implVendor = implvendor;
            this.specTitle = spectitle;
            this.specVersion = specversion;
            this.specVendor = specvendor;
            this.sealBase = sealbase;
        }
    }
}
