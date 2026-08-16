package com.android.tools.r8.dex;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

public class C4318s {

    public final ByteBuffer f35933a;

    public C4318s(ByteBuffer byteBuffer) {
        this.f35933a = byteBuffer;
    }

    public static C4318s b(byte[] bArr) {
        return new C4318s(ByteBuffer.wrap(bArr));
    }

    public ByteBuffer a() {
        return this.f35933a;
    }

    public void c(int i10) {
        this.f35933a.position(i10);
    }

    public short d() {
        return a().getShort();
    }

    public final String e() {
        byte[] bArr = new byte[this.f35933a.getInt()];
        a(bArr);
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public final String f() {
        byte[] bArr = new byte[this.f35933a.getShort() & 65535];
        a(bArr);
        return new String(bArr, StandardCharsets.UTF_8);
    }

    public void a(ByteOrder byteOrder) {
        a().order(byteOrder);
    }

    public int b() {
        return a().capacity();
    }

    public byte a(int i10) {
        return a().get(i10);
    }

    public int b(int i10) {
        return a().getInt(i10);
    }

    public int c() {
        return a().getInt();
    }

    public void a(byte[] bArr) {
        a().get(bArr);
    }
}
