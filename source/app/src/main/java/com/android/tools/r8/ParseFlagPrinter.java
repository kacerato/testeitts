package com.android.tools.r8;

import com.android.tools.r8.internal.C10656zq0;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import w2.C15883c;

public class ParseFlagPrinter {

    static final boolean f35416g = true;

    private final ArrayList f35417a = new ArrayList();

    private String f35418b = GlideException.a.f59088e;

    private int f35419c = 25;

    private String f35420d = " # ";

    private StringBuilder f35421e = null;

    private int f35422f = -1;

    private void c(String str) {
        if (!f35416g && !b()) {
            throw new AssertionError();
        }
        this.f35421e.append(str);
        this.f35422f = str.length() + this.f35422f;
    }

    public static void main(String[] strArr) {
        D8.main(new String[]{"--help"});
    }

    public ParseFlagPrinter addFlags(List<ParseFlagInfo> list) {
        this.f35417a.addAll(list);
        return this;
    }

    public void appendLinesToBuilder(StringBuilder sb2) {
        boolean z10 = f35416g;
        if (!z10 && this.f35421e != null) {
            throw new AssertionError();
        }
        if (!z10 && this.f35422f != -1) {
            throw new AssertionError();
        }
        this.f35421e = sb2;
        a();
        this.f35421e = null;
        this.f35422f = -1;
    }

    public ParseFlagPrinter setHelpColumn(int i10) {
        this.f35419c = i10;
        return this;
    }

    public ParseFlagPrinter setHelpSeparator(String str) {
        this.f35420d = str;
        return this;
    }

    public ParseFlagPrinter setIndent(int i10) {
        return setPrefix(C11699z2.a(" ", i10));
    }

    public ParseFlagPrinter setPrefix(String str) {
        this.f35418b = str;
        return this;
    }

    public void a(String str) {
        if (b()) {
            if (!f35416g && !b()) {
                throw new AssertionError();
            }
            this.f35421e.append(C10656zq0.f54547c);
            this.f35422f = -1;
        }
        if (!f35416g && b()) {
            throw new AssertionError();
        }
        this.f35422f = 0;
        c(this.f35418b);
        c(str);
    }

    private boolean b() {
        return this.f35422f >= 0;
    }

    public void b(String str) {
        if (this.f35422f > this.f35419c) {
            if (!f35416g && !b()) {
                throw new AssertionError();
            }
            this.f35421e.append(C10656zq0.f54547c);
            this.f35422f = -1;
        }
        if (!b()) {
            if (!f35416g && b()) {
                throw new AssertionError();
            }
            this.f35422f = 0;
            c(this.f35418b);
        }
        int i10 = this.f35419c - this.f35422f;
        if (!f35416g && !b()) {
            throw new AssertionError();
        }
        for (int i11 = 0; i11 < i10; i11++) {
            this.f35421e.append(C15883c.f126249O);
        }
        this.f35422f += i10;
        c(this.f35420d);
        c(str);
        if (!f35416g && !b()) {
            throw new AssertionError();
        }
        this.f35421e.append(C10656zq0.f54547c);
        this.f35422f = -1;
    }

    private void a() {
        ArrayList arrayList = this.f35417a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ParseFlagInfo parseFlagInfo = (ParseFlagInfo) obj;
            a(parseFlagInfo.getFlagFormat());
            parseFlagInfo.getFlagFormatAlternatives().forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ParseFlagPrinter.this.a((String) obj2);
                }
            });
            parseFlagInfo.getFlagHelp().forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ParseFlagPrinter.this.b((String) obj2);
                }
            });
        }
    }
}
