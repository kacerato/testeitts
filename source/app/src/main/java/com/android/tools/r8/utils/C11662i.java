package com.android.tools.r8.utils;

import com.android.tools.r8.AndroidResourceInput;
import com.android.tools.r8.AndroidResourceProvider;
import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.ClassFileResourceProvider;
import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResource;
import com.android.tools.r8.DataResourceProvider;
import com.android.tools.r8.DexFilePerClassFileConsumer;
import com.android.tools.r8.DexIndexedConsumer;
import com.android.tools.r8.DirectoryClassFileProvider;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.InterfaceC11677v0;
import com.android.tools.r8.OutputMode;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.Resource;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.Version;
import com.android.tools.r8.internal.AbstractC10197x4;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C10316xo0;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C4971Cd;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5821Qv;
import com.android.tools.r8.internal.C6040Uo0;
import com.android.tools.r8.internal.C6072Vd;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6362a40;
import com.android.tools.r8.internal.C6506ax;
import com.android.tools.r8.internal.C6570bJ;
import com.android.tools.r8.internal.C7181f;
import com.android.tools.r8.internal.C7608hb0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8699o50;
import com.android.tools.r8.internal.C8950pe;
import com.android.tools.r8.internal.C9328rt;
import com.android.tools.r8.internal.C9691u20;
import com.android.tools.r8.internal.C9905vJ;
import com.android.tools.r8.internal.InterfaceC9975vm;
import com.android.tools.r8.internal.K4;
import com.android.tools.r8.internal.ZI;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.profile.art.ArtProfileProvider;
import com.android.tools.r8.shaking.C11350o3;
import com.android.tools.r8.shaking.P0;
import com.android.tools.r8.startup.StartupProfileProvider;
import com.android.tools.r8.tracereferences.C11635l;
import com.android.tools.r8.tracereferences.C11636m;
import com.android.tools.r8.utils.C11662i;
import com.android.tools.r8.utils.C11673u;
import ei.C13155a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.eclipse.jdt.internal.core.ClasspathEntry;

public class C11662i {

    public static final boolean f58586j = true;

    public final AbstractC7552hC f58587a;

    public final AbstractC8552nC f58588b;

    public final AbstractC7552hC f58589c;

    public final AbstractC7552hC f58590d;

    public final AbstractC7552hC f58591e;

    public final InterfaceC11677v0 f58592f;

    public final InterfaceC11677v0.a f58593g;

    public final AbstractCollection f58594h;

    public final AbstractCollection f58595i;

    public static class a {

        public static final boolean f58596n = true;

        public final ArrayList f58597a = new ArrayList();

        public final ArrayList f58598b = new ArrayList();

        public final ArrayList f58599c = new ArrayList();

        public final HashMap f58600d = new HashMap();

        public final ArrayList f58601e = new ArrayList();

        public final ArrayList f58602f = new ArrayList();

        public final ArrayList f58603g = new ArrayList();

        public AbstractCollection f58604h = new ArrayList();

        public AbstractCollection f58605i = new ArrayList();

        public boolean f58606j = false;

        public InterfaceC11677v0 f58607k;

        public InterfaceC11677v0.a f58608l;

        public final C5094Ef0 f58609m;

        public a(C5094Ef0 c5094Ef0) {
            this.f58609m = c5094Ef0;
        }

        public final ArchiveResourceProvider a(P0 p02) {
            if (C6169Ww.a(p02.f56877a)) {
                ArchiveResourceProvider archiveResourceProvider = new ArchiveResourceProvider(p02, this.f58606j);
                a(archiveResourceProvider);
                return archiveResourceProvider;
            }
            this.f58609m.error(new StringDiagnostic("Unexpected input type. Only archive types are supported, e.g., .jar, .zip, etc.", p02.f56879c, p02.f56880d));
            return null;
        }

        public a b(Path... pathArr) {
            return f(Arrays.asList(pathArr));
        }

        public a c(Collection<P0> collection) {
            for (P0 p02 : collection) {
                if (C6169Ww.a(p02.f56877a)) {
                    try {
                        C6506ax c6506ax = new C6506ax(p02);
                        this.f58603g.add(c6506ax);
                        this.f58602f.add(c6506ax);
                    } catch (IOException e10) {
                        this.f58609m.error(new ExceptionDiagnostic(e10, new PathOrigin(p02.f56877a)));
                    }
                } else {
                    this.f58609m.error(new StringDiagnostic("Unexpected input type. Only archive types are supported, e.g., .jar, .zip, etc.", p02.f56879c, p02.f56880d));
                }
            }
            return this;
        }

        public a d(Collection<P0> collection) {
            Iterator<P0> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            return this;
        }

        public a e(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), this.f58602f);
            }
            return this;
        }

        public a f(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                c(it.next());
            }
            return this;
        }

        public a b(Collection<Path> collection) {
            Iterator<Path> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), this.f58601e);
            }
            return this;
        }

        public a b(Path path) {
            a(path, this.f58602f);
            return this;
        }

        public a b(ClassFileResourceProvider classFileResourceProvider) {
            if (classFileResourceProvider instanceof ZI) {
                this.f58603g.add((ZI) classFileResourceProvider);
            }
            this.f58602f.add(classFileResourceProvider);
            return this;
        }

        public a b(byte[] bArr, Origin origin) {
            this.f58598b.addAll(Arrays.asList(ProgramResource.fromBytes(origin, ProgramResource.Kind.DEX, bArr, null)));
            return this;
        }

        public a a(Path path) throws IOException {
            System.out.println("Reading dump from file: " + ((Object) path));
            final PathOrigin pathOrigin = new PathOrigin(path);
            C11673u.a(path.toString(), new C11673u.a() {
                @Override
                public final void a(ZipEntry zipEntry, InputStream inputStream) {
                    C11662i.a.this.a(pathOrigin, zipEntry, inputStream);
                }
            });
            return this;
        }

        public final void b() {
            if (this.f58598b.isEmpty() && this.f58599c.isEmpty()) {
                return;
            }
            this.f58597a.add(new C11661h(AbstractC7552hC.a(this.f58598b), AbstractC7552hC.a(this.f58599c)));
            this.f58598b.clear();
            this.f58599c.clear();
        }

        public final void a(Origin origin, ZipEntry zipEntry, InputStream inputStream) {
            String name = zipEntry.getName();
            if (name.equals("r8-version")) {
                String str = new String(AbstractC6706c8.a(inputStream), StandardCharsets.UTF_8);
                System.out.println("Dump produced by R8 version: " + str);
                return;
            }
            if (name.equals("program.jar")) {
                a(origin, inputStream);
                return;
            }
            if (name.equals("classpath.jar")) {
                a(origin, inputStream, new C11636m(this), ClasspathEntry.TAG_CLASSPATH);
                return;
            }
            if (name.equals("library.jar")) {
                a(origin, inputStream, new C11635l(this), "library");
                return;
            }
            System.out.println("WARNING: Unexpected dump file entry: " + zipEntry.getName());
        }

        public final boolean c() {
            return (this.f58604h.isEmpty() && this.f58605i.isEmpty()) ? false : true;
        }

        public a c(Path path) {
            if (!Files.exists(path, new LinkOption[0])) {
                this.f58609m.error(new ExceptionDiagnostic(new NoSuchFileException(path.toString()), new PathOrigin(path)));
            }
            if (C6169Ww.d(path)) {
                this.f58598b.addAll(Arrays.asList(ProgramResource.fromFile(ProgramResource.Kind.DEX, path)));
                return this;
            }
            if (C6169Ww.b(path)) {
                this.f58598b.addAll(Arrays.asList(ProgramResource.fromFile(ProgramResource.Kind.CF, path)));
                return this;
            }
            if (C10656zq0.f(path.getFileName().toString()).endsWith(".aar")) {
                a(new C7181f(path));
                return this;
            }
            if (C6169Ww.a(path)) {
                a(ArchiveResourceProvider.fromArchive(path, this.f58606j));
                return this;
            }
            throw new C5325If(new PathOrigin(path), "Unsupported source file type", null);
        }

        public static void a(Origin origin, InputStream inputStream, Consumer consumer, String str) {
            HashMap hashMap = new HashMap();
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    String name = nextEntry.getName();
                    if (C11673u.a(name)) {
                        ArchiveEntryOrigin archiveEntryOrigin = new ArchiveEntryOrigin(name, origin);
                        String x10 = C4932Bl.x(name);
                        hashMap.put(x10, new C6362a40(archiveEntryOrigin, ProgramResource.Kind.CF, AbstractC6706c8.a(zipInputStream), Collections.singleton(x10)));
                    } else if (name.endsWith(".dup")) {
                        System.out.println("WARNING: Duplicate " + str + " resource: " + name);
                    } else {
                        System.out.println("WARNING: Unexpected " + str + " resource: " + name);
                    }
                } catch (Throwable th2) {
                    try {
                        zipInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            zipInputStream.close();
            if (hashMap.isEmpty()) {
                return;
            }
            boolean z10 = C11662i.f58586j;
            consumer.accept(new C11656c(hashMap));
        }

        public final void a(Origin origin, InputStream inputStream) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    }
                    String name = nextEntry.getName();
                    if (C11673u.a(name)) {
                        arrayList.add(new C6362a40(new ArchiveEntryOrigin(name, origin), ProgramResource.Kind.CF, AbstractC6706c8.a(zipInputStream), Collections.singleton(C4932Bl.x(name))));
                    } else if (C10656zq0.f(name).endsWith(".dex")) {
                        arrayList.add(new C6362a40(new ArchiveEntryOrigin(name, origin), ProgramResource.Kind.DEX, AbstractC6706c8.a(zipInputStream), null));
                    } else if (name.endsWith(".dup")) {
                        System.out.println("WARNING: Duplicate program resource: " + name);
                    } else {
                        arrayList2.add(DataEntryResource.fromBytes(AbstractC6706c8.a(zipInputStream), name, origin));
                    }
                } catch (Throwable th2) {
                    try {
                        zipInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            zipInputStream.close();
            if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                return;
            }
            a(new C11659f(arrayList, arrayList2));
        }

        public a a(ProgramResourceProvider programResourceProvider) {
            if (!f58596n && programResourceProvider == null) {
                throw new AssertionError();
            }
            this.f58597a.add(programResourceProvider);
            return this;
        }

        public a a(ClassFileResourceProvider classFileResourceProvider) {
            this.f58601e.add(classFileResourceProvider);
            return this;
        }

        public a a(Path... pathArr) {
            return e(Arrays.asList(pathArr));
        }

        public a a(byte[]... bArr) {
            return a(Arrays.asList(bArr));
        }

        public a a(Collection<byte[]> collection) {
            Iterator<byte[]> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), Origin.unknown());
            }
            return this;
        }

        public a a(byte[] bArr, Origin origin) {
            return a(bArr, origin, (Set<String>) null);
        }

        public a a(byte[] bArr, Origin origin, Set<String> set) {
            this.f58598b.addAll(Arrays.asList(ProgramResource.fromBytes(origin, ProgramResource.Kind.CF, bArr, set)));
            return this;
        }

        public a a(DataResource dataResource) {
            this.f58599c.addAll(Arrays.asList(dataResource));
            return this;
        }

        public a a(String str) {
            this.f58607k = str == null ? null : InterfaceC11677v0.a(str, Origin.unknown());
            return this;
        }

        /* JADX WARN: Type inference failed for: r8v0, types: [java.util.AbstractCollection, java.util.List] */
        /* JADX WARN: Type inference failed for: r9v0, types: [java.util.AbstractCollection, java.util.List] */
        public C11662i a() {
            b();
            return new C11662i(AbstractC7552hC.a(this.f58597a), AbstractC8552nC.a(this.f58600d), AbstractC7552hC.a(this.f58601e), AbstractC7552hC.a(this.f58602f), AbstractC7552hC.a(this.f58603g), this.f58607k, this.f58608l, this.f58604h, this.f58605i);
        }

        public final void a(Path path, ArrayList arrayList) {
            if (!Files.exists(path, new LinkOption[0])) {
                this.f58609m.error(new ExceptionDiagnostic(new NoSuchFileException(path.toString()), new PathOrigin(path)));
            }
            if (C6169Ww.a(path)) {
                try {
                    ZI zi2 = new ZI(path);
                    this.f58603g.add(zi2);
                    arrayList.add(zi2);
                    return;
                } catch (IOException e10) {
                    this.f58609m.error(new ExceptionDiagnostic(e10, new PathOrigin(path)));
                    return;
                }
            }
            if (Files.isDirectory(path, new LinkOption[0])) {
                arrayList.add(DirectoryClassFileProvider.fromDirectory(path));
                return;
            }
            throw new C5325If(new PathOrigin(path), "Unsupported source file type", null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C11662i(AbstractC7552hC abstractC7552hC, AbstractC8552nC abstractC8552nC, AbstractC7552hC abstractC7552hC2, AbstractC7552hC abstractC7552hC3, AbstractC7552hC abstractC7552hC4, InterfaceC11677v0 interfaceC11677v0, InterfaceC11677v0.a aVar, List list, List list2) {
        this.f58587a = abstractC7552hC;
        this.f58588b = abstractC8552nC;
        this.f58589c = abstractC7552hC2;
        this.f58590d = abstractC7552hC3;
        this.f58591e = abstractC7552hC4;
        this.f58592f = interfaceC11677v0;
        this.f58593g = aVar;
        this.f58594h = (AbstractCollection) list;
        this.f58595i = (AbstractCollection) list2;
        boolean z10 = f58586j;
        if (!z10 && !a(abstractC7552hC2, abstractC7552hC4)) {
            throw new AssertionError();
        }
        if (!z10 && !a(abstractC7552hC3, abstractC7552hC4)) {
            throw new AssertionError();
        }
    }

    public static ZipOutputStream a(ZipOutputStream zipOutputStream, String str) {
        return zipOutputStream;
    }

    public static a b() {
        return a(new C5094Ef0());
    }

    public List<ProgramResource> c() throws IOException {
        try {
            AbstractC7552hC abstractC7552hC = this.f58587a;
            ProgramResource.Kind kind = ProgramResource.Kind.CF;
            ArrayList arrayList = new ArrayList();
            Iterator it = abstractC7552hC.iterator();
            while (it.hasNext()) {
                for (ProgramResource programResource : ((ProgramResourceProvider) it.next()).getProgramResources()) {
                    if (programResource.getKind() == kind) {
                        arrayList.add(programResource);
                    }
                }
            }
            return arrayList;
        } catch (ResourceException e10) {
            if (e10.getCause() instanceof IOException) {
                throw ((IOException) e10.getCause());
            }
            throw new C6570bJ(e10);
        }
    }

    public List<ClassFileResourceProvider> d() {
        return this.f58589c;
    }

    public final C8699o50 e() {
        TreeSet treeSet = new TreeSet(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DataDirectoryResource) obj).getName();
            }
        }));
        TreeSet treeSet2 = new TreeSet(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DataEntryResource) obj).getName();
            }
        }));
        Iterator<ProgramResourceProvider> it = h().iterator();
        while (it.hasNext()) {
            DataResourceProvider dataResourceProvider = it.next().getDataResourceProvider();
            if (dataResourceProvider != null) {
                dataResourceProvider.accept(new C11654a(treeSet, treeSet2));
            }
        }
        return new C8699o50(treeSet, treeSet2);
    }

    public List<ProgramResource> f() throws IOException {
        try {
            AbstractC7552hC abstractC7552hC = this.f58587a;
            ProgramResource.Kind kind = ProgramResource.Kind.DEX;
            ArrayList arrayList = new ArrayList();
            Iterator it = abstractC7552hC.iterator();
            while (it.hasNext()) {
                for (ProgramResource programResource : ((ProgramResourceProvider) it.next()).getProgramResources()) {
                    if (programResource.getKind() == kind) {
                        arrayList.add(programResource);
                    }
                }
            }
            return arrayList;
        } catch (ResourceException e10) {
            if (e10.getCause() instanceof IOException) {
                throw ((IOException) e10.getCause());
            }
            throw new C6570bJ(e10);
        }
    }

    public List<ClassFileResourceProvider> g() {
        return this.f58590d;
    }

    public List<ProgramResourceProvider> h() {
        return this.f58587a;
    }

    public InterfaceC11677v0 i() {
        return this.f58593g;
    }

    public InterfaceC11677v0 j() {
        return this.f58592f;
    }

    public boolean k() {
        return (this.f58594h.isEmpty() && this.f58595i.isEmpty()) ? false : true;
    }

    public boolean l() {
        return !this.f58594h.isEmpty();
    }

    public final void m() {
        C5325If c5325If;
        Iterator<ProgramResourceProvider> it = h().iterator();
        while (it.hasNext()) {
            try {
                Iterator<ProgramResource> it2 = it.next().getProgramResources().iterator();
                while (it2.hasNext()) {
                    ProgramResource next = it2.next();
                    try {
                        if (next.getKind() != ProgramResource.Kind.DEX) {
                            byte[] bytes = next.getBytes();
                            int length = bytes.length;
                            new C6072Vd(bytes, true).a(new C11657d(new C4971Cd()), new K4[0], 8);
                        }
                    } finally {
                    }
                }
            } catch (ResourceException e10) {
                throw new C5325If("Resource exception in validation", e10);
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        try {
            if (!this.f58587a.isEmpty()) {
                sb2.append("  Program resources:");
                sb2.append(System.lineSeparator());
                Iterator<E> it = this.f58587a.iterator();
                while (it.hasNext()) {
                    for (ProgramResource programResource : ((ProgramResourceProvider) it.next()).getProgramResources()) {
                        sb2.append(C13155a.f85806a);
                        sb2.append((Object) programResource.getOrigin());
                        Set<String> classDescriptors = programResource.getClassDescriptors();
                        if (classDescriptors != null && !classDescriptors.isEmpty()) {
                            sb2.append(" contains ");
                            C10656zq0.a(sb2, classDescriptors);
                        }
                        sb2.append(System.lineSeparator());
                    }
                }
            }
            if (!this.f58589c.isEmpty()) {
                sb2.append("  Classpath resources:");
                sb2.append(System.lineSeparator());
                for (ClassFileResourceProvider classFileResourceProvider : this.f58589c) {
                    Iterator<String> it2 = classFileResourceProvider.getClassDescriptors().iterator();
                    while (it2.hasNext()) {
                        ProgramResource programResource2 = classFileResourceProvider.getProgramResource(it2.next());
                        sb2.append(C13155a.f85806a);
                        sb2.append((Object) programResource2.getOrigin());
                        Set<String> classDescriptors2 = programResource2.getClassDescriptors();
                        if (classDescriptors2 != null && !classDescriptors2.isEmpty()) {
                            sb2.append(" contains ");
                            C10656zq0.a(sb2, classDescriptors2);
                        }
                        sb2.append(System.lineSeparator());
                    }
                }
            }
            if (!this.f58590d.isEmpty()) {
                sb2.append("  Library resources:");
                sb2.append(System.lineSeparator());
                for (ClassFileResourceProvider classFileResourceProvider2 : this.f58590d) {
                    Iterator<String> it3 = classFileResourceProvider2.getClassDescriptors().iterator();
                    while (it3.hasNext()) {
                        ProgramResource programResource3 = classFileResourceProvider2.getProgramResource(it3.next());
                        sb2.append(C13155a.f85806a);
                        sb2.append((Object) programResource3.getOrigin());
                        Set<String> classDescriptors3 = programResource3.getClassDescriptors();
                        if (classDescriptors3 != null && !classDescriptors3.isEmpty()) {
                            sb2.append(" contains ");
                            C10656zq0.a(sb2, classDescriptors3);
                        }
                        sb2.append(System.lineSeparator());
                    }
                }
            }
        } catch (ResourceException e10) {
            e10.printStackTrace();
        }
        return sb2.toString();
    }

    public static IdentityHashMap a(C5821Qv c5821Qv, String str) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        if (c5821Qv != null) {
            ArrayList arrayList = c5821Qv.f43761a;
            int size = arrayList.size();
            int i10 = 0;
            int i11 = 1;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                identityHashMap.put((FeatureSplit) obj, "feature-" + i11 + str);
                i11++;
            }
        }
        return identityHashMap;
    }

    public void b(Path path, OutputMode outputMode) throws IOException {
        List<ProgramResource> f10 = f();
        try {
            if (outputMode == OutputMode.DexIndexed) {
                DexIndexedConsumer.DirectoryConsumer.writeResources(path, f10);
            } else {
                DexFilePerClassFileConsumer.DirectoryConsumer.writeResources(path, f10, this.f58588b);
            }
        } catch (ResourceException e10) {
            throw new IOException("Resource Error", e10);
        }
    }

    public static boolean a(AbstractC7552hC abstractC7552hC, final AbstractC7552hC abstractC7552hC2) {
        return abstractC7552hC.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11662i.a(AbstractC7552hC.this, (ClassFileResourceProvider) obj);
            }
        });
    }

    public static boolean a(AbstractC7552hC abstractC7552hC, ClassFileResourceProvider classFileResourceProvider) {
        return !(classFileResourceProvider instanceof ZI) || abstractC7552hC.contains(classFileResourceProvider);
    }

    public final void b(C5094Ef0 c5094Ef0) {
        AbstractC4895Av0 it = this.f58587a.iterator();
        while (it.hasNext()) {
            ((ProgramResourceProvider) it.next()).finished(c5094Ef0);
        }
        AbstractC4895Av0 it2 = this.f58589c.iterator();
        while (it2.hasNext()) {
            ((ClassFileResourceProvider) it2.next()).finished(c5094Ef0);
        }
        AbstractC4895Av0 it3 = this.f58590d.iterator();
        while (it3.hasNext()) {
            ((ClassFileResourceProvider) it3.next()).finished(c5094Ef0);
        }
    }

    public static a a(C11662i c11662i) {
        a aVar = new a(new C5094Ef0());
        aVar.f58597a.addAll(c11662i.f58587a);
        aVar.f58601e.addAll(c11662i.f58589c);
        aVar.f58602f.addAll(c11662i.f58590d);
        aVar.f58603g.addAll(c11662i.f58591e);
        aVar.f58604h = c11662i.f58594h;
        aVar.f58605i = c11662i.f58595i;
        aVar.f58608l = c11662i.f58593g;
        return aVar;
    }

    public void c(Path path, OutputMode outputMode) throws IOException {
        try {
            if (outputMode == OutputMode.DexIndexed) {
                C8699o50 e10 = e();
                DexIndexedConsumer.ArchiveConsumer.writeResourcesForTesting(path, f(), (Set) e10.a(), (Set) e10.b());
                return;
            }
            if (outputMode != OutputMode.DexFilePerClassFile && outputMode != OutputMode.DexFilePerClass) {
                if (outputMode == OutputMode.ClassFile) {
                    C8699o50 e11 = e();
                    ClassFileConsumer.ArchiveConsumer.writeResourcesForTesting(path, c(), (Set) e11.a(), (Set) e11.b());
                    return;
                } else {
                    throw new C5417Jv0("Unsupported output-mode for writing: " + ((Object) outputMode));
                }
            }
            DexFilePerClassFileConsumer.ArchiveConsumer.writeResourcesForTesting(path, f(), this.f58588b);
        } catch (ResourceException e12) {
            throw new IOException("Resource Error", e12);
        }
    }

    public static a a(C5094Ef0 c5094Ef0) {
        return new a(c5094Ef0);
    }

    public int a() throws IOException, ResourceException {
        if (!f58586j && f().size() != 0 && c().size() != 0) {
            throw new AssertionError();
        }
        C8950pe c8950pe = new C8950pe(C8950pe.f51579c);
        try {
            Iterator<ProgramResource> it = f().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                InputStream byteStream = it.next().getByteStream();
                if (byteStream != null) {
                    c8950pe.f51581b.addFirst(byteStream);
                }
                i10 += AbstractC6706c8.a(byteStream).length;
            }
            Iterator<ProgramResource> it2 = c().iterator();
            while (it2.hasNext()) {
                InputStream byteStream2 = it2.next().getByteStream();
                if (byteStream2 != null) {
                    c8950pe.f51581b.addFirst(byteStream2);
                }
                i10 += AbstractC6706c8.a(byteStream2).length;
            }
            c8950pe.close();
            return i10;
        } catch (Throwable th2) {
            try {
                c8950pe.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final ArrayList a(Consumer consumer) {
        ArrayList arrayList = new ArrayList();
        AbstractC4895Av0 it = this.f58587a.iterator();
        while (it.hasNext()) {
            ProgramResourceProvider programResourceProvider = (ProgramResourceProvider) it.next();
            if (programResourceProvider instanceof C9905vJ) {
                consumer.accept((C9905vJ) programResourceProvider);
            } else {
                arrayList.addAll(programResourceProvider.getProgramResources());
            }
        }
        return arrayList;
    }

    public void a(Path path, OutputMode outputMode) throws IOException {
        if (C6169Ww.a(path)) {
            c(path, outputMode);
        } else {
            b(path, outputMode);
        }
    }

    public String a(Resource resource) {
        if (f58586j || (resource instanceof ProgramResource)) {
            return (String) this.f58588b.get(resource);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [java.util.AbstractCollection, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.util.AbstractCollection, java.util.List] */
    public void a(Path path, C9328rt c9328rt, C8570nJ c8570nJ) {
        int i10 = 0;
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(Files.newOutputStream(path, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING));
            try {
                String versionString = Version.getVersionString();
                Charset charset = StandardCharsets.UTF_8;
                C11673u.a(zipOutputStream, "r8-version", versionString.getBytes(charset), 8);
                C11673u.a(zipOutputStream, "build.properties", c9328rt.c().getBytes(charset), 8);
                InterfaceC9975vm interfaceC9975vm = c9328rt.f52175o;
                if (((interfaceC9975vm == null || interfaceC9975vm.isEmpty()) ? null : c9328rt.f52175o.a()) != null) {
                    InterfaceC9975vm interfaceC9975vm2 = c9328rt.f52175o;
                    C11673u.a(zipOutputStream, "desugared-library.json", ((interfaceC9975vm2 == null || interfaceC9975vm2.isEmpty()) ? null : c9328rt.f52175o.a()).getBytes(charset), 8);
                }
                C11350o3 c11350o3 = c9328rt.f52177q;
                if ((c11350o3 == null ? null : c11350o3.f57597a) != null) {
                    C11673u.a(zipOutputStream, "proguard.config", (c11350o3 == null ? null : c11350o3.f57597a).getBytes(charset), 8);
                }
                if (this.f58593g != null) {
                    c8570nJ.f50691j.c("Dumping proguard map input data may have side effects due to I/O on Paths.");
                    C11673u.a(zipOutputStream, "proguard_input.config", this.f58593g.a().getBytes(charset), 8);
                }
                if (k()) {
                    ArrayList arrayList = new ArrayList();
                    if (l()) {
                        c8570nJ.f50691j.c("Dumping main dex list resources may have side effects due to I/O on Paths.");
                        Iterator it = this.f58594h.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((InterfaceC11677v0) it.next()).a());
                        }
                    }
                    Iterator it2 = this.f58595i.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((String) it2.next()).replace(".", "/") + ".class");
                    }
                    C11673u.a(zipOutputStream, "main-dex-list.txt", C10656zq0.a("\n", (Iterable) arrayList).getBytes(StandardCharsets.UTF_8), 8);
                }
                List list = c9328rt.f52178r;
                if (list != null && !list.isEmpty()) {
                    C11673u.a(zipOutputStream, "main-dex-rules.txt", C10656zq0.a((Collection) c9328rt.f52178r).getBytes(StandardCharsets.UTF_8), 8);
                }
                List list2 = c9328rt.f52179s;
                if (list2 != null && !list2.isEmpty()) {
                    a(c9328rt.f52179s, zipOutputStream);
                }
                List list3 = c9328rt.f52180t;
                if (list3 != null && !list3.isEmpty()) {
                    a(c9328rt.f52180t, c8570nJ, zipOutputStream);
                }
                AndroidResourceProvider androidResourceProvider = c9328rt.f52183w;
                if (androidResourceProvider != null) {
                    a(androidResourceProvider, zipOutputStream, "app-res.ap_");
                    C5821Qv c5821Qv = c9328rt.f52176p;
                    if (c5821Qv != null) {
                        IdentityHashMap a10 = a(c5821Qv, ".ap_");
                        ArrayList arrayList2 = c9328rt.f52176p.f43761a;
                        int size = arrayList2.size();
                        while (i10 < size) {
                            Object obj = arrayList2.get(i10);
                            i10++;
                            FeatureSplit featureSplit = (FeatureSplit) obj;
                            if (featureSplit.getAndroidResourceProvider() != null) {
                                a(featureSplit.getAndroidResourceProvider(), zipOutputStream, (String) a10.get(featureSplit));
                            }
                        }
                    }
                }
                C7608hb0 c7608hb0 = c9328rt.f52184x;
                if (c7608hb0 != null && c7608hb0.f48614a) {
                    C11673u.a(zipOutputStream, "r8-include.txt", c7608hb0.f48615b.a(), 8);
                    if (!c7608hb0.f48616c.f49688a.isEmpty()) {
                        C11673u.a(zipOutputStream, "r8-exclude.txt", c7608hb0.f48616c.a(), 8);
                    }
                }
                a("library.jar", a("classpath.jar", a(c9328rt.f52176p, zipOutputStream, c8570nJ), zipOutputStream, this.f58589c), zipOutputStream, this.f58590d);
                zipOutputStream.close();
            } finally {
            }
        } catch (ResourceException | IOException e10) {
            C5094Ef0 c5094Ef0 = c8570nJ.f50691j;
            c5094Ef0.a(null, new ExceptionDiagnostic(e10));
            throw c5094Ef0.f39969c;
        }
    }

    public static void a(List list, ZipOutputStream zipOutputStream) {
        Iterator<E> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            C11673u.a(zipOutputStream, "art-profile-" + i10 + ".txt", AbstractC10197x4.a((ArtProfileProvider) it.next()).getBytes(StandardCharsets.UTF_8), 8);
            i10++;
        }
    }

    public static void a(List list, C8570nJ c8570nJ, ZipOutputStream zipOutputStream) {
        Iterator<E> it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            C11673u.a(zipOutputStream, "startup-profile-" + i10 + ".txt", C10316xo0.a(c8570nJ, (StartupProfileProvider) it.next()).getBytes(StandardCharsets.UTF_8), 8);
            i10++;
        }
    }

    public static void a(AndroidResourceProvider androidResourceProvider, ZipOutputStream zipOutputStream, String str) {
        byte[] readAllBytes;
        HashSet hashSet = new HashSet();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ZipOutputStream zipOutputStream2 = new ZipOutputStream(byteArrayOutputStream);
            try {
                for (AndroidResourceInput androidResourceInput : androidResourceProvider.getAndroidResources()) {
                    if (hashSet.add(androidResourceInput.getPath().location())) {
                        String location = androidResourceInput.getPath().location();
                        readAllBytes = androidResourceInput.getByteStream().readAllBytes();
                        C11673u.a(zipOutputStream2, location, readAllBytes, 8);
                    }
                }
                zipOutputStream2.close();
                C11673u.a(zipOutputStream, str, byteArrayOutputStream.toByteArray(), 8);
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                try {
                    zipOutputStream2.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    public final int a(final C5821Qv c5821Qv, ZipOutputStream zipOutputStream, final C8570nJ c8570nJ) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th2;
        ZipOutputStream zipOutputStream2;
        Throwable th3;
        IdentityHashMap a10 = a(c5821Qv, ".jar");
        IdentityHashMap identityHashMap = new IdentityHashMap();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        try {
            final C6300Zd a11 = C6300Zd.a(c8570nJ.m(), c5821Qv, c8570nJ.f50691j);
            if (c5821Qv != null) {
                ArrayList arrayList = c5821Qv.f43761a;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    FeatureSplit featureSplit = (FeatureSplit) obj;
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    identityHashMap.put(featureSplit, byteArrayOutputStream2);
                    identityHashMap2.put(featureSplit, new ZipOutputStream(byteArrayOutputStream2));
                }
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            try {
                try {
                    ZipOutputStream zipOutputStream3 = new ZipOutputStream(byteArrayOutputStream3);
                    try {
                        C9691u20 c9691u20 = new C9691u20();
                        C8699o50 e10 = e();
                        Iterator it = ((Set) e10.a()).iterator();
                        while (it.hasNext()) {
                            try {
                                C11673u.a(zipOutputStream3, ((DataDirectoryResource) it.next()).getName(), new byte[0], 0);
                            } catch (Throwable th4) {
                                th3 = th4;
                                zipOutputStream2 = zipOutputStream3;
                                byteArrayOutputStream = byteArrayOutputStream3;
                                try {
                                    zipOutputStream2.close();
                                    throw th3;
                                } catch (Throwable th5) {
                                    th3.addSuppressed(th5);
                                    throw th3;
                                }
                            }
                        }
                        for (DataEntryResource dataEntryResource : (Set) e10.b()) {
                            String name = dataEntryResource.getName();
                            InputStream byteStream = dataEntryResource.getByteStream();
                            try {
                                C11673u.a(zipOutputStream3, name, AbstractC6706c8.a(byteStream), 8);
                                byteStream.close();
                            } catch (Throwable th6) {
                                if (byteStream == null) {
                                    throw th6;
                                }
                                try {
                                    byteStream.close();
                                    throw th6;
                                } catch (Throwable th7) {
                                    th6.addSuppressed(th7);
                                    throw th6;
                                }
                            }
                        }
                        AbstractC4895Av0 it2 = this.f58587a.iterator();
                        int i11 = 0;
                        while (it2.hasNext()) {
                            Iterator<ProgramResource> it3 = ((ProgramResourceProvider) it2.next()).getProgramResources().iterator();
                            int i12 = i11;
                            while (it3.hasNext()) {
                                C9691u20 c9691u202 = c9691u20;
                                final ZipOutputStream zipOutputStream4 = zipOutputStream3;
                                byteArrayOutputStream = byteArrayOutputStream3;
                                try {
                                    zipOutputStream2 = zipOutputStream4;
                                    try {
                                        i12 = a(c9691u202, i12, new Function() {
                                            @Override
                                            public final Object apply(Object obj2) {
                                                return C11662i.a(C5821Qv.this, c8570nJ, a11, identityHashMap2, zipOutputStream4, (String) obj2);
                                            }
                                        }, zipOutputStream2, it3.next());
                                        zipOutputStream3 = zipOutputStream2;
                                        c9691u20 = c9691u202;
                                        byteArrayOutputStream3 = byteArrayOutputStream;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        th3 = th;
                                        zipOutputStream2.close();
                                        throw th3;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    zipOutputStream2 = zipOutputStream4;
                                }
                            }
                            i11 = i12;
                        }
                        ByteArrayOutputStream byteArrayOutputStream4 = byteArrayOutputStream3;
                        zipOutputStream3.close();
                        C11673u.a(zipOutputStream, "program.jar", byteArrayOutputStream4.toByteArray(), 8);
                        if (c5821Qv != null) {
                            ArrayList arrayList2 = c5821Qv.f43761a;
                            int size2 = arrayList2.size();
                            int i13 = 0;
                            while (i13 < size2) {
                                Object obj2 = arrayList2.get(i13);
                                i13++;
                                FeatureSplit featureSplit2 = (FeatureSplit) obj2;
                                ((ZipOutputStream) identityHashMap2.remove(featureSplit2)).close();
                                C11673u.a(zipOutputStream, (String) a10.get(featureSplit2), ((ByteArrayOutputStream) identityHashMap.get(featureSplit2)).toByteArray(), 8);
                            }
                        }
                        byteArrayOutputStream4.close();
                        Iterator it4 = identityHashMap2.values().iterator();
                        IOException iOException = null;
                        RuntimeException runtimeException = null;
                        while (it4.hasNext()) {
                            try {
                                ((OutputStream) it4.next()).close();
                            } catch (IOException e11) {
                                iOException = e11;
                            } catch (RuntimeException e12) {
                                runtimeException = e12;
                            }
                        }
                        if (iOException != null) {
                            throw iOException;
                        }
                        if (runtimeException == null) {
                            return i11;
                        }
                        throw runtimeException;
                    } catch (Throwable th10) {
                        th = th10;
                        zipOutputStream2 = zipOutputStream3;
                        byteArrayOutputStream = byteArrayOutputStream3;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    th2 = th;
                    try {
                        byteArrayOutputStream.close();
                        throw th2;
                    } catch (Throwable th12) {
                        th2.addSuppressed(th12);
                        throw th2;
                    }
                }
            } catch (Throwable th13) {
                th = th13;
                th2 = th;
                byteArrayOutputStream.close();
                throw th2;
            }
        } catch (Throwable th14) {
            Iterator it5 = identityHashMap2.values().iterator();
            IOException iOException2 = null;
            RuntimeException runtimeException2 = null;
            while (it5.hasNext()) {
                try {
                    ((OutputStream) it5.next()).close();
                } catch (IOException e13) {
                    iOException2 = e13;
                } catch (RuntimeException e14) {
                    runtimeException2 = e14;
                }
            }
            if (iOException2 != null) {
                throw iOException2;
            }
            if (runtimeException2 == null) {
                throw th14;
            }
            throw runtimeException2;
        }
    }

    public static ZipOutputStream a(C5821Qv c5821Qv, C8570nJ c8570nJ, C6300Zd c6300Zd, Map map, ZipOutputStream zipOutputStream, String str) {
        FeatureSplit a10;
        return (c5821Qv == null || (a10 = c6300Zd.a(c8570nJ.m().d(str), (com.android.tools.r8.synthesis.J) null)) == null || a10.isBase()) ? zipOutputStream : (ZipOutputStream) map.get(a10);
    }

    public static int a(String str, int i10, ZipOutputStream zipOutputStream, AbstractC7552hC abstractC7552hC) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            final ZipOutputStream zipOutputStream2 = new ZipOutputStream(byteArrayOutputStream);
            try {
                C9691u20 c9691u20 = new C9691u20();
                AbstractC4895Av0 it = abstractC7552hC.iterator();
                while (it.hasNext()) {
                    ClassFileResourceProvider classFileResourceProvider = (ClassFileResourceProvider) it.next();
                    Iterator<String> it2 = classFileResourceProvider.getClassDescriptors().iterator();
                    while (it2.hasNext()) {
                        int a10 = a(c9691u20, i10, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C11662i.a(ZipOutputStream.this, (String) obj);
                            }
                        }, zipOutputStream2, classFileResourceProvider.getProgramResource(it2.next()));
                        if (!f58586j && a10 != i10) {
                            throw new AssertionError();
                        }
                        i10 = a10;
                    }
                }
                zipOutputStream2.close();
                C11673u.a(zipOutputStream, str, byteArrayOutputStream.toByteArray(), 8);
                byteArrayOutputStream.close();
                return i10;
            } catch (Throwable th2) {
                try {
                    zipOutputStream2.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th5) {
                th4.addSuppressed(th5);
            }
            throw th4;
        }
    }

    public static int a(C9691u20 c9691u20, int i10, Function function, ZipOutputStream zipOutputStream, ProgramResource programResource) {
        byte[] a10;
        String b10;
        if (programResource instanceof C6362a40) {
            C6362a40 c6362a40 = (C6362a40) programResource;
            if (!C6362a40.f46407e && c6362a40.f46410c == null) {
                throw new AssertionError();
            }
            a10 = c6362a40.f46410c;
        } else {
            a10 = C6040Uo0.a(programResource.getByteStream());
        }
        if (programResource.getKind() == ProgramResource.Kind.CF) {
            Set<String> classDescriptors = programResource.getClassDescriptors();
            if (classDescriptors != null && classDescriptors.size() == 1) {
                b10 = classDescriptors.iterator().next();
            } else {
                int length = a10.length;
                C6072Vd c6072Vd = new C6072Vd(a10, true);
                C11655b c11655b = new C11655b();
                c6072Vd.a(c11655b, new K4[0], 7);
                b10 = c11655b.b();
            }
            String i11 = C4932Bl.i(b10);
            int intValue = ((Integer) c9691u20.getOrDefault(b10, 0)).intValue();
            c9691u20.b(intValue + 1, b10);
            if (intValue != 0) {
                i11 = i11 + "." + intValue + ".dup";
            }
            C11673u.a((ZipOutputStream) function.apply(b10), i11, a10, 8);
            return i10;
        }
        if (!f58586j && programResource.getKind() != ProgramResource.Kind.DEX) {
            throw new AssertionError();
        }
        int i12 = i10 + 1;
        C11673u.a(zipOutputStream, "classes" + i10 + ".dex", a10, 8);
        return i12;
    }
}
