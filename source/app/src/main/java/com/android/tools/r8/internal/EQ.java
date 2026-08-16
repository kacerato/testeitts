package com.android.tools.r8.internal;

import android.provider.Contacts;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\b\u0006\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\bR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0080\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d\u00a8\u0006\u001e"}, d2 = {"Lkotlin/metadata/KmValueParameter;", "", "flags", "", "name", "", ConstantDescs.INIT_NAME, "(ILjava/lang/String;)V", "(Ljava/lang/String;)V", "getFlags$kotlin_metadata", "()I", "setFlags$kotlin_metadata", "(I)V", "getName", "()Ljava/lang/String;", "setName", "type", "Lkotlin/metadata/KmType;", "getType", "()Lkotlin/metadata/KmType;", "setType", "(Lkotlin/metadata/KmType;)V", "varargElementType", "getVarargElementType", "setVarargElementType", Contacts.People.Extensions.CONTENT_DIRECTORY, "", "Lkotlin/metadata/internal/extensions/KmValueParameterExtension;", "getExtensions$kotlin_metadata", "()Ljava/util/List;", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EQ {

    public int f39849a;

    public final String f39850b;

    public C10420yQ f39851c;

    public C10420yQ f39852d;

    public EQ(int i10, String str) {
        GJ.c(str, "name");
        this.f39849a = i10;
        this.f39850b = str;
        InterfaceC10432yW.f54037a.getClass();
        List list = (List) C10265xW.f53771b.a();
        new ArrayList();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC10432yW) it.next()).getClass();
        }
    }

    public final C10420yQ a() {
        C10420yQ c10420yQ = this.f39851c;
        if (c10420yQ != null) {
            return c10420yQ;
        }
        GJ.a("type");
        throw null;
    }

    public final C10420yQ b() {
        return this.f39852d;
    }

    public final void a(C10420yQ c10420yQ) {
        GJ.c(c10420yQ, "<set-?>");
        this.f39851c = c10420yQ;
    }

    public final void b(C10420yQ c10420yQ) {
        this.f39852d = c10420yQ;
    }
}
