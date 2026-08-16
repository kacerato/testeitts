package e8;

import JAVARuntime.HideGetSet;
import android.util.Log;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedList;
import java.util.List;

public class d {

    public final List<C13044a> f85404a = new LinkedList();

    public C13044a a(int idx) {
        return this.f85404a.get(idx);
    }

    public int b() {
        return this.f85404a.size();
    }

    public void c(Class cls) {
        try {
            for (Method method : cls.getDeclaredMethods()) {
                if (e(method)) {
                    String lowerCase = method.getName().toLowerCase();
                    if (!lowerCase.startsWith("get") && !lowerCase.startsWith("is")) {
                        if (!lowerCase.startsWith("set")) {
                            Log.e("Virtual Attributes java", "The method " + method.getName() + " from class " + cls.getName() + " has HideGetSet annotation, but its name doesn't start with \"get\", \"is\" or \"set\", ignored.");
                        } else if (method.getParameterCount() == 1) {
                            String d10 = d(method.getName());
                            if (d10.length() > 0) {
                                b bVar = g(d10).f85393c;
                                bVar.f85397b = true;
                                bVar.f85396a = method.getName();
                            } else {
                                Log.e("Virtual Attributes java", "The method " + method.getName() + " from class " + cls.getName() + " defined by HideGetSet annotation to be a SET method, has a empty attribute name.");
                            }
                        } else {
                            Log.e("Virtual Attributes java", "The method " + method.getName() + " from class " + cls.getName() + " defined by HideGetSet annotation to be a SET method, contains more than 1 parameters, which is not supported, make sure the parameters count is exactly 1. method ignored.");
                        }
                    }
                    if (method.getParameterCount() == 0) {
                        String d11 = d(method.getName());
                        if (d11.length() > 0) {
                            C13044a g10 = g(d11);
                            b bVar2 = g10.f85392b;
                            bVar2.f85397b = true;
                            bVar2.f85396a = method.getName();
                            g10.f85392b.f85398c = method;
                            g10.f85395e = Modifier.isStatic(method.getModifiers());
                            g10.f85394d = method.getReturnType();
                        } else {
                            Log.e("Virtual Attributes java", "The method " + method.getName() + " from class " + cls.getName() + " defined by HideGetSet annotation to be a GET method, has a empty attribute name.");
                        }
                    } else {
                        Log.e("Virtual Attributes java", "The method " + method.getName() + " from class " + cls.getName() + " defined by HideGetSet annotation to be a GET method, contains parameters, which is not supported, remove all method parameters. method ignored.");
                    }
                }
            }
        } catch (Error e10) {
            e = e10;
            try {
                System.out.println("SimulatedAttributes class: " + cls.getName());
            } catch (Error | Exception unused) {
            }
            e.printStackTrace();
        } catch (Exception e11) {
            e = e11;
            System.out.println("SimulatedAttributes class: " + cls.getName());
            e.printStackTrace();
        } catch (NoClassDefFoundError unused2) {
        }
    }

    public final String d(String methodName) {
        if (methodName.toLowerCase().startsWith("get") || methodName.toLowerCase().startsWith("set")) {
            methodName = methodName.substring(3);
        } else if (methodName.toLowerCase().startsWith("is")) {
            methodName = methodName.substring(2);
        }
        return methodName.length() > 0 ? methodName.length() > 2 ? Tc.b.e(methodName) : methodName.toLowerCase() : methodName;
    }

    public final boolean e(Method method) {
        return ((HideGetSet) method.getAnnotation(HideGetSet.class)) != null;
    }

    public C13044a f(String name) {
        for (int i10 = 0; i10 < this.f85404a.size(); i10++) {
            C13044a c13044a = this.f85404a.get(i10);
            if (c13044a.f85391a.equals(name)) {
                return c13044a;
            }
        }
        return null;
    }

    public final C13044a g(String name) {
        for (int i10 = 0; i10 < this.f85404a.size(); i10++) {
            C13044a c13044a = this.f85404a.get(i10);
            if (c13044a.f85391a.equals(name)) {
                return c13044a;
            }
        }
        C13044a c13044a2 = new C13044a(name);
        this.f85404a.add(c13044a2);
        return c13044a2;
    }

    public void h() {
        this.f85404a.clear();
    }
}
