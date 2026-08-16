package org.eclipse.jdt.internal.core;

import android.provider.Telephony;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.internal.core.util.LRUCache;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaModelCache {
    public static boolean DEBUG_CACHE_INSERTIONS = false;
    public static final int DEFAULT_ACCESSRULE_SIZE = 1024;
    public static final int DEFAULT_CHILDREN_SIZE = 5000;
    public static final int DEFAULT_OPENABLE_SIZE = 250;
    public static final int DEFAULT_PKG_SIZE = 500;
    public static final int DEFAULT_PROJECT_SIZE = 5;
    public static final int DEFAULT_ROOT_SIZE = 50;
    public static final String JAR_TYPE_RATIO_PROPERTY = "org.eclipse.jdt.core.javamodelcache.jartyperatio";
    public static final Object NON_EXISTING_JAR_TYPE_INFO = new Object();
    public static final String RATIO_PROPERTY = "org.eclipse.jdt.core.javamodelcache.ratio";
    public static boolean VERBOSE = false;
    protected LRUCache<ClasspathAccessRule, ClasspathAccessRule> accessRuleCache;
    protected Map<IJavaElement, Object> childrenCache;
    protected LRUCache<IJavaElement, Object> jarTypeCache;
    protected double memoryRatio = -1.0d;
    protected JavaElementInfo modelInfo;
    protected ElementCache<ITypeRoot> openableCache;
    protected ElementCache<IPackageFragment> pkgCache;
    protected HashMap<IJavaProject, JavaElementInfo> projectCache;
    protected ElementCache<IPackageFragmentRoot> rootCache;

    public JavaModelCache() {
        double memoryRatio = getMemoryRatio();
        double openableRatio = getOpenableRatio();
        this.projectCache = new HashMap<>(5);
        if (VERBOSE) {
            this.rootCache = new VerboseElementCache((int) (50.0d * memoryRatio), "Root cache");
            this.pkgCache = new VerboseElementCache((int) (500.0d * memoryRatio), "Package cache");
            this.openableCache = new VerboseElementCache((int) (250.0d * memoryRatio * openableRatio), "Openable cache");
        } else {
            this.rootCache = new ElementCache<>((int) (50.0d * memoryRatio));
            this.pkgCache = new ElementCache<>((int) (500.0d * memoryRatio));
            this.openableCache = new ElementCache<>((int) (250.0d * memoryRatio * openableRatio));
        }
        this.childrenCache = new HashMap((int) (memoryRatio * 5000.0d * openableRatio));
        this.accessRuleCache = new LRUCache<>(1024);
        resetJarTypeCache();
    }

    public static String getElementType(IJavaElement iJavaElement) {
        int elementType = iJavaElement.getElementType();
        return elementType != 2 ? elementType != 3 ? elementType != 4 ? elementType != 5 ? elementType != 6 ? "element" : "class file" : "compilation unit" : Telephony.Sms.Intents.EXTRA_PACKAGE_NAME : "root" : "project";
    }

    private double getJarTypeRatio() {
        return getRatioForProperty(JAR_TYPE_RATIO_PROPERTY);
    }

    private double getOpenableRatio() {
        return getRatioForProperty(RATIO_PROPERTY);
    }

    private double getRatioForProperty(String str) {
        String property = System.getProperty(str);
        if (property == null) {
            return 1.0d;
        }
        try {
            return Double.parseDouble(property);
        } catch (NumberFormatException e10) {
            Util.log(e10, "Could not parse value for " + str + ": " + property);
            return 1.0d;
        }
    }

    public IJavaElement getExistingElement(IJavaElement iJavaElement) {
        int elementType = iJavaElement.getElementType();
        return elementType != 3 ? elementType != 4 ? (elementType == 5 || elementType == 6) ? (IJavaElement) this.openableCache.getKey((ITypeRoot) iJavaElement) : iJavaElement : (IJavaElement) this.pkgCache.getKey((IPackageFragment) iJavaElement) : (IJavaElement) this.rootCache.getKey((IPackageFragmentRoot) iJavaElement);
    }

    public Object getInfo(IJavaElement iJavaElement) {
        switch (iJavaElement.getElementType()) {
            case 1:
                return this.modelInfo;
            case 2:
                return this.projectCache.get(iJavaElement);
            case 3:
                return this.rootCache.get((IPackageFragmentRoot) iJavaElement);
            case 4:
                return this.pkgCache.get((IPackageFragment) iJavaElement);
            case 5:
            case 6:
                return this.openableCache.get((ITypeRoot) iJavaElement);
            case 7:
                Object obj = this.jarTypeCache.get(iJavaElement);
                return obj != null ? obj : this.childrenCache.get(iJavaElement);
            default:
                return this.childrenCache.get(iJavaElement);
        }
    }

    public double getMemoryRatio() {
        if (((int) this.memoryRatio) == -1) {
            long maxMemory = Runtime.getRuntime().maxMemory();
            this.memoryRatio = maxMemory == Long.MAX_VALUE ? 4.0d : maxMemory / 6.7108864E7d;
        }
        return this.memoryRatio;
    }

    public Object peekAtInfo(IJavaElement iJavaElement) {
        switch (iJavaElement.getElementType()) {
            case 1:
                return this.modelInfo;
            case 2:
                return this.projectCache.get(iJavaElement);
            case 3:
                return this.rootCache.peek((IPackageFragmentRoot) iJavaElement);
            case 4:
                return this.pkgCache.peek((IPackageFragment) iJavaElement);
            case 5:
            case 6:
                return this.openableCache.peek((ITypeRoot) iJavaElement);
            case 7:
                Object peek = this.jarTypeCache.peek(iJavaElement);
                return peek != null ? peek : this.childrenCache.get(iJavaElement);
            default:
                return this.childrenCache.get(iJavaElement);
        }
    }

    public void putInfo(IJavaElement iJavaElement, Object obj) {
        if (DEBUG_CACHE_INSERTIONS) {
            System.out.println(((Object) Thread.currentThread()) + " cache putInfo (" + getElementType(iJavaElement) + " " + iJavaElement.toString() + ", " + obj + ")");
        }
        switch (iJavaElement.getElementType()) {
            case 1:
                this.modelInfo = (JavaElementInfo) obj;
                return;
            case 2:
                JavaElementInfo javaElementInfo = (JavaElementInfo) obj;
                this.projectCache.put((IJavaProject) iJavaElement, javaElementInfo);
                this.rootCache.ensureSpaceLimit(javaElementInfo, iJavaElement);
                return;
            case 3:
                JavaElementInfo javaElementInfo2 = (JavaElementInfo) obj;
                this.rootCache.put((IPackageFragmentRoot) iJavaElement, javaElementInfo2);
                this.pkgCache.ensureSpaceLimit(javaElementInfo2, iJavaElement);
                return;
            case 4:
                JavaElementInfo javaElementInfo3 = (JavaElementInfo) obj;
                this.pkgCache.put((IPackageFragment) iJavaElement, javaElementInfo3);
                this.openableCache.ensureSpaceLimit(javaElementInfo3, iJavaElement);
                return;
            case 5:
            case 6:
                this.openableCache.put((ITypeRoot) iJavaElement, (JavaElementInfo) obj);
                return;
            default:
                this.childrenCache.put(iJavaElement, obj);
                return;
        }
    }

    public void removeFromJarTypeCache(BinaryType binaryType) {
        this.jarTypeCache.flush(binaryType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeInfo(JavaElement javaElement) {
        if (DEBUG_CACHE_INSERTIONS) {
            String javaElement2 = javaElement.toString();
            System.out.println(((Object) Thread.currentThread()) + " cache removeInfo " + getElementType(javaElement) + " " + javaElement2);
        }
        switch (javaElement.getElementType()) {
            case 1:
                this.modelInfo = null;
                return;
            case 2:
                this.projectCache.remove((IJavaProject) javaElement);
                this.rootCache.resetSpaceLimit((int) (getMemoryRatio() * 50.0d), javaElement);
                return;
            case 3:
                this.rootCache.remove((IPackageFragmentRoot) javaElement);
                this.pkgCache.resetSpaceLimit((int) (getMemoryRatio() * 500.0d), javaElement);
                return;
            case 4:
                this.pkgCache.remove((IPackageFragment) javaElement);
                this.openableCache.resetSpaceLimit((int) (getMemoryRatio() * 250.0d * getOpenableRatio()), javaElement);
                return;
            case 5:
            case 6:
                this.openableCache.remove((ITypeRoot) javaElement);
                return;
            default:
                this.childrenCache.remove(javaElement);
                return;
        }
    }

    public void resetJarTypeCache() {
        this.jarTypeCache = new LRUCache<>((int) (getMemoryRatio() * 250.0d * getJarTypeRatio()));
    }

    public String toString() {
        return toStringFillingRation("");
    }

    public String toStringFillingRation(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("Project cache: ");
        stringBuffer.append(this.projectCache.size());
        stringBuffer.append(" projects\n");
        stringBuffer.append(str);
        stringBuffer.append(this.rootCache.toStringFillingRation("Root cache"));
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append(this.pkgCache.toStringFillingRation("Package cache"));
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append(this.openableCache.toStringFillingRation("Openable cache"));
        stringBuffer.append('\n');
        stringBuffer.append(str);
        stringBuffer.append(this.jarTypeCache.toStringFillingRation("Jar type cache"));
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }
}
