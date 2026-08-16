package org.openjdk.javax.tools;

import java.lang.reflect.InvocationTargetException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;

public class ToolProvider {
    private static final String systemDocumentationToolModule = "jdk.javadoc";
    private static final String systemDocumentationToolName = "jdk.javadoc.internal.api.JavadocTool";
    private static final String systemJavaCompilerModule = "jdk.compiler";
    private static final String systemJavaCompilerName = "org.openjdk.tools.javac.api.JavacTool";
    private static final boolean useLegacy;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("java.lang.Module");
        } catch (Throwable unused) {
            cls = null;
        }
        useLegacy = cls == null;
    }

    public static DocumentationTool getSystemDocumentationTool() {
        return (DocumentationTool) getSystemTool(DocumentationTool.class, systemDocumentationToolModule, systemDocumentationToolName);
    }

    public static JavaCompiler getSystemJavaCompiler() {
        return (JavaCompiler) getSystemTool(JavaCompiler.class, systemJavaCompilerModule, systemJavaCompilerName);
    }

    private static <T> T getSystemTool(Class<T> cls, String str, String str2) {
        if (useLegacy) {
            try {
                return (T) Class.forName(str2, true, ClassLoader.getSystemClassLoader()).asSubclass(cls).getConstructor(null).newInstance(null);
            } catch (ReflectiveOperationException e10) {
                throw new Error(e10);
            }
        }
        try {
            Iterator it = ServiceLoader.load(cls, ClassLoader.getSystemClassLoader()).iterator();
            while (it.hasNext()) {
                T t10 = (T) it.next();
                if (matches(t10, str)) {
                    return t10;
                }
            }
            return null;
        } catch (ServiceConfigurationError e11) {
            throw new Error(e11);
        }
    }

    @Deprecated
    public static ClassLoader getSystemToolClassLoader() {
        return null;
    }

    public static Boolean lambda$matches$0(Object obj, String str) {
        try {
            Object invoke = Class.class.getDeclaredMethod("getModule", null).invoke(obj.getClass(), null);
            return Boolean.valueOf(str.equals((String) invoke.getClass().getDeclaredMethod("getName", null).invoke(invoke, null)));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return Boolean.FALSE;
        }
    }

    private static <T> boolean matches(final T t10, final String str) {
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction() {
            @Override
            public final Object run() {
                Boolean lambda$matches$0;
                lambda$matches$0 = ToolProvider.lambda$matches$0(Object.this, str);
                return lambda$matches$0;
            }
        })).booleanValue();
    }
}
