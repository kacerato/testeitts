package java.lang.classfile;

import java.io.InputStream;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDescs;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.runtime.ObjectMethods;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;
import jdk.internal.classfile.impl.ClassHierarchyImpl;
import jdk.internal.classfile.impl.Util;

@FunctionalInterface
public interface ClassHierarchyResolver {
    ClassHierarchyInfo getClassInfo(ClassDesc classDesc);

    static ClassHierarchyResolver defaultResolver() {
        return ClassHierarchyImpl.DEFAULT_RESOLVER;
    }

    public interface ClassHierarchyInfo {
        static ClassHierarchyInfo ofClass(ClassDesc superClass) {
            return new ClassHierarchyImpl.ClassHierarchyInfoImpl(superClass, false);
        }

        static ClassHierarchyInfo ofInterface() {
            return new ClassHierarchyImpl.ClassHierarchyInfoImpl(ConstantDescs.CD_Object, true);
        }
    }

    default ClassHierarchyResolver orElse(final ClassHierarchyResolver other) {
        Objects.requireNonNull(other);
        return new ClassHierarchyResolver(this) {
            final ClassHierarchyResolver this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
            }

            @Override
            public ClassHierarchyInfo getClassInfo(ClassDesc classDesc) {
                ClassHierarchyInfo chi = this.this$0.getClassInfo(classDesc);
                if (chi == null) {
                    return other.getClassInfo(classDesc);
                }
                return chi;
            }
        };
    }

    default ClassHierarchyResolver cached(Supplier<Map<ClassDesc, ClassHierarchyInfo>> cacheFactory) {
        return new ClassHierarchyImpl.CachedClassHierarchyResolver(this, cacheFactory.get());
    }

    static final class C1Factory extends Record implements Supplier<Map<ClassDesc, ClassHierarchyInfo>> {
        static final C1Factory INSTANCE = new C1Factory();

        C1Factory() {
        }

        @Override
        public final String toString() {
            return (String) ObjectMethods.bootstrap(MethodHandles.lookup(), "toString", MethodType.methodType(String.class, C1Factory.class), C1Factory.class, "").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final int hashCode() {
            return (int) ObjectMethods.bootstrap(MethodHandles.lookup(), "hashCode", MethodType.methodType(Integer.TYPE, C1Factory.class), C1Factory.class, "").dynamicInvoker().invoke(this) /* invoke-custom */;
        }

        @Override
        public final boolean equals(Object o10) {
            return (boolean) ObjectMethods.bootstrap(MethodHandles.lookup(), "equals", MethodType.methodType(Boolean.TYPE, C1Factory.class, Object.class), C1Factory.class, "").dynamicInvoker().invoke(this, o10) /* invoke-custom */;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Map<ClassDesc, ClassHierarchyInfo> get() {
            return new HashMap();
        }
    }

    default ClassHierarchyResolver cached() {
        return cached(C1Factory.INSTANCE);
    }

    static ClassHierarchyResolver ofResourceParsing(Function<ClassDesc, InputStream> classStreamResolver) {
        return new ClassHierarchyImpl.ResourceParsingClassHierarchyResolver((Function) Objects.requireNonNull(classStreamResolver));
    }

    static ClassHierarchyResolver ofResourceParsing(final ClassLoader loader) {
        Objects.requireNonNull(loader);
        return ofResourceParsing(new Function<ClassDesc, InputStream>() {
            @Override
            public InputStream apply(ClassDesc classDesc) {
                return ClassLoader.this.getResourceAsStream(Util.toInternalName(classDesc) + ".class");
            }
        });
    }

    static ClassHierarchyResolver of(Collection<ClassDesc> interfaces, Map<ClassDesc, ClassDesc> classToSuperClass) {
        return new ClassHierarchyImpl.StaticClassHierarchyResolver(interfaces, classToSuperClass);
    }

    static ClassHierarchyResolver ofClassLoading(final ClassLoader loader) {
        Objects.requireNonNull(loader);
        return new ClassHierarchyImpl.ClassLoadingClassHierarchyResolver(new Function<ClassDesc, Class<?>>() {
            @Override
            public Class<?> apply(ClassDesc cd2) {
                try {
                    return Class.forName(Util.toBinaryName(cd2), false, ClassLoader.this);
                } catch (ClassNotFoundException e10) {
                    return null;
                }
            }
        });
    }

    static ClassHierarchyResolver ofClassLoading(final MethodHandles.Lookup lookup) {
        Objects.requireNonNull(lookup);
        return new ClassHierarchyImpl.ClassLoadingClassHierarchyResolver(new Function<ClassDesc, Class<?>>() {
            @Override
            public Class<?> apply(ClassDesc cd2) {
                try {
                    return cd2.resolveConstantDesc(MethodHandles.Lookup.this);
                } catch (IllegalAccessException ex) {
                    throw new IllegalArgumentException(ex);
                } catch (ReflectiveOperationException e10) {
                    return null;
                }
            }
        });
    }
}
