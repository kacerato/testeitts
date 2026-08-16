package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.GlobalSyntheticsResourceProvider;
import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.ProgramResourceProvider;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.Version;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public final class C8069kJ implements ProgramResourceProvider {

    public final ArrayList f49576a;

    public ArrayList f49577b = null;

    public C8069kJ(ArrayList arrayList) {
        this.f49576a = arrayList;
    }

    public static ProgramResource a(C7902jJ c7902jJ, byte[] bArr, Set set, ProgramResource.Kind kind) {
        return new C6362a40(c7902jJ, kind, bArr, set);
    }

    @Override
    public final Collection getProgramResources() {
        if (this.f49577b == null) {
            a();
        }
        return this.f49577b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009b, code lost:
    
        throw new com.android.tools.r8.ResourceException(r6.getOrigin(), "Outdated or inconsistent global synthetics information.\nGlobal synthetics information version: " + r10 + "\nCompiler version: " + com.android.tools.r8.Version.getVersionString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cc, code lost:
    
        if (r9 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ce, code lost:
    
        r6 = r7.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d3, code lost:
    
        if (r8 >= r6) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d5, code lost:
    
        r10 = r7.get(r8);
        r8 = r8 + 1;
        r0.add((com.android.tools.r8.ProgramResource) ((java.util.function.Function) r10).apply(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f4, code lost:
    
        throw new com.android.tools.r8.ResourceException(r6.getOrigin(), "Invalid global synthetics provider does not specify its content kind.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a() {
        try {
            if (this.f49577b != null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = this.f49576a;
            int size = arrayList2.size();
            int i10 = 0;
            loop0: while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                GlobalSyntheticsResourceProvider globalSyntheticsResourceProvider = (GlobalSyntheticsResourceProvider) obj;
                ArrayList arrayList3 = new ArrayList();
                try {
                    ZipInputStream zipInputStream = new ZipInputStream(globalSyntheticsResourceProvider.getByteStream());
                    ProgramResource.Kind kind = null;
                    while (true) {
                        try {
                            ZipEntry nextEntry = zipInputStream.getNextEntry();
                            if (nextEntry == null) {
                                break;
                            }
                            String name = nextEntry.getName();
                            if (name.equals("kind")) {
                                kind = ProgramResource.Kind.valueOf(new String(AbstractC6706c8.a(zipInputStream), StandardCharsets.UTF_8));
                            } else if (name.equals("compilerinfo")) {
                                String str = new String(AbstractC6706c8.a(zipInputStream), StandardCharsets.UTF_8);
                                if (!Version.getVersionString().equals(str)) {
                                    break loop0;
                                }
                            } else if (name.endsWith(".global") && hashSet.add(name)) {
                                final C7902jJ c7902jJ = new C7902jJ(name, globalSyntheticsResourceProvider.getOrigin());
                                String a10 = a(name);
                                final byte[] a11 = AbstractC6706c8.a(zipInputStream);
                                final Set singleton = Collections.singleton(a10);
                                arrayList3.add(new Function() {
                                    @Override
                                    public final Object apply(Object obj2) {
                                        return C8069kJ.a(C7902jJ.this, a11, singleton, (ProgramResource.Kind) obj2);
                                    }
                                });
                            }
                        } finally {
                        }
                    }
                } catch (IOException e10) {
                    throw new ResourceException(globalSyntheticsResourceProvider.getOrigin(), e10);
                }
            }
            this.f49577b = arrayList;
        } finally {
        }
    }

    public static String a(String str) {
        return C4932Bl.x(AbstractC4281a.a(str, 7, 0) + ".class");
    }
}
