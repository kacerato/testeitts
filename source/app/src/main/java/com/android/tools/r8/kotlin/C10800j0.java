package com.android.tools.r8.kotlin;

import com.android.tools.r8.internal.InterfaceC6160Wr0;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.function.Predicate;

public final class C10800j0 implements Closeable {

    public static final boolean f55344c = true;

    public final BufferedReader f55345a;

    public String f55346b;

    public C10800j0(String str) {
        this.f55345a = new BufferedReader(new StringReader(str));
    }

    public final void a(InterfaceC6160Wr0 interfaceC6160Wr0) {
        a(new Y3("*L"), 2, interfaceC6160Wr0);
    }

    public final boolean c() {
        return this.f55346b == null;
    }

    @Override
    public final void close() {
        this.f55345a.close();
    }

    public final void d() {
        String readLine = this.f55345a.readLine();
        this.f55346b = readLine;
        if (readLine.equals("*F")) {
            return;
        }
        throw new C10806k0("The string " + this.f55346b + " does not match the expected string *F");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(Predicate predicate, int i10, InterfaceC6160Wr0 interfaceC6160Wr0) {
        if (predicate.test(this.f55346b)) {
            return this.f55346b;
        }
        ArrayList arrayList = new ArrayList();
        String readLine = this.f55345a.readLine();
        this.f55346b = readLine;
        arrayList.add(readLine);
        int i11 = i10;
        while (!predicate.test(this.f55346b) && !c()) {
            if (i11 != 1) {
                i11--;
            } else {
                if (!f55344c && arrayList.size() != i10) {
                    throw new AssertionError();
                }
                interfaceC6160Wr0.accept(arrayList);
                arrayList = new ArrayList();
                i11 = i10;
            }
            String readLine2 = this.f55345a.readLine();
            this.f55346b = readLine2;
            arrayList.add(readLine2);
        }
        if (!arrayList.isEmpty() && !predicate.test((String) arrayList.get(0))) {
            throw new C10806k0("Block size does not match linesInBlock = " + i10);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String) arrayList.get(0);
    }
}
