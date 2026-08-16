package java.lang.reflect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AccessFlag;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import jdk.internal.access.SharedSecrets;
import jdk.internal.reflect.CallerSensitive;
import jdk.internal.reflect.FieldAccessor;
import jdk.internal.reflect.Reflection;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;
import sun.reflect.annotation.AnnotationParser;
import sun.reflect.annotation.AnnotationSupport;
import sun.reflect.annotation.TypeAnnotation;
import sun.reflect.annotation.TypeAnnotationParser;
import sun.reflect.generics.factory.CoreReflectionFactory;
import sun.reflect.generics.factory.GenericsFactory;
import sun.reflect.generics.repository.FieldRepository;
import sun.reflect.generics.scope.ClassScope;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/Field.class
 */
public final class Field extends AccessibleObject implements Member {
    private final Class<?> clazz;
    private final int slot;
    private final String name;
    private final Class<?> type;
    private final int modifiers;
    private final boolean trustedFinal;
    private final transient String signature;
    private final byte[] annotations;
    private Field root;
    private volatile transient FieldRepository genericInfo;

    @Stable
    private FieldAccessor fieldAccessor;

    @Stable
    private FieldAccessor overrideFieldAccessor;
    private volatile transient Map<Class<? extends Annotation>, Annotation> declaredAnnotations;

    private native byte[] getTypeAnnotationBytes0();

    private String getGenericSignature() {
        return this.signature;
    }

    private GenericsFactory getFactory() {
        Class<?> c10 = getDeclaringClass();
        return CoreReflectionFactory.make(c10, ClassScope.make(c10));
    }

    private FieldRepository getGenericInfo() {
        FieldRepository genericInfo = this.genericInfo;
        if (genericInfo == null) {
            Field root = this.root;
            if (root != null) {
                genericInfo = root.getGenericInfo();
            } else {
                genericInfo = FieldRepository.make(getGenericSignature(), getFactory());
            }
            this.genericInfo = genericInfo;
        }
        return genericInfo;
    }

    Field(Class<?> declaringClass, String name, Class<?> type, int modifiers, boolean trustedFinal, int slot, String signature, byte[] annotations) {
        this.clazz = declaringClass;
        this.name = name;
        this.type = type;
        this.modifiers = modifiers;
        this.trustedFinal = trustedFinal;
        this.slot = slot;
        this.signature = signature;
        this.annotations = annotations;
    }

    public Field copy() {
        if (this.root != null) {
            throw new IllegalArgumentException("Can not copy a non-root Field");
        }
        Field res = new Field(this.clazz, this.name, this.type, this.modifiers, this.trustedFinal, this.slot, this.signature, this.annotations);
        res.root = this;
        res.fieldAccessor = this.fieldAccessor;
        res.overrideFieldAccessor = this.overrideFieldAccessor;
        res.genericInfo = this.genericInfo;
        return res;
    }

    @Override
    @CallerSensitive
    public void setAccessible(boolean flag) {
        if (flag) {
            checkCanSetAccessible(Reflection.getCallerClass());
        }
        setAccessible0(flag);
    }

    @Override
    void checkCanSetAccessible(Class<?> caller) {
        checkCanSetAccessible(caller, this.clazz);
    }

    @Override
    public Class<?> getDeclaringClass() {
        return this.clazz;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public Set<AccessFlag> accessFlags() {
        return reflectionFactory.parseAccessFlags(getModifiers(), AccessFlag.Location.FIELD, getDeclaringClass());
    }

    public boolean isEnumConstant() {
        return (getModifiers() & 16384) != 0;
    }

    @Override
    public boolean isSynthetic() {
        return Modifier.isSynthetic(getModifiers());
    }

    public Class<?> getType() {
        return this.type;
    }

    public Type getGenericType() {
        if (getGenericSignature() != null) {
            return getGenericInfo().getGenericType();
        }
        return getType();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Field)) {
            return false;
        }
        Field other = (Field) obj;
        return getDeclaringClass() == other.getDeclaringClass() && getName() == other.getName() && getType() == other.getType();
    }

    public int hashCode() {
        return getDeclaringClass().getName().hashCode() ^ getName().hashCode();
    }

    public String toString() {
        int mod = getModifiers();
        return (mod == 0 ? "" : Modifier.toString(mod) + " ") + getType().getTypeName() + " " + getDeclaringClass().getTypeName() + "." + getName();
    }

    @Override
    String toShortString() {
        return "field " + getDeclaringClass().getTypeName() + "." + getName();
    }

    public String toGenericString() {
        int mod = getModifiers();
        Type fieldType = getGenericType();
        return (mod == 0 ? "" : Modifier.toString(mod) + " ") + fieldType.getTypeName() + " " + getDeclaringClass().getTypeName() + "." + getName();
    }

    @ForceInline
    @CallerSensitive
    public Object get(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().get(obj);
        }
        return getOverrideFieldAccessor().get(obj);
    }

    @ForceInline
    @CallerSensitive
    public boolean getBoolean(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getBoolean(obj);
        }
        return getOverrideFieldAccessor().getBoolean(obj);
    }

    @ForceInline
    @CallerSensitive
    public byte getByte(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getByte(obj);
        }
        return getOverrideFieldAccessor().getByte(obj);
    }

    @ForceInline
    @CallerSensitive
    public char getChar(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getChar(obj);
        }
        return getOverrideFieldAccessor().getChar(obj);
    }

    @ForceInline
    @CallerSensitive
    public short getShort(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getShort(obj);
        }
        return getOverrideFieldAccessor().getShort(obj);
    }

    @ForceInline
    @CallerSensitive
    public int getInt(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getInt(obj);
        }
        return getOverrideFieldAccessor().getInt(obj);
    }

    @ForceInline
    @CallerSensitive
    public long getLong(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getLong(obj);
        }
        return getOverrideFieldAccessor().getLong(obj);
    }

    @ForceInline
    @CallerSensitive
    public float getFloat(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getFloat(obj);
        }
        return getOverrideFieldAccessor().getFloat(obj);
    }

    @ForceInline
    @CallerSensitive
    public double getDouble(Object obj) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            return getFieldAccessor().getDouble(obj);
        }
        return getOverrideFieldAccessor().getDouble(obj);
    }

    @ForceInline
    @CallerSensitive
    public void set(Object obj, Object value) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().set(obj, value);
            return;
        }
        getOverrideFieldAccessor().set(obj, value);
    }

    @ForceInline
    @CallerSensitive
    public void setBoolean(Object obj, boolean z10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setBoolean(obj, z10);
            return;
        }
        getOverrideFieldAccessor().setBoolean(obj, z10);
    }

    @ForceInline
    @CallerSensitive
    public void setByte(Object obj, byte b10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setByte(obj, b10);
            return;
        }
        getOverrideFieldAccessor().setByte(obj, b10);
    }

    @ForceInline
    @CallerSensitive
    public void setChar(Object obj, char c10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setChar(obj, c10);
            return;
        }
        getOverrideFieldAccessor().setChar(obj, c10);
    }

    @ForceInline
    @CallerSensitive
    public void setShort(Object obj, short s10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setShort(obj, s10);
            return;
        }
        getOverrideFieldAccessor().setShort(obj, s10);
    }

    @ForceInline
    @CallerSensitive
    public void setInt(Object obj, int i10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setInt(obj, i10);
            return;
        }
        getOverrideFieldAccessor().setInt(obj, i10);
    }

    @ForceInline
    @CallerSensitive
    public void setLong(Object obj, long l10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setLong(obj, l10);
            return;
        }
        getOverrideFieldAccessor().setLong(obj, l10);
    }

    @ForceInline
    @CallerSensitive
    public void setFloat(Object obj, float f10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setFloat(obj, f10);
            return;
        }
        getOverrideFieldAccessor().setFloat(obj, f10);
    }

    @ForceInline
    @CallerSensitive
    public void setDouble(Object obj, double d10) throws IllegalArgumentException, IllegalAccessException {
        if (!this.override) {
            Class<?> caller = Reflection.getCallerClass();
            checkAccess(caller, obj);
            getFieldAccessor().setDouble(obj, d10);
            return;
        }
        getOverrideFieldAccessor().setDouble(obj, d10);
    }

    private void checkAccess(Class<?> caller, Object obj) throws IllegalAccessException {
        checkAccess(caller, this.clazz, Modifier.isStatic(this.modifiers) ? null : obj.getClass(), this.modifiers);
    }

    private FieldAccessor getFieldAccessor() {
        FieldAccessor a10 = this.fieldAccessor;
        return a10 != null ? a10 : acquireFieldAccessor();
    }

    private FieldAccessor getOverrideFieldAccessor() {
        FieldAccessor a10 = this.overrideFieldAccessor;
        return a10 != null ? a10 : acquireOverrideFieldAccessor();
    }

    private FieldAccessor acquireFieldAccessor() {
        Field root = this.root;
        FieldAccessor tmp = root == null ? null : root.fieldAccessor;
        if (tmp != null) {
            this.fieldAccessor = tmp;
        } else {
            tmp = reflectionFactory.newFieldAccessor(this, false);
            setFieldAccessor(tmp);
        }
        return tmp;
    }

    private FieldAccessor acquireOverrideFieldAccessor() {
        Field root = this.root;
        FieldAccessor tmp = root == null ? null : root.overrideFieldAccessor;
        if (tmp != null) {
            this.overrideFieldAccessor = tmp;
        } else {
            tmp = reflectionFactory.newFieldAccessor(this, true);
            setOverrideFieldAccessor(tmp);
        }
        return tmp;
    }

    private void setFieldAccessor(FieldAccessor accessor) {
        this.fieldAccessor = accessor;
        Field root = this.root;
        if (root != null) {
            root.setFieldAccessor(accessor);
        }
    }

    private void setOverrideFieldAccessor(FieldAccessor accessor) {
        this.overrideFieldAccessor = accessor;
        Field root = this.root;
        if (root != null) {
            root.setOverrideFieldAccessor(accessor);
        }
    }

    @Override
    public Field getRoot() {
        return this.root;
    }

    public boolean isTrustedFinal() {
        return this.trustedFinal;
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
        return AnnotationParser.toArray(declaredAnnotations());
    }

    private Map<Class<? extends Annotation>, Annotation> declaredAnnotations() {
        Map<Class<? extends Annotation>, Annotation> map = this.declaredAnnotations;
        Map<Class<? extends Annotation>, Annotation> declAnnos = map;
        if (map == null) {
            synchronized (this) {
                Map<Class<? extends Annotation>, Annotation> map2 = this.declaredAnnotations;
                declAnnos = map2;
                if (map2 == null) {
                    Field root = this.root;
                    if (root != null) {
                        declAnnos = root.declaredAnnotations();
                    } else {
                        declAnnos = AnnotationParser.parseAnnotations(this.annotations, SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), getDeclaringClass());
                    }
                    this.declaredAnnotations = declAnnos;
                }
            }
        }
        return declAnnos;
    }

    public AnnotatedType getAnnotatedType() {
        return TypeAnnotationParser.buildAnnotatedType(getTypeAnnotationBytes0(), SharedSecrets.getJavaLangAccess().getConstantPool(getDeclaringClass()), this, getDeclaringClass(), getGenericType(), TypeAnnotation.TypeAnnotationTarget.FIELD);
    }
}
