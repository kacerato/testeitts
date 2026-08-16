package org.apache.commons.lang3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.v;
import org.apache.commons.lang3.mutable.MutableObject;
import org.eclipse.jdt.core.Signature;

public class ClassUtils {
    public static final char INNER_CLASS_SEPARATOR_CHAR = '$';
    public static final char PACKAGE_SEPARATOR_CHAR = '.';
    private static final Map<String, String> abbreviationMap;
    private static final Map<String, Class<?>> namePrimitiveMap;
    private static final Map<Class<?>, Class<?>> primitiveWrapperMap;
    private static final Map<String, String> reverseAbbreviationMap;
    private static final Map<Class<?>, Class<?>> wrapperPrimitiveMap;
    public static final String PACKAGE_SEPARATOR = String.valueOf('.');
    public static final String INNER_CLASS_SEPARATOR = String.valueOf('$');

    public enum Interfaces {
        INCLUDE,
        EXCLUDE
    }

    static {
        HashMap hashMap = new HashMap();
        namePrimitiveMap = hashMap;
        Class<Boolean> cls = Boolean.TYPE;
        hashMap.put(TypedValues.Custom.S_BOOLEAN, cls);
        Class<Byte> cls2 = Byte.TYPE;
        hashMap.put("byte", cls2);
        Class<Character> cls3 = Character.TYPE;
        hashMap.put("char", cls3);
        Class<Short> cls4 = Short.TYPE;
        hashMap.put("short", cls4);
        Class<Integer> cls5 = Integer.TYPE;
        hashMap.put("int", cls5);
        Class<Long> cls6 = Long.TYPE;
        hashMap.put("long", cls6);
        Class<Double> cls7 = Double.TYPE;
        hashMap.put("double", cls7);
        Class<Float> cls8 = Float.TYPE;
        hashMap.put(TypedValues.Custom.S_FLOAT, cls8);
        Class<Void> cls9 = Void.TYPE;
        hashMap.put("void", cls9);
        HashMap hashMap2 = new HashMap();
        primitiveWrapperMap = hashMap2;
        hashMap2.put(cls, Boolean.class);
        hashMap2.put(cls2, Byte.class);
        hashMap2.put(cls3, Character.class);
        hashMap2.put(cls4, Short.class);
        hashMap2.put(cls5, Integer.class);
        hashMap2.put(cls6, Long.class);
        hashMap2.put(cls7, Double.class);
        hashMap2.put(cls8, Float.class);
        hashMap2.put(cls9, cls9);
        wrapperPrimitiveMap = new HashMap();
        Iterator it = hashMap2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Class<?> cls10 = (Class) entry.getKey();
            Class<?> cls11 = (Class) entry.getValue();
            if (!cls10.equals(cls11)) {
                wrapperPrimitiveMap.put(cls11, cls10);
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("int", Signature.SIG_INT);
        hashMap3.put(TypedValues.Custom.S_BOOLEAN, Signature.SIG_BOOLEAN);
        hashMap3.put(TypedValues.Custom.S_FLOAT, Signature.SIG_FLOAT);
        hashMap3.put("long", Signature.SIG_LONG);
        hashMap3.put("short", "S");
        hashMap3.put("byte", Signature.SIG_BYTE);
        hashMap3.put("double", Signature.SIG_DOUBLE);
        hashMap3.put("char", Signature.SIG_CHAR);
        HashMap hashMap4 = new HashMap();
        Iterator it2 = hashMap3.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            hashMap4.put(entry2.getValue(), entry2.getKey());
        }
        abbreviationMap = Collections.unmodifiableMap(hashMap3);
        reverseAbbreviationMap = Collections.unmodifiableMap(hashMap4);
    }

    public static List<Class<?>> convertClassNamesToClasses(List<String> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Class.forName(it.next()));
            } catch (Exception unused) {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public static List<String> convertClassesToClassNames(List<Class<?>> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (Class<?> cls : list) {
            if (cls == null) {
                arrayList.add(null);
            } else {
                arrayList.add(cls.getName());
            }
        }
        return arrayList;
    }

    public static String getAbbreviatedName(Class<?> cls, int i10) {
        if (cls == null) {
            return "";
        }
        return getAbbreviatedName(cls.getName(), i10);
    }

    public static List<Class<?>> getAllInterfaces(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        getAllInterfaces(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    public static List<Class<?>> getAllSuperclasses(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            arrayList.add(superclass);
        }
        return arrayList;
    }

    private static String getCanonicalName(String str) {
        String deleteWhitespace = StringUtils.deleteWhitespace(str);
        if (deleteWhitespace == null) {
            return null;
        }
        int i10 = 0;
        while (deleteWhitespace.startsWith("[")) {
            i10++;
            deleteWhitespace = deleteWhitespace.substring(1);
        }
        if (i10 < 1) {
            return deleteWhitespace;
        }
        if (deleteWhitespace.startsWith("L")) {
            deleteWhitespace = deleteWhitespace.substring(1, deleteWhitespace.endsWith(";") ? deleteWhitespace.length() - 1 : deleteWhitespace.length());
        } else if (deleteWhitespace.length() > 0) {
            deleteWhitespace = reverseAbbreviationMap.get(deleteWhitespace.substring(0, 1));
        }
        StringBuilder sb2 = new StringBuilder(deleteWhitespace);
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(v.f99450n);
        }
        return sb2.toString();
    }

    public static Class<?> getClass(ClassLoader classLoader, String str, boolean z10) throws ClassNotFoundException {
        try {
            Map<String, Class<?>> map = namePrimitiveMap;
            if (map.containsKey(str)) {
                return map.get(str);
            }
            return Class.forName(toCanonicalName(str), z10, classLoader);
        } catch (ClassNotFoundException e10) {
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf != -1) {
                try {
                    return getClass(classLoader, str.substring(0, lastIndexOf) + '$' + str.substring(lastIndexOf + 1), z10);
                } catch (ClassNotFoundException unused) {
                    throw e10;
                }
            }
            throw e10;
        }
    }

    public static String getPackageCanonicalName(Object obj, String str) {
        return obj == null ? str : getPackageCanonicalName(obj.getClass().getName());
    }

    public static String getPackageName(Object obj, String str) {
        return obj == null ? str : getPackageName(obj.getClass());
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Method getPublicMethod(Class<?> cls, String str, Class<?>... clsArr) throws SecurityException, NoSuchMethodException {
        Method method;
        Method method2 = cls.getMethod(str, clsArr);
        if (Modifier.isPublic(method2.getDeclaringClass().getModifiers())) {
            return method2;
        }
        ArrayList<Class> arrayList = new ArrayList();
        arrayList.addAll(getAllInterfaces(cls));
        arrayList.addAll(getAllSuperclasses(cls));
        for (Class cls2 : arrayList) {
            if (Modifier.isPublic(cls2.getModifiers())) {
                try {
                    method = cls2.getMethod(str, clsArr);
                } catch (NoSuchMethodException unused) {
                }
                if (Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
                    return method;
                }
            }
            while (r2.hasNext()) {
            }
        }
        throw new NoSuchMethodException("Can't find a public method for " + str + " " + ArrayUtils.toString(clsArr));
    }

    public static String getShortCanonicalName(Object obj, String str) {
        return obj == null ? str : getShortCanonicalName(obj.getClass().getName());
    }

    public static String getShortClassName(Object obj, String str) {
        return obj == null ? str : getShortClassName(obj.getClass());
    }

    public static String getSimpleName(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        return cls.getSimpleName();
    }

    public static Iterable<Class<?>> hierarchy(Class<?> cls) {
        return hierarchy(cls, Interfaces.EXCLUDE);
    }

    public static boolean isAssignable(Class<?>[] clsArr, Class<?>... clsArr2) {
        return isAssignable(clsArr, clsArr2, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
    }

    public static boolean isInnerClass(Class<?> cls) {
        return (cls == null || cls.getEnclosingClass() == null) ? false : true;
    }

    public static boolean isPrimitiveOrWrapper(Class<?> cls) {
        if (cls == null) {
            return false;
        }
        return cls.isPrimitive() || isPrimitiveWrapper(cls);
    }

    public static boolean isPrimitiveWrapper(Class<?> cls) {
        return wrapperPrimitiveMap.containsKey(cls);
    }

    public static Class<?> primitiveToWrapper(Class<?> cls) {
        return (cls == null || !cls.isPrimitive()) ? cls : primitiveWrapperMap.get(cls);
    }

    public static Class<?>[] primitivesToWrappers(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            clsArr2[i10] = primitiveToWrapper(clsArr[i10]);
        }
        return clsArr2;
    }

    private static String toCanonicalName(String str) {
        String deleteWhitespace = StringUtils.deleteWhitespace(str);
        Validate.notNull(deleteWhitespace, "className must not be null.", new Object[0]);
        if (!deleteWhitespace.endsWith(v.f99450n)) {
            return deleteWhitespace;
        }
        StringBuilder sb2 = new StringBuilder();
        while (deleteWhitespace.endsWith(v.f99450n)) {
            deleteWhitespace = deleteWhitespace.substring(0, deleteWhitespace.length() - 2);
            sb2.append("[");
        }
        String str2 = abbreviationMap.get(deleteWhitespace);
        if (str2 != null) {
            sb2.append(str2);
        } else {
            sb2.append("L");
            sb2.append(deleteWhitespace);
            sb2.append(";");
        }
        return sb2.toString();
    }

    public static Class<?>[] toClass(Object... objArr) {
        if (objArr == null) {
            return null;
        }
        if (objArr.length == 0) {
            return ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj = objArr[i10];
            clsArr[i10] = obj == null ? null : obj.getClass();
        }
        return clsArr;
    }

    public static Class<?> wrapperToPrimitive(Class<?> cls) {
        return wrapperPrimitiveMap.get(cls);
    }

    public static Class<?>[] wrappersToPrimitives(Class<?>... clsArr) {
        if (clsArr == null) {
            return null;
        }
        if (clsArr.length == 0) {
            return clsArr;
        }
        Class<?>[] clsArr2 = new Class[clsArr.length];
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            clsArr2[i10] = wrapperToPrimitive(clsArr[i10]);
        }
        return clsArr2;
    }

    public static String getPackageCanonicalName(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        return getPackageCanonicalName(cls.getName());
    }

    public static String getPackageName(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        return getPackageName(cls.getName());
    }

    public static String getShortCanonicalName(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        return getShortCanonicalName(cls.getName());
    }

    public static String getShortClassName(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        return getShortClassName(cls.getName());
    }

    public static Iterable<Class<?>> hierarchy(final Class<?> cls, Interfaces interfaces) {
        final Iterable<Class<?>> iterable = new Iterable<Class<?>>() {
            @Override
            public Iterator<Class<?>> iterator() {
                final MutableObject mutableObject = new MutableObject(Class.this);
                return new Iterator<Class<?>>() {
                    @Override
                    public boolean hasNext() {
                        return mutableObject.getValue2() != null;
                    }

                    @Override
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override
                    public Class<?> next() {
                        Class<?> cls2 = (Class) mutableObject.getValue2();
                        mutableObject.setValue(cls2.getSuperclass());
                        return cls2;
                    }
                };
            }
        };
        return interfaces != Interfaces.INCLUDE ? iterable : new Iterable<Class<?>>() {
            @Override
            public Iterator<Class<?>> iterator() {
                final HashSet hashSet = new HashSet();
                final Iterator it = Iterable.this.iterator();
                return new Iterator<Class<?>>() {
                    Iterator<Class<?>> interfaces = Collections.emptySet().iterator();

                    private void walkInterfaces(Set<Class<?>> set, Class<?> cls2) {
                        for (Class<?> cls3 : cls2.getInterfaces()) {
                            if (!hashSet.contains(cls3)) {
                                set.add(cls3);
                            }
                            walkInterfaces(set, cls3);
                        }
                    }

                    @Override
                    public boolean hasNext() {
                        return this.interfaces.hasNext() || it.hasNext();
                    }

                    @Override
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override
                    public Class<?> next() {
                        if (this.interfaces.hasNext()) {
                            Class<?> next = this.interfaces.next();
                            hashSet.add(next);
                            return next;
                        }
                        Class<?> cls2 = (Class) it.next();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        walkInterfaces(linkedHashSet, cls2);
                        this.interfaces = linkedHashSet.iterator();
                        return cls2;
                    }
                };
            }
        };
    }

    public static boolean isAssignable(Class<?>[] clsArr, Class<?>[] clsArr2, boolean z10) {
        if (!ArrayUtils.isSameLength(clsArr, clsArr2)) {
            return false;
        }
        if (clsArr == null) {
            clsArr = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        if (clsArr2 == null) {
            clsArr2 = ArrayUtils.EMPTY_CLASS_ARRAY;
        }
        for (int i10 = 0; i10 < clsArr.length; i10++) {
            if (!isAssignable(clsArr[i10], clsArr2[i10], z10)) {
                return false;
            }
        }
        return true;
    }

    public static String getAbbreviatedName(String str, int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("len must be > 0");
        }
        if (str == null) {
            return "";
        }
        int countMatches = StringUtils.countMatches((CharSequence) str, '.');
        String[] strArr = new String[countMatches + 1];
        int length = str.length() - 1;
        for (int i11 = countMatches; i11 >= 0; i11--) {
            int lastIndexOf = str.lastIndexOf(46, length);
            String substring = str.substring(lastIndexOf + 1, length + 1);
            i10 -= substring.length();
            if (i11 > 0) {
                i10--;
            }
            if (i11 == countMatches) {
                strArr[i11] = substring;
            } else if (i10 > 0) {
                strArr[i11] = substring;
            } else {
                strArr[i11] = substring.substring(0, 1);
            }
            length = lastIndexOf - 1;
        }
        return StringUtils.join((Object[]) strArr, '.');
    }

    public static String getSimpleName(Object obj, String str) {
        return obj == null ? str : getSimpleName(obj.getClass());
    }

    private static void getAllInterfaces(Class<?> cls, HashSet<Class<?>> hashSet) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (hashSet.add(cls2)) {
                    getAllInterfaces(cls2, hashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static String getPackageCanonicalName(String str) {
        return getPackageName(getCanonicalName(str));
    }

    public static String getPackageName(String str) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        while (str.charAt(0) == '[') {
            str = str.substring(1);
        }
        if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
            str = str.substring(1);
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    public static String getShortCanonicalName(String str) {
        return getShortClassName(getCanonicalName(str));
    }

    public static String getShortClassName(String str) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        if (str.startsWith("[")) {
            while (str.charAt(0) == '[') {
                str = str.substring(1);
                sb2.append(v.f99450n);
            }
            if (str.charAt(0) == 'L' && str.charAt(str.length() - 1) == ';') {
                str = str.substring(1, str.length() - 1);
            }
            Map<String, String> map = reverseAbbreviationMap;
            if (map.containsKey(str)) {
                str = map.get(str);
            }
        }
        int lastIndexOf = str.lastIndexOf(46);
        int indexOf = str.indexOf(36, lastIndexOf != -1 ? lastIndexOf + 1 : 0);
        String substring = str.substring(lastIndexOf + 1);
        if (indexOf != -1) {
            substring = substring.replace('$', '.');
        }
        return substring + ((Object) sb2);
    }

    public static boolean isAssignable(Class<?> cls, Class<?> cls2) {
        return isAssignable(cls, cls2, SystemUtils.isJavaVersionAtLeast(JavaVersion.JAVA_1_5));
    }

    public static boolean isAssignable(Class<?> cls, Class<?> cls2, boolean z10) {
        if (cls2 == null) {
            return false;
        }
        if (cls == null) {
            return !cls2.isPrimitive();
        }
        if (z10) {
            if (cls.isPrimitive() && !cls2.isPrimitive() && (cls = primitiveToWrapper(cls)) == null) {
                return false;
            }
            if (cls2.isPrimitive() && !cls.isPrimitive() && (cls = wrapperToPrimitive(cls)) == null) {
                return false;
            }
        }
        if (cls.equals(cls2)) {
            return true;
        }
        if (cls.isPrimitive()) {
            if (!cls2.isPrimitive()) {
                return false;
            }
            Class<Integer> cls3 = Integer.TYPE;
            if (cls3.equals(cls)) {
                return Long.TYPE.equals(cls2) || Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
            }
            Class<Long> cls4 = Long.TYPE;
            if (cls4.equals(cls)) {
                return Float.TYPE.equals(cls2) || Double.TYPE.equals(cls2);
            }
            if (Boolean.TYPE.equals(cls)) {
                return false;
            }
            Class<Double> cls5 = Double.TYPE;
            if (cls5.equals(cls)) {
                return false;
            }
            Class<Float> cls6 = Float.TYPE;
            if (cls6.equals(cls)) {
                return cls5.equals(cls2);
            }
            if (Character.TYPE.equals(cls)) {
                return cls3.equals(cls2) || cls4.equals(cls2) || cls6.equals(cls2) || cls5.equals(cls2);
            }
            Class<Short> cls7 = Short.TYPE;
            if (cls7.equals(cls)) {
                return cls3.equals(cls2) || cls4.equals(cls2) || cls6.equals(cls2) || cls5.equals(cls2);
            }
            if (Byte.TYPE.equals(cls)) {
                return cls7.equals(cls2) || cls3.equals(cls2) || cls4.equals(cls2) || cls6.equals(cls2) || cls5.equals(cls2);
            }
            return false;
        }
        return cls2.isAssignableFrom(cls);
    }

    public static Class<?> getClass(ClassLoader classLoader, String str) throws ClassNotFoundException {
        return getClass(classLoader, str, true);
    }

    public static Class<?> getClass(String str) throws ClassNotFoundException {
        return getClass(str, true);
    }

    public static Class<?> getClass(String str, boolean z10) throws ClassNotFoundException {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            contextClassLoader = ClassUtils.class.getClassLoader();
        }
        return getClass(contextClassLoader, str, z10);
    }
}
