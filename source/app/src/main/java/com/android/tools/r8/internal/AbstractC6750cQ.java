package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;

@InterfaceC9597tW(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004\u00a2\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t\u00a8\u0006\n"}, d2 = {"Lkotlin/metadata/KmClassifier;", "", ConstantDescs.INIT_NAME, "()V", "Class", "TypeParameter", "TypeAlias", "Lkotlin/metadata/KmClassifier$Class;", "Lkotlin/metadata/KmClassifier$TypeAlias;", "Lkotlin/metadata/KmClassifier$TypeParameter;", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AbstractC6750cQ {

    @InterfaceC9597tW(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\t\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\u0017\u0010\n\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u00a8\u0006\u0012"}, d2 = {"Lkotlin/metadata/KmClassifier$Class;", "Lkotlin/metadata/KmClassifier;", "name", "", "Lkotlin/metadata/ClassName;", ConstantDescs.INIT_NAME, "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a extends AbstractC6750cQ {

        public final String f47039a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(0);
            GJ.c(str, "name");
            this.f47039a = str;
        }

        public final String a() {
            return this.f47039a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && GJ.a((Object) this.f47039a, (Object) ((a) obj).f47039a);
        }

        public final int hashCode() {
            return this.f47039a.hashCode();
        }

        public final String toString() {
            return "Class(name=" + this.f47039a + ')';
        }
    }

    @InterfaceC9597tW(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\t\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\u0017\u0010\n\u001a\u00020\u00002\f\b\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u00a8\u0006\u0012"}, d2 = {"Lkotlin/metadata/KmClassifier$TypeAlias;", "Lkotlin/metadata/KmClassifier;", "name", "", "Lkotlin/metadata/ClassName;", ConstantDescs.INIT_NAME, "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class b extends AbstractC6750cQ {

        public final String f47040a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(0);
            GJ.c(str, "name");
            this.f47040a = str;
        }

        public final String a() {
            return this.f47040a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && GJ.a((Object) this.f47040a, (Object) ((b) obj).f47040a);
        }

        public final int hashCode() {
            return this.f47040a.hashCode();
        }

        public final String toString() {
            return "TypeAlias(name=" + this.f47040a + ')';
        }
    }

    @InterfaceC9597tW(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u0011"}, d2 = {"Lkotlin/metadata/KmClassifier$TypeParameter;", "Lkotlin/metadata/KmClassifier;", "id", "", ConstantDescs.INIT_NAME, "(I)V", "getId", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class c extends AbstractC6750cQ {

        public final int f47041a;

        public c(int i10) {
            super(0);
            this.f47041a = i10;
        }

        public final int a() {
            return this.f47041a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && this.f47041a == ((c) obj).f47041a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f47041a);
        }

        public final String toString() {
            return "TypeParameter(id=" + this.f47041a + ')';
        }
    }

    public AbstractC6750cQ(int i10) {
        this();
    }

    private AbstractC6750cQ() {
    }
}
