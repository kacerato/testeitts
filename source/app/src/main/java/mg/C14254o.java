package mg;

import ag.C3617K;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;
import kotlin.jvm.internal.t0;
import nf.C14436t;
import org.jetbrains.annotations.NotNull;
import yd.C16181m;

@t0({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,161:1\n77#1,5:162\n77#1,5:168\n131#1,13:183\n1#2:167\n1360#3:173\n1446#3,5:174\n1549#3:179\n1620#3,3:180\n1064#4,2:196\n*S KotlinDebug\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoader\n*L\n60#1:162,5\n61#1:168,5\n117#1:183,13\n99#1:173\n99#1:174,5\n101#1:179\n101#1:180,3\n153#1:196,2\n*E\n"})
public final class C14254o {

    @NotNull
    public static final C14254o f97089a = new C14254o();

    @NotNull
    public static final String f97090b = "META-INF/services/";

    public final C a(Class<C> cls, String str) {
        try {
            return cls.cast(Class.forName(str, true, cls.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final <S> S b(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(null).newInstance(null));
        }
        throw new IllegalArgumentException(("Expected service of class " + ((Object) cls) + ", but found " + ((Object) cls2)).toString());
    }

    public final <S> List<S> c(Class<S> cls, ClassLoader classLoader) {
        try {
            return e(cls, classLoader);
        } catch (Throwable unused) {
            return pf.S.a6(ServiceLoader.load(cls, classLoader));
        }
    }

    @NotNull
    public final List<C> d() {
        C c10;
        if (!C14255p.a()) {
            return c(C.class, C.class.getClassLoader());
        }
        try {
            ArrayList arrayList = new ArrayList(2);
            C c11 = null;
            try {
                c10 = (C) C.class.cast(Class.forName("fg.a", true, C.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
            } catch (ClassNotFoundException unused) {
                c10 = null;
            }
            if (c10 != null) {
                arrayList.add(c10);
            }
            try {
                c11 = (C) C.class.cast(Class.forName("kotlinx.coroutines.test.internal.TestMainDispatcherFactory", true, C.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
            } catch (ClassNotFoundException unused2) {
            }
            if (c11 == null) {
                return arrayList;
            }
            arrayList.add(c11);
            return arrayList;
        } catch (Throwable unused3) {
            return c(C.class, C.class.getClassLoader());
        }
    }

    @NotNull
    public final <S> List<S> e(@NotNull Class<S> cls, @NotNull ClassLoader classLoader) {
        ArrayList list = Collections.list(classLoader.getResources(f97090b + cls.getName()));
        kotlin.jvm.internal.M.o(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            pf.M.t0(arrayList, f97089a.f((URL) it.next()));
        }
        Set f62 = pf.S.f6(arrayList);
        if (f62.isEmpty()) {
            throw new IllegalArgumentException("No providers were loaded with FastServiceLoader");
        }
        Set set = f62;
        ArrayList arrayList2 = new ArrayList(pf.I.d0(set, 10));
        Iterator<E> it2 = set.iterator();
        while (it2.hasNext()) {
            arrayList2.add(f97089a.b((String) it2.next(), classLoader, cls));
        }
        return arrayList2;
    }

    public final List<String> f(URL url) {
        BufferedReader bufferedReader;
        String url2 = url.toString();
        if (!C3617K.L2(url2, "jar", false, 2, null)) {
            bufferedReader = new BufferedReader(new InputStreamReader(url.openStream()));
            try {
                List<String> g10 = f97089a.g(bufferedReader);
                kotlin.io.b.a(bufferedReader, null);
                return g10;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } finally {
                }
            }
        }
        String W52 = ag.P.W5(ag.P.P5(url2, "jar:file:", null, 2, null), '!', null, 2, null);
        String P52 = ag.P.P5(url2, "!/", null, 2, null);
        JarFile jarFile = new JarFile(W52, false);
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(jarFile.getInputStream(new ZipEntry(P52)), "UTF-8"));
            try {
                List<String> g11 = f97089a.g(bufferedReader);
                kotlin.io.b.a(bufferedReader, null);
                jarFile.close();
                return g11;
            } finally {
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                try {
                    jarFile.close();
                    throw th4;
                } catch (Throwable th5) {
                    C14436t.a(th3, th5);
                    throw th3;
                }
            }
        }
    }

    public final List<String> g(BufferedReader bufferedReader) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return pf.S.a6(linkedHashSet);
            }
            String obj = ag.P.e6(ag.P.X5(readLine, C16181m.f130230g, null, 2, null)).toString();
            for (int i10 = 0; i10 < obj.length(); i10++) {
                char charAt = obj.charAt(i10);
                if (charAt != '.' && !Character.isJavaIdentifierPart(charAt)) {
                    throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
                }
            }
            if (obj.length() > 0) {
                linkedHashSet.add(obj);
            }
        }
    }

    public final <R> R h(JarFile jarFile, Mf.l<? super JarFile, ? extends R> lVar) {
        try {
            R invoke = lVar.invoke(jarFile);
            kotlin.jvm.internal.J.d(1);
            jarFile.close();
            kotlin.jvm.internal.J.c(1);
            return invoke;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                kotlin.jvm.internal.J.d(1);
                try {
                    jarFile.close();
                    kotlin.jvm.internal.J.c(1);
                    throw th3;
                } catch (Throwable th4) {
                    C14436t.a(th2, th4);
                    throw th2;
                }
            }
        }
    }
}
