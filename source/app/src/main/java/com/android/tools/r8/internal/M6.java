package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.InterfaceC4596n5;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Comparator;

public class M6 {

    public static final boolean f42172h = true;

    public final String f42173a;

    public final AbstractC4780x0 f42174b;

    public final AbstractC7552hC f42175c;

    public final AbstractC8552nC f42176d;

    public final Path f42177e;

    public ArrayList f42178f = new ArrayList();

    public K6 f42179g = null;

    public M6(AbstractC4780x0 abstractC4780x0, AbstractC4780x0 abstractC4780x02, Path path) {
        this.f42174b = abstractC4780x02;
        this.f42177e = path;
        String b10 = b(abstractC4780x0);
        this.f42173a = b10;
        if (!b10.equals(b(abstractC4780x02))) {
            throw new C5325If("Bisecting application classes do not match classes in reference APK");
        }
        this.f42175c = AbstractC7552hC.a(a(abstractC4780x0));
        C8051kC c8051kC = new C8051kC(4);
        for (int i10 = 0; i10 < this.f42175c.size(); i10++) {
            c8051kC.a(((com.android.tools.r8.graph.H2) this.f42175c.get(i10)).f36245e, Integer.valueOf(i10));
        }
        this.f42176d = c8051kC.b();
    }

    public void a(I6 i62) {
        if (this.f42179g != null) {
            if (this.f42178f.size() == 0) {
                if (!f42172h && !this.f42179g.equals(new K6(0, 0))) {
                    throw new AssertionError();
                }
                if (i62 != I6.f40973c) {
                    throw new C5325If("Expected good state for reference application run, got " + ((Object) i62));
                }
            }
            if (this.f42178f.size() == 1) {
                if (!f42172h && !this.f42179g.equals(new K6(0, this.f42176d.size()))) {
                    throw new AssertionError();
                }
                if (i62 != I6.f40974d) {
                    throw new C5325If("Expected bad state for input application run, got " + ((Object) i62));
                }
            }
            this.f42178f.add(new L6(i62, this.f42179g));
            System.out.println("Marked range " + ((Object) this.f42179g) + ": " + ((Object) i62));
            this.f42179g = null;
            return;
        }
        throw new C5325If("Invalid bisection state. Could not find information on previous runs.");
    }

    public void b() throws IOException {
        Path path = this.f42177e;
        if (path == null) {
            return;
        }
        if (!Files.exists(path, new LinkOption[0])) {
            System.out.println("Assuming initial run for non-existent state file: " + ((Object) this.f42177e));
            return;
        }
        ArrayList arrayList = new ArrayList();
        BufferedReader newBufferedReader = Files.newBufferedReader(this.f42177e);
        try {
            if (this.f42173a.equals(newBufferedReader.readLine())) {
                while (true) {
                    String readLine = newBufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else {
                        arrayList.add(readLine);
                    }
                }
                newBufferedReader.close();
                if (arrayList.isEmpty()) {
                    return;
                }
                this.f42178f = new ArrayList(arrayList.size());
                for (int i10 = 0; i10 < arrayList.size() - 1; i10++) {
                    this.f42178f.add(new L6((String) arrayList.get(i10)));
                }
                this.f42179g = new K6((String) J6.a(arrayList, 1));
                return;
            }
            throw new C5325If("Bisection state file does not match the reference build signature");
        } catch (Throwable th2) {
            if (newBufferedReader != null) {
                try {
                    newBufferedReader.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    public void c() throws IOException {
        Path path = this.f42177e;
        if (path == null) {
            return;
        }
        int i10 = 0;
        BufferedWriter newBufferedWriter = Files.newBufferedWriter(path, new OpenOption[0]);
        try {
            newBufferedWriter.write(this.f42173a);
            newBufferedWriter.write("\n");
            ArrayList arrayList = this.f42178f;
            int size = arrayList.size();
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                L6 l62 = (L6) obj;
                newBufferedWriter.write(l62.f41864a ? "good" : "bad");
                newBufferedWriter.write(58);
                l62.f41865b.a(newBufferedWriter);
                newBufferedWriter.write("\n");
            }
            this.f42179g.a(newBufferedWriter);
            newBufferedWriter.write("\n");
            newBufferedWriter.flush();
            newBufferedWriter.close();
        } catch (Throwable th2) {
            if (newBufferedWriter != null) {
                try {
                    newBufferedWriter.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0124 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC4780x0 a() {
        com.android.tools.r8.graph.H2 h22;
        if (!f42172h && this.f42179g != null) {
            throw new AssertionError();
        }
        int i10 = 0;
        if (this.f42178f.isEmpty()) {
            this.f42179g = new K6(0, 0);
        } else if (this.f42178f.size() == 1) {
            this.f42179g = new K6(0, this.f42175c.size());
        } else {
            K6 k62 = new K6(0, 0);
            for (int size = this.f42178f.size() - 1; size >= 0; size--) {
                L6 l62 = (L6) this.f42178f.get(size);
                if (!l62.f41864a) {
                    K6 k63 = l62.f41865b;
                    k63.getClass();
                    int i11 = k62.f41575a;
                    int i12 = k62.f41576b;
                    if (i11 != i12) {
                        boolean z10 = K6.f41574c;
                        if (!z10 && (k63.f41575a > i11 || i12 > k63.f41576b)) {
                            throw new AssertionError();
                        }
                        int i13 = k63.f41575a;
                        if (i13 == i11) {
                            k63 = new K6(k62.f41576b, k63.f41576b);
                        } else {
                            if (!z10 && k63.f41576b != i12) {
                                throw new AssertionError();
                            }
                            k63 = new K6(i13, i11);
                        }
                    }
                    int i14 = k63.f41575a;
                    int i15 = k63.f41576b;
                    if (i14 == i15) {
                        throw new C5325If("Bad range is empty. Cannot continue bisecting :-(");
                    }
                    if (i15 - i14 == 1) {
                        this.f42179g = k63;
                        return null;
                    }
                    System.out.println("Last bad range: " + ((Object) k63));
                    int i16 = k63.f41576b;
                    int i17 = k63.f41575a;
                    this.f42179g = new K6(i17, ((i16 - i17) / 2) + i17);
                } else {
                    k62 = k62.a(l62.f41865b);
                }
            }
            throw new C5417Jv0("Did not find any bad range in bisection state");
        }
        System.out.println("Next bisection range: " + ((Object) this.f42179g));
        ArrayList arrayList = new ArrayList();
        int i18 = 0;
        for (com.android.tools.r8.graph.H2 h23 : this.f42174b.d()) {
            Integer num = (Integer) this.f42176d.get(h23.f36245e);
            if (num != null) {
                K6 k64 = this.f42179g;
                int intValue = num.intValue();
                if (k64.f41575a > intValue || intValue >= k64.f41576b) {
                    h22 = (com.android.tools.r8.graph.H2) this.f42175c.get(num.intValue());
                    if (h22 == null) {
                        arrayList.add(h22);
                        i10++;
                    } else {
                        arrayList.add(h23);
                        if (!f42172h) {
                            K6 k65 = this.f42179g;
                            if (k65.f41575a == k65.f41576b) {
                                throw new AssertionError();
                            }
                        }
                        i18++;
                    }
                }
            }
            h22 = null;
            if (h22 == null) {
            }
        }
        System.out.println("Class split is good: " + i10 + ", bad: " + i18);
        return this.f42174b.c().a(arrayList).b();
    }

    public static String b(AbstractC4780x0 abstractC4780x0) {
        ArrayList a10 = a(abstractC4780x0);
        StringBuilder sb2 = new StringBuilder();
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            sb2.append(((com.android.tools.r8.graph.H2) obj).f36245e.toString());
            sb2.append(";");
        }
        int i11 = AbstractC8880pA.f51464a;
        C7596hW c7596hW = AbstractC8713oA.f51183a;
        return ((F) c7596hW.a()).a(sb2.toString(), AbstractC7109ec.f47726a).a().toString();
    }

    public static ArrayList a(AbstractC4780x0 abstractC4780x0) {
        ArrayList arrayList = new ArrayList(abstractC4780x0.d());
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = ((com.android.tools.r8.graph.H2) obj).f36245e.a((InterfaceC4596n5) ((com.android.tools.r8.graph.H2) obj2).f36245e, AbstractC10992r0.a());
                return a10;
            }
        });
        return arrayList;
    }
}
