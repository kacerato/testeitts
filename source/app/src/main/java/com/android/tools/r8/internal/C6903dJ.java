package com.android.tools.r8.internal;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.Version;
import com.android.tools.r8.utils.C11673u;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.function.BiFunction;
import java.util.zip.ZipOutputStream;

public final class C6903dJ {

    public static final boolean f47371c = true;

    public final ProgramResource.Kind f47372a;

    public final ArrayList f47373b = new ArrayList();

    public C6903dJ(ProgramResource.Kind kind) {
        this.f47372a = kind;
    }

    public final byte[] a() {
        String versionString = Version.getVersionString();
        Charset charset = StandardCharsets.UTF_8;
        this.f47373b.add(new C8699o50("compilerinfo", versionString.getBytes(charset)));
        this.f47373b.add(new C8699o50("kind", this.f47372a.toString().getBytes(charset)));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(((Integer) AT.a((Object) 0, (Collection) this.f47373b, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                Integer valueOf;
                valueOf = Integer.valueOf(((String) r2.a()).length() + ((Integer) obj).intValue() + ((byte[]) ((C8699o50) obj2).b()).length + 200);
                return valueOf;
            }
        })).intValue() + 500);
        ZipOutputStream zipOutputStream = new ZipOutputStream(byteArrayOutputStream);
        try {
            ArrayList arrayList = this.f47373b;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C8699o50 c8699o50 = (C8699o50) obj;
                C11673u.a(zipOutputStream, (String) c8699o50.a(), (byte[]) c8699o50.b(), 0);
                c8699o50.f51167b = null;
            }
            zipOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            try {
                zipOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public static String a(String str) {
        if (!f47371c && (str == null || !C4932Bl.y(str))) {
            throw new AssertionError();
        }
        return C4932Bl.h(str) + ".global";
    }
}
