package org.luaj.vm2.lib.jse;

import android.provider.CallLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.jse.CoerceJavaToLua;

class JavaClass extends JavaInstance implements CoerceJavaToLua.Coercion {
    Map fields;
    Map innerclasses;
    Map methods;
    static final Map classes = Collections.synchronizedMap(new HashMap());
    static final LuaValue NEW = LuaValue.valueOf(CallLog.Calls.NEW);

    public JavaClass(Class cls) {
        super(cls);
        this.jclass = this;
    }

    public static JavaClass forClass(Class cls) {
        Map map = classes;
        JavaClass javaClass = (JavaClass) map.get(cls);
        if (javaClass != null) {
            return javaClass;
        }
        JavaClass javaClass2 = new JavaClass(cls);
        map.put(cls, javaClass2);
        return javaClass2;
    }

    @Override
    public LuaValue coerce(Object obj) {
        return this;
    }

    public LuaValue getConstructor() {
        return getMethod(NEW);
    }

    public Field getField(LuaValue luaValue) {
        if (this.fields == null) {
            HashMap hashMap = new HashMap();
            for (Field field : ((Class) this.m_instance).getFields()) {
                if (Modifier.isPublic(field.getModifiers())) {
                    hashMap.put(LuaValue.valueOf(field.getName()), field);
                    try {
                        if (!field.isAccessible()) {
                            field.setAccessible(true);
                        }
                    } catch (SecurityException unused) {
                    }
                }
            }
            this.fields = hashMap;
        }
        return (Field) this.fields.get(luaValue);
    }

    public Class getInnerClass(LuaValue luaValue) {
        if (this.innerclasses == null) {
            HashMap hashMap = new HashMap();
            for (Class<?> cls : ((Class) this.m_instance).getClasses()) {
                String name = cls.getName();
                hashMap.put(LuaValue.valueOf(name.substring(Math.max(name.lastIndexOf(36), name.lastIndexOf(46)) + 1)), cls);
            }
            this.innerclasses = hashMap;
        }
        return (Class) this.innerclasses.get(luaValue);
    }

    public LuaValue getMethod(LuaValue luaValue) {
        LuaValue luaValue2;
        Object obj;
        if (this.methods == null) {
            HashMap hashMap = new HashMap();
            for (Method method : ((Class) this.m_instance).getMethods()) {
                if (Modifier.isPublic(method.getModifiers())) {
                    String name = method.getName();
                    Collection collection = (List) hashMap.get(name);
                    if (collection == null) {
                        collection = new ArrayList();
                        hashMap.put(name, collection);
                    }
                    collection.add(JavaMethod.forMethod(method));
                }
            }
            HashMap hashMap2 = new HashMap();
            Constructor<?>[] constructors = ((Class) this.m_instance).getConstructors();
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < constructors.length; i10++) {
                if (Modifier.isPublic(constructors[i10].getModifiers())) {
                    arrayList.add(JavaConstructor.forConstructor(constructors[i10]));
                }
            }
            int size = arrayList.size();
            if (size != 0) {
                if (size != 1) {
                    luaValue2 = NEW;
                    obj = JavaConstructor.forConstructors((JavaConstructor[]) arrayList.toArray(new JavaConstructor[arrayList.size()]));
                } else {
                    luaValue2 = NEW;
                    obj = arrayList.get(0);
                }
                hashMap2.put(luaValue2, obj);
            }
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                hashMap2.put(LuaValue.valueOf(str), list.size() == 1 ? list.get(0) : JavaMethod.forMethods((JavaMethod[]) list.toArray(new JavaMethod[list.size()])));
            }
            this.methods = hashMap2;
        }
        return (LuaValue) this.methods.get(luaValue);
    }
}
