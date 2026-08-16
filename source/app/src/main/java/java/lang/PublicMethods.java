package java.lang;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import jdk.internal.reflect.ReflectionFactory;

public final class PublicMethods {
    private final Map<Key, MethodList> map = new LinkedHashMap();
    private int methodCount;

    public void merge(Method method) {
        Key key = new Key(method);
        MethodList existing = this.map.get(key);
        int xLen = existing == null ? 0 : existing.length();
        MethodList merged = MethodList.merge(existing, method);
        this.methodCount += merged.length() - xLen;
        if (merged != existing) {
            this.map.put(key, merged);
        }
    }

    public Method[] toArray() {
        Method[] array = new Method[this.methodCount];
        int i10 = 0;
        for (MethodList methodList : this.map.values()) {
            while (true) {
                MethodList ml2 = methodList;
                if (ml2 != null) {
                    int i11 = i10;
                    i10++;
                    array[i11] = ml2.method;
                    methodList = ml2.next;
                }
            }
        }
        return array;
    }

    public static final class Key {
        private static final ReflectionFactory reflectionFactory = ReflectionFactory.getReflectionFactory();
        private final String name;
        private final Class<?>[] ptypes;

        Key(Method method) {
            this.name = method.getName();
            this.ptypes = reflectionFactory.getExecutableSharedParameterTypes(method);
        }

        static boolean matches(Method method, String name, Class<?>[] ptypes) {
            return method.getName().equals(name) && Arrays.equals(reflectionFactory.getExecutableSharedParameterTypes(method), ptypes);
        }

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 instanceof Key) {
                Key that = (Key) o10;
                if (this.name == that.name && Arrays.equals(this.ptypes, that.ptypes)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return System.identityHashCode(this.name) + (31 * Arrays.hashCode(this.ptypes));
        }
    }

    public static final class MethodList {
        Method method;
        MethodList next;

        private MethodList(Method method) {
            this.method = method;
        }

        public static MethodList filter(Method[] methods, String name, Class<?>[] ptypes, boolean includeStatic) {
            MethodList head = null;
            MethodList tail = null;
            for (Method method : methods) {
                if ((includeStatic || !Modifier.isStatic(method.getModifiers())) && Key.matches(method, name, ptypes)) {
                    if (tail == null) {
                        MethodList methodList = new MethodList(method);
                        tail = methodList;
                        head = methodList;
                    } else {
                        MethodList methodList2 = new MethodList(method);
                        tail.next = methodList2;
                        tail = methodList2;
                    }
                }
            }
            return head;
        }

        public static MethodList merge(MethodList head, MethodList methodList) {
            MethodList methodList2 = methodList;
            while (true) {
                MethodList ml2 = methodList2;
                if (ml2 != null) {
                    head = merge(head, ml2.method);
                    methodList2 = ml2.next;
                } else {
                    return head;
                }
            }
        }

        private static MethodList merge(MethodList head, Method method) {
            Class<?> dclass = method.getDeclaringClass();
            Class<?> rtype = method.getReturnType();
            MethodList prev = null;
            MethodList methodList = head;
            while (true) {
                MethodList l10 = methodList;
                if (l10 != null) {
                    Method xmethod = l10.method;
                    if (rtype == xmethod.getReturnType()) {
                        Class<?> xdclass = xmethod.getDeclaringClass();
                        if (dclass.isInterface() == xdclass.isInterface()) {
                            if (dclass.isAssignableFrom(xdclass)) {
                                return head;
                            }
                            if (xdclass.isAssignableFrom(dclass)) {
                                if (prev != null) {
                                    prev.next = l10.next;
                                } else {
                                    head = l10.next;
                                }
                            } else {
                                prev = l10;
                            }
                        } else {
                            if (dclass.isInterface()) {
                                return head;
                            }
                            if (prev != null) {
                                prev.next = l10.next;
                            } else {
                                head = l10.next;
                            }
                        }
                    } else {
                        prev = l10;
                    }
                    methodList = l10.next;
                } else {
                    if (prev == null) {
                        head = new MethodList(method);
                    } else {
                        prev.next = new MethodList(method);
                    }
                    return head;
                }
            }
        }

        private int length() {
            int len = 1;
            MethodList methodList = this.next;
            while (true) {
                MethodList ml2 = methodList;
                if (ml2 != null) {
                    len++;
                    methodList = ml2.next;
                } else {
                    return len;
                }
            }
        }

        public Method getMostSpecific() {
            Method m10 = this.method;
            Class<?> rt = m10.getReturnType();
            MethodList methodList = this.next;
            while (true) {
                MethodList ml2 = methodList;
                if (ml2 != null) {
                    Method m22 = ml2.method;
                    Class<?> rt2 = m22.getReturnType();
                    if (rt2 != rt && rt.isAssignableFrom(rt2)) {
                        m10 = m22;
                        rt = rt2;
                    }
                    methodList = ml2.next;
                } else {
                    return m10;
                }
            }
        }
    }
}
