package ag;

import kotlin.jvm.internal.t0;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.InterfaceC14429p;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nStringBuilderJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringBuilderJVM.kt\nkotlin/text/StringsKt__StringBuilderJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,437:1\n1#2:438\n*E\n"})
public class C3613G extends C3612F {
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.9")
    public static final StringBuilder C(StringBuilder sb2, byte b10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) b10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.9")
    public static final StringBuilder D(StringBuilder sb2, short s10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) s10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder E(StringBuilder sb2, byte b10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) b10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder F(StringBuilder sb2, double d10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(d10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder G(StringBuilder sb2, float f10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(f10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder H(StringBuilder sb2, int i10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(i10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder I(StringBuilder sb2, long j10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(j10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder J(StringBuilder sb2, StringBuffer stringBuffer) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(stringBuffer);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder K(StringBuilder sb2, StringBuilder sb3) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((CharSequence) sb3);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder L(StringBuilder sb2, short s10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) s10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder M(StringBuilder sb2, CharSequence value, int i10, int i11) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        sb2.append(value, i10, i11);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder N(StringBuilder sb2, char[] value, int i10, int i11) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        sb2.append(value, i10, i11 - i10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine()", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    @NotNull
    public static final Appendable O(@NotNull Appendable appendable) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        Appendable append = appendable.append(Y.f32042b);
        kotlin.jvm.internal.M.o(append, "append(...)");
        return append;
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final Appendable P(Appendable appendable, char c10) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        Appendable append = appendable.append(c10);
        kotlin.jvm.internal.M.o(append, "append(...)");
        return O(append);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final Appendable Q(Appendable appendable, CharSequence charSequence) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        Appendable append = appendable.append(charSequence);
        kotlin.jvm.internal.M.o(append, "append(...)");
        return O(append);
    }

    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine()", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    @NotNull
    public static final StringBuilder R(@NotNull StringBuilder sb2) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(Y.f32042b);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return sb2;
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder S(StringBuilder sb2, byte b10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) b10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder T(StringBuilder sb2, char c10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(c10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder U(StringBuilder sb2, double d10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(d10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder V(StringBuilder sb2, float f10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(f10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder W(StringBuilder sb2, int i10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(i10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder X(StringBuilder sb2, long j10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(j10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder Y(StringBuilder sb2, CharSequence charSequence) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(charSequence);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder Z(StringBuilder sb2, Object obj) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(obj);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder a0(StringBuilder sb2, String str) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(str);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder b0(StringBuilder sb2, StringBuffer stringBuffer) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(stringBuffer);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder c0(StringBuilder sb2, StringBuilder sb3) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((CharSequence) sb3);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder d0(StringBuilder sb2, short s10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append((int) s10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder e0(StringBuilder sb2, boolean z10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(z10);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @Ef.f
    @InterfaceC14427o(message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @InterfaceC14412g0(expression = "appendLine(value)", imports = {}))
    @InterfaceC14429p(errorSince = "2.1", warningSince = "1.4")
    public static final StringBuilder f0(StringBuilder sb2, char[] value) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        sb2.append(value);
        kotlin.jvm.internal.M.o(sb2, "append(...)");
        return R(sb2);
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.3")
    @NotNull
    public static final StringBuilder g0(@NotNull StringBuilder sb2) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.setLength(0);
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder h0(StringBuilder sb2, int i10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        StringBuilder deleteCharAt = sb2.deleteCharAt(i10);
        kotlin.jvm.internal.M.o(deleteCharAt, "deleteCharAt(...)");
        return deleteCharAt;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder i0(StringBuilder sb2, int i10, int i11) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        StringBuilder delete = sb2.delete(i10, i11);
        kotlin.jvm.internal.M.o(delete, "delete(...)");
        return delete;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.9")
    public static final StringBuilder j0(StringBuilder sb2, int i10, byte b10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        StringBuilder insert = sb2.insert(i10, (int) b10);
        kotlin.jvm.internal.M.o(insert, "insert(...)");
        return insert;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.9")
    public static final StringBuilder k0(StringBuilder sb2, int i10, short s10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        StringBuilder insert = sb2.insert(i10, (int) s10);
        kotlin.jvm.internal.M.o(insert, "insert(...)");
        return insert;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder l0(StringBuilder sb2, int i10, CharSequence value, int i11, int i12) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        StringBuilder insert = sb2.insert(i10, value, i11, i12);
        kotlin.jvm.internal.M.o(insert, "insert(...)");
        return insert;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder m0(StringBuilder sb2, int i10, char[] value, int i11, int i12) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        StringBuilder insert = sb2.insert(i10, value, i11, i12 - i11);
        kotlin.jvm.internal.M.o(insert, "insert(...)");
        return insert;
    }

    @Ef.f
    public static final void n0(StringBuilder sb2, int i10, char c10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.setCharAt(i10, c10);
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder o0(StringBuilder sb2, int i10, int i11, String value) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        StringBuilder replace = sb2.replace(i10, i11, value);
        kotlin.jvm.internal.M.o(replace, "replace(...)");
        return replace;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.4")
    public static final void p0(StringBuilder sb2, char[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        sb2.getChars(i11, i12, destination, i10);
    }

    public static void q0(StringBuilder sb2, char[] destination, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = sb2.length();
        }
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(destination, "destination");
        sb2.getChars(i11, i12, destination, i10);
    }
}
