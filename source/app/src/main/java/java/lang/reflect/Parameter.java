package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AccessFlag;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import sun.reflect.annotation.AnnotationSupport;
import w2.C15883c;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Parameter.class
 */
public final class Parameter implements AnnotatedElement {
    private final String name;
    private final int modifiers;
    private final Executable executable;
    private final int index;
    private volatile transient Type parameterTypeCache;
    private volatile transient Class<?> parameterClassCache;
    private transient Map<Class<? extends Annotation>, Annotation> declaredAnnotations;

    public Parameter(String name, int modifiers, Executable executable, int index) {
        this.name = name;
        this.modifiers = modifiers;
        this.executable = executable;
        this.index = index;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Parameter) {
            Parameter other = (Parameter) obj;
            if (other.executable.equals(this.executable) && other.index == this.index) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.executable.hashCode() ^ this.index;
    }

    public boolean isNamePresent() {
        return this.executable.hasRealParameterData() && this.name != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Type type = getParameterizedType();
        String typename = type.getTypeName();
        sb2.append(Modifier.toString(getModifiers()));
        if (0 != this.modifiers) {
            sb2.append(C15883c.f126249O);
        }
        if (isVarArgs()) {
            sb2.append(typename.replaceFirst("\\[\\]$", "..."));
        } else {
            sb2.append(typename);
        }
        sb2.append(C15883c.f126249O);
        sb2.append(getName());
        return sb2.toString();
    }

    public Executable getDeclaringExecutable() {
        return this.executable;
    }

    public int getModifiers() {
        return this.modifiers;
    }

    public Set<AccessFlag> accessFlags() {
        return AccessibleObject.reflectionFactory.parseAccessFlags(getModifiers(), AccessFlag.Location.METHOD_PARAMETER, getDeclaringExecutable().getDeclaringClass());
    }

    public String getName() {
        if (this.name == null || this.name.isEmpty()) {
            return "arg" + this.index;
        }
        return this.name;
    }

    public String getRealName() {
        return this.name;
    }

    public Type getParameterizedType() {
        Type tmp = this.parameterTypeCache;
        if (null == tmp) {
            tmp = this.executable.getAllGenericParameterTypes()[this.index];
            this.parameterTypeCache = tmp;
        }
        return tmp;
    }

    public Class<?> getType() {
        Class<?> tmp = this.parameterClassCache;
        if (null == tmp) {
            tmp = this.executable.getSharedParameterTypes()[this.index];
            this.parameterClassCache = tmp;
        }
        return tmp;
    }

    public AnnotatedType getAnnotatedType() {
        return this.executable.getAnnotatedParameterTypes()[this.index];
    }

    public boolean isImplicit() {
        return Modifier.isMandated(getModifiers());
    }

    public boolean isSynthetic() {
        return Modifier.isSynthetic(getModifiers());
    }

    public boolean isVarArgs() {
        return this.executable.isVarArgs() && this.index == this.executable.getParameterCount() - 1;
    }

    @Override
    public <T extends Annotation> T getAnnotation(Class<T> annotationClass) {
        Objects.requireNonNull(annotationClass);
        return annotationClass.cast(declaredAnnotations().get(annotationClass));
    }

    @Override
    public <T extends Annotation> T[] getAnnotationsByType(Class<T> cls) {
        Objects.requireNonNull(cls);
        return (T[]) AnnotationSupport.getDirectlyAndIndirectlyPresent(declaredAnnotations(), cls);
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return this.executable.getParameterAnnotations()[this.index];
    }

    @Override
    public <T extends Annotation> T getDeclaredAnnotation(Class<T> cls) {
        return (T) getAnnotation(cls);
    }

    @Override
    public <T extends Annotation> T[] getDeclaredAnnotationsByType(Class<T> cls) {
        return (T[]) getAnnotationsByType(cls);
    }

    @Override
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    private synchronized Map<Class<? extends Annotation>, Annotation> declaredAnnotations() {
        if (null == this.declaredAnnotations) {
            this.declaredAnnotations = new HashMap();
            for (Annotation a10 : getDeclaredAnnotations()) {
                this.declaredAnnotations.put(a10.annotationType(), a10);
            }
        }
        return this.declaredAnnotations;
    }
}
