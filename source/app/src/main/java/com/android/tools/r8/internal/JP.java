package com.android.tools.r8.internal;

import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0013\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018B\t\b\u0004\u00a2\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&\u0082\u0001\u0006\u0019\u001a\u001b\u001c\u001d\u001e\u00a8\u0006\u001f"}, d2 = {"Lkotlin/metadata/KmAnnotationArgument;", "", ConstantDescs.INIT_NAME, "()V", "toString", "", "LiteralValue", "ByteValue", "CharValue", "ShortValue", "IntValue", "LongValue", "FloatValue", "DoubleValue", "BooleanValue", "UByteValue", "UShortValue", "UIntValue", "ULongValue", "StringValue", "EnumValue", "AnnotationValue", "ArrayValue", "KClassValue", "ArrayKClassValue", "Lkotlin/metadata/KmAnnotationArgument$AnnotationValue;", "Lkotlin/metadata/KmAnnotationArgument$ArrayKClassValue;", "Lkotlin/metadata/KmAnnotationArgument$ArrayValue;", "Lkotlin/metadata/KmAnnotationArgument$EnumValue;", "Lkotlin/metadata/KmAnnotationArgument$KClassValue;", "Lkotlin/metadata/KmAnnotationArgument$LiteralValue;", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class JP {

    @InterfaceC9597tW(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003H\u00c6\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u0012"}, d2 = {"Lkotlin/metadata/KmAnnotationArgument$ArrayValue;", "Lkotlin/metadata/KmAnnotationArgument;", "elements", "", ConstantDescs.INIT_NAME, "(Ljava/util/List;)V", "getElements", "()Ljava/util/List;", "toString", "", "component1", "copy", "equals", "", "other", "", "hashCode", "", "kotlin-metadata"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class a extends JP {

        public final ArrayList f41391a;

        public a(ArrayList arrayList) {
            this.f41391a = arrayList;
        }

        public final List<JP> a() {
            return this.f41391a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && GJ.a(this.f41391a, ((a) obj).f41391a);
        }

        public final int hashCode() {
            return this.f41391a.hashCode();
        }

        @Override
        public final String toString() {
            return "ArrayValue(" + ((Object) this.f41391a) + ')';
        }
    }

    public abstract String toString();
}
