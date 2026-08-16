package com.google.ai.edge.litertlm;

import java.util.Arrays;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class InputData {

    public static final class a extends InputData {

        @NotNull
        public final byte[] f59862a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull byte[] bytes) {
            super(null);
            M.p(bytes, "bytes");
            this.f59862a = bytes;
        }

        public static a c(a aVar, byte[] bArr, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bArr = aVar.f59862a;
            }
            return aVar.b(bArr);
        }

        @NotNull
        public final byte[] a() {
            return this.f59862a;
        }

        @NotNull
        public final a b(@NotNull byte[] bytes) {
            M.p(bytes, "bytes");
            return new a(bytes);
        }

        @NotNull
        public final byte[] d() {
            return this.f59862a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof a) && M.g(this.f59862a, ((a) other).f59862a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f59862a);
        }

        @NotNull
        public String toString() {
            return "Audio(bytes=" + Arrays.toString(this.f59862a) + ")";
        }
    }

    public static final class b extends InputData {

        @NotNull
        public final byte[] f59863a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull byte[] bytes) {
            super(null);
            M.p(bytes, "bytes");
            this.f59863a = bytes;
        }

        public static b c(b bVar, byte[] bArr, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bArr = bVar.f59863a;
            }
            return bVar.b(bArr);
        }

        @NotNull
        public final byte[] a() {
            return this.f59863a;
        }

        @NotNull
        public final b b(@NotNull byte[] bytes) {
            M.p(bytes, "bytes");
            return new b(bytes);
        }

        @NotNull
        public final byte[] d() {
            return this.f59863a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof b) && M.g(this.f59863a, ((b) other).f59863a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f59863a);
        }

        @NotNull
        public String toString() {
            return "Image(bytes=" + Arrays.toString(this.f59863a) + ")";
        }
    }

    public static final class c extends InputData {

        @NotNull
        public final String f59864a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull String text) {
            super(null);
            M.p(text, "text");
            this.f59864a = text;
        }

        public static c c(c cVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = cVar.f59864a;
            }
            return cVar.b(str);
        }

        @NotNull
        public final String a() {
            return this.f59864a;
        }

        @NotNull
        public final c b(@NotNull String text) {
            M.p(text, "text");
            return new c(text);
        }

        @NotNull
        public final String d() {
            return this.f59864a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof c) && M.g(this.f59864a, ((c) other).f59864a);
        }

        public int hashCode() {
            return this.f59864a.hashCode();
        }

        @NotNull
        public String toString() {
            return "Text(text=" + this.f59864a + ")";
        }
    }

    public InputData(C14026x c14026x) {
        this();
    }

    public InputData() {
    }
}
