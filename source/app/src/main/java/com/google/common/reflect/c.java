package com.google.common.reflect;

import D2.AbstractC2488f;
import D2.F;
import android.content.ContentResolver;
import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12556p0;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.Q1;
import com.google.common.collect.e3;
import com.google.common.reflect.c;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import w2.AbstractC15885e;
import w2.H;
import w2.I;
import w2.M;
import w2.N;

@d
public final class c {

    public static final Logger f67102b = Logger.getLogger(c.class.getName());

    public static final M f67103c = M.i(" ").g();

    public static final String f67104d = ".class";

    public final AbstractC12564r1<C1011c> f67105a;

    public static final class a extends C1011c {

        public final String f67106d;

        public a(File file, String str, ClassLoader classLoader) {
            super(file, str, classLoader);
            this.f67106d = c.e(str);
        }

        public String g() {
            return this.f67106d;
        }

        public String h() {
            return k.b(this.f67106d);
        }

        public String i() {
            int lastIndexOf = this.f67106d.lastIndexOf(36);
            if (lastIndexOf != -1) {
                return AbstractC15885e.m('0', '9').V(this.f67106d.substring(lastIndexOf + 1));
            }
            String h10 = h();
            return h10.isEmpty() ? this.f67106d : this.f67106d.substring(h10.length() + 1);
        }

        public boolean j() {
            return this.f67106d.indexOf(36) == -1;
        }

        public Class<?> k() {
            try {
                return this.f67111c.loadClass(this.f67106d);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public String toString() {
            return this.f67106d;
        }
    }

    public static final class b {

        public final File f67107a;

        public final ClassLoader f67108b;

        public b(File file, ClassLoader classLoader) {
            this.f67107a = (File) H.E(file);
            this.f67108b = (ClassLoader) H.E(classLoader);
        }

        public final File a() {
            return this.f67107a;
        }

        public final void b(File file, Set<File> set, AbstractC12564r1.a<C1011c> aVar) throws IOException {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        c(file, aVar);
                    } else {
                        e(file, set, aVar);
                    }
                }
            } catch (SecurityException e10) {
                Logger logger = c.f67102b;
                String valueOf = String.valueOf(file);
                String valueOf2 = String.valueOf(e10);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 16 + valueOf2.length());
                sb2.append("Cannot access ");
                sb2.append(valueOf);
                sb2.append(": ");
                sb2.append(valueOf2);
                logger.warning(sb2.toString());
            }
        }

        public final void c(File file, AbstractC12564r1.a<C1011c> aVar) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            d(file, "", hashSet, aVar);
        }

        public final void d(File file, String str, Set<File> set, AbstractC12564r1.a<C1011c> aVar) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Logger logger = c.f67102b;
                String valueOf = String.valueOf(file);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
                sb2.append("Cannot read directory ");
                sb2.append(valueOf);
                logger.warning(sb2.toString());
                return;
            }
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length());
                        sb3.append(str);
                        sb3.append(name);
                        sb3.append("/");
                        d(canonicalFile, sb3.toString(), set, aVar);
                        set.remove(canonicalFile);
                    }
                } else {
                    String valueOf2 = String.valueOf(str);
                    String valueOf3 = String.valueOf(name);
                    String concat = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
                    if (!concat.equals("META-INF/MANIFEST.MF")) {
                        aVar.g(C1011c.e(file2, concat, this.f67108b));
                    }
                }
            }
        }

        public final void e(File file, Set<File> set, AbstractC12564r1.a<C1011c> aVar) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    e3<File> it = c.h(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        File next = it.next();
                        if (set.add(next.getCanonicalFile())) {
                            b(next, set, aVar);
                        }
                    }
                    f(jarFile, aVar);
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable th2) {
                    try {
                        jarFile.close();
                    } catch (IOException unused2) {
                    }
                    throw th2;
                }
            } catch (IOException unused3) {
            }
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f67107a.equals(bVar.f67107a) && this.f67108b.equals(bVar.f67108b);
        }

        public final void f(JarFile jarFile, AbstractC12564r1.a<C1011c> aVar) {
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory() && !nextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    aVar.g(C1011c.e(new File(jarFile.getName()), nextElement.getName(), this.f67108b));
                }
            }
        }

        public AbstractC12564r1<C1011c> g() throws IOException {
            return h(new HashSet());
        }

        public AbstractC12564r1<C1011c> h(Set<File> set) throws IOException {
            AbstractC12564r1.a<C1011c> m10 = AbstractC12564r1.m();
            set.add(this.f67107a);
            b(this.f67107a, set, m10);
            return m10.e();
        }

        public int hashCode() {
            return this.f67107a.hashCode();
        }

        public String toString() {
            return this.f67107a.toString();
        }
    }

    public static class C1011c {

        public final File f67109a;

        public final String f67110b;

        public final ClassLoader f67111c;

        public C1011c(File file, String str, ClassLoader classLoader) {
            this.f67109a = (File) H.E(file);
            this.f67110b = (String) H.E(str);
            this.f67111c = (ClassLoader) H.E(classLoader);
        }

        public static C1011c e(File file, String str, ClassLoader classLoader) {
            return str.endsWith(".class") ? new a(file, str, classLoader) : new C1011c(file, str, classLoader);
        }

        public final AbstractC2488f a() {
            return F.a(f());
        }

        public final D2.j b(Charset charset) {
            return F.b(f(), charset);
        }

        public final File c() {
            return this.f67109a;
        }

        public final String d() {
            return this.f67110b;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof C1011c)) {
                return false;
            }
            C1011c c1011c = (C1011c) obj;
            return this.f67110b.equals(c1011c.f67110b) && this.f67111c == c1011c.f67111c;
        }

        public final URL f() {
            URL resource = this.f67111c.getResource(this.f67110b);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(this.f67110b);
        }

        public int hashCode() {
            return this.f67110b.hashCode();
        }

        public String toString() {
            return this.f67110b;
        }
    }

    public c(AbstractC12564r1<C1011c> abstractC12564r1) {
        this.f67105a = abstractC12564r1;
    }

    public static c b(ClassLoader classLoader) throws IOException {
        AbstractC12564r1<b> m10 = m(classLoader);
        HashSet hashSet = new HashSet();
        e3<b> it = m10.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().a());
        }
        AbstractC12564r1.a m11 = AbstractC12564r1.m();
        e3<b> it2 = m10.iterator();
        while (it2.hasNext()) {
            m11.c(it2.next().h(hashSet));
        }
        return new c(m11.e());
    }

    public static AbstractC12521g1<URL> d(ClassLoader classLoader) {
        return classLoader instanceof URLClassLoader ? AbstractC12521g1.u(((URLClassLoader) classLoader).getURLs()) : classLoader.equals(ClassLoader.getSystemClassLoader()) ? n() : AbstractC12521g1.x();
    }

    @v2.d
    public static String e(String str) {
        return str.substring(0, str.length() - 6).replace('/', '.');
    }

    @v2.d
    public static AbstractC12529i1<File, ClassLoader> f(ClassLoader classLoader) {
        LinkedHashMap c02 = Q1.c0();
        ClassLoader parent = classLoader.getParent();
        if (parent != null) {
            c02.putAll(f(parent));
        }
        e3<URL> it = d(classLoader).iterator();
        while (it.hasNext()) {
            URL next = it.next();
            if (next.getProtocol().equals(ContentResolver.SCHEME_FILE)) {
                File o10 = o(next);
                if (!c02.containsKey(o10)) {
                    c02.put(o10, classLoader);
                }
            }
        }
        return AbstractC12529i1.n(c02);
    }

    @v2.d
    public static URL g(File file, String str) throws MalformedURLException {
        return new URL(file.toURI().toURL(), str);
    }

    @v2.d
    public static AbstractC12564r1<File> h(File file, @CheckForNull Manifest manifest) {
        if (manifest == null) {
            return AbstractC12564r1.z();
        }
        AbstractC12564r1.a m10 = AbstractC12564r1.m();
        String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
        if (value != null) {
            for (String str : f67103c.n(value)) {
                try {
                    URL g10 = g(file, str);
                    if (g10.getProtocol().equals(ContentResolver.SCHEME_FILE)) {
                        m10.g(o(g10));
                    }
                } catch (MalformedURLException unused) {
                    Logger logger = f67102b;
                    String valueOf = String.valueOf(str);
                    logger.warning(valueOf.length() != 0 ? "Invalid Class-Path entry: ".concat(valueOf) : new String("Invalid Class-Path entry: "));
                }
            }
        }
        return m10.e();
    }

    public static AbstractC12564r1<b> m(ClassLoader classLoader) {
        AbstractC12564r1.a m10 = AbstractC12564r1.m();
        e3<Map.Entry<File, ClassLoader>> it = f(classLoader).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<File, ClassLoader> next = it.next();
            m10.g(new b(next.getKey(), next.getValue()));
        }
        return m10.e();
    }

    @v2.d
    public static AbstractC12521g1<URL> n() {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        for (String str : M.i(N.PATH_SEPARATOR.c()).n(N.JAVA_CLASS_PATH.c())) {
            try {
                try {
                    m10.a(new File(str).toURI().toURL());
                } catch (SecurityException unused) {
                    m10.a(new URL(ContentResolver.SCHEME_FILE, (String) null, new File(str).getAbsolutePath()));
                }
            } catch (MalformedURLException e10) {
                Logger logger = f67102b;
                Level level = Level.WARNING;
                String valueOf = String.valueOf(str);
                logger.log(level, valueOf.length() != 0 ? "malformed classpath entry: ".concat(valueOf) : new String("malformed classpath entry: "), (Throwable) e10);
            }
        }
        return m10.e();
    }

    @v2.d
    public static File o(URL url) {
        H.d(url.getProtocol().equals(ContentResolver.SCHEME_FILE));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }

    public AbstractC12564r1<a> c() {
        return AbstractC12556p0.s(this.f67105a).m(a.class).G();
    }

    public AbstractC12564r1<C1011c> i() {
        return this.f67105a;
    }

    public AbstractC12564r1<a> j() {
        return AbstractC12556p0.s(this.f67105a).m(a.class).n(new I() {
            @Override
            public final boolean apply(Object obj) {
                return ((c.a) obj).j();
            }
        }).G();
    }

    public AbstractC12564r1<a> k(String str) {
        H.E(str);
        AbstractC12564r1.a m10 = AbstractC12564r1.m();
        e3<a> it = j().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.h().equals(str)) {
                m10.g(next);
            }
        }
        return m10.e();
    }

    public AbstractC12564r1<a> l(String str) {
        H.E(str);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1);
        sb2.append(str);
        sb2.append('.');
        String sb3 = sb2.toString();
        AbstractC12564r1.a m10 = AbstractC12564r1.m();
        e3<a> it = j().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.g().startsWith(sb3)) {
                m10.g(next);
            }
        }
        return m10.e();
    }
}
