package d8;

import JAVARuntime.Component;
import JAVARuntime.ComponentInspector;
import JAVARuntime.JsonSerializer;
import JAVARuntime.ViewPanel;
import bd.C3867a;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.Iterator;

public class r {

    public JavaMetaInfo f84452a;

    public String f84453b;

    public Class f84454c;

    public boolean f84455d;

    public final Constructor<?>[] f84456e;

    public final Constructor<?>[] f84457f;

    public interface a {
        void onError(String msg);
    }

    public r(JavaMetaInfo javaMetaInfo, String className, Class classAddress) {
        this.f84455d = false;
        this.f84452a = javaMetaInfo;
        this.f84453b = className;
        this.f84454c = classAddress;
        javaMetaInfo.a(classAddress);
        if (JsonSerializer.class.isAssignableFrom(classAddress)) {
            this.f84455d = true;
        }
        this.f84456e = classAddress.getConstructors();
        this.f84457f = classAddress.getDeclaredConstructors();
    }

    public Class a() {
        return this.f84454c;
    }

    public String b() {
        return a().getName();
    }

    public String c() {
        Class<?> a10 = a();
        while (a10.isArray()) {
            a10 = a10.getComponentType();
        }
        if (a10.isPrimitive()) {
            return "java.lang";
        }
        String name = a10.getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf != -1 ? name.substring(0, lastIndexOf).intern() : "";
    }

    public String d() {
        return a().getSimpleName();
    }

    public boolean e() {
        return h(Component.class) && !Modifier.isAbstract(this.f84454c.getModifiers());
    }

    public boolean f() {
        return h(ComponentInspector.class) && !Modifier.isAbstract(this.f84454c.getModifiers());
    }

    public boolean g() {
        return this.f84455d;
    }

    public boolean h(Class type) {
        Class cls = this.f84454c;
        return cls != type && type.isAssignableFrom(cls);
    }

    public boolean i() {
        return h(ViewPanel.class) && !Modifier.isAbstract(this.f84454c.getModifiers());
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object j(a listener) {
        Constructor<?>[] constructorArr = this.f84456e;
        String str = "";
        if (constructorArr != null) {
            for (Constructor<?> constructor : constructorArr) {
                if (constructor.getParameterTypes().length == 0) {
                    constructor.setAccessible(true);
                    try {
                        return constructor.newInstance(null);
                    } catch (IllegalAccessException e10) {
                        e10.printStackTrace();
                    } catch (InstantiationException e11) {
                        e11.printStackTrace();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        Iterator<String> it = J4.d.w2(th2).iterator();
                        String str2 = "";
                        while (it.hasNext()) {
                            str2 = str2 + it.next() + "\n";
                        }
                    }
                }
            }
        }
        Constructor<?>[] constructorArr2 = this.f84457f;
        if (constructorArr2 != null) {
            for (Constructor<?> constructor2 : constructorArr2) {
                if (constructor2.getParameterTypes().length == 0) {
                    constructor2.setAccessible(true);
                    try {
                        return constructor2.newInstance(null);
                    } catch (IllegalAccessException e12) {
                        e12.printStackTrace();
                    } catch (InstantiationException e13) {
                        e13.printStackTrace();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                        Iterator<String> it2 = J4.d.w2(th3).iterator();
                        String str3 = "";
                        while (it2.hasNext()) {
                            str3 = str3 + it2.next() + "\n";
                        }
                    }
                }
            }
        }
        Constructor<?>[] constructorArr3 = this.f84456e;
        if (constructorArr3 != null) {
            for (Constructor<?> constructor3 : constructorArr3) {
                Object[] objArr = new Object[constructor3.getParameterTypes().length];
                constructor3.setAccessible(true);
                try {
                    return constructor3.newInstance(objArr);
                } catch (IllegalAccessException e14) {
                    e14.printStackTrace();
                } catch (InstantiationException e15) {
                    e15.printStackTrace();
                } catch (Throwable th4) {
                    th4.printStackTrace();
                    Iterator<String> it3 = J4.d.w2(th4).iterator();
                    String str4 = "";
                    while (it3.hasNext()) {
                        str4 = str4 + it3.next() + "\n";
                    }
                }
            }
        }
        Constructor<?>[] constructorArr4 = this.f84457f;
        if (constructorArr4 != null) {
            for (Constructor<?> constructor4 : constructorArr4) {
                Object[] objArr2 = new Object[constructor4.getParameterTypes().length];
                constructor4.setAccessible(true);
                try {
                    return constructor4.newInstance(objArr2);
                } catch (IllegalAccessException e16) {
                    e16.printStackTrace();
                } catch (InstantiationException e17) {
                    e17.printStackTrace();
                } catch (Throwable th5) {
                    th5.printStackTrace();
                    Iterator<String> it4 = J4.d.w2(th5).iterator();
                    String str5 = "";
                    while (it4.hasNext()) {
                        str5 = str5 + it4.next() + "\n";
                    }
                }
            }
        }
        try {
            return this.f84454c.newInstance();
        } catch (IllegalAccessException e18) {
            e18.printStackTrace();
            if (listener != null) {
                listener.onError(new C3867a("CLASS[" + this.f84452a.f72515e + "]:Class must have a zero argument constructor and be public", "CLASS[" + this.f84452a.f72515e + "]:Classe precisa ter um construtor de zero argumentos e ser publica").toString());
            }
            return null;
        } catch (InstantiationException e19) {
            e19.printStackTrace();
            if (listener != null) {
            }
            return null;
        } catch (Throwable th6) {
            th6.printStackTrace();
            Iterator<String> it5 = J4.d.w2(th6).iterator();
            while (it5.hasNext()) {
                str = str + it5.next() + "\n";
            }
            if (listener != null) {
                listener.onError(str);
            }
            if (listener != null) {
            }
            return null;
        }
    }
}
