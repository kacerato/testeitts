package ag;

import kotlin.NotImplementedError;
import nf.EnumC14431q;
import nf.InterfaceC14394D;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import nf.P0;
import org.jetbrains.annotations.NotNull;

public class C3614H extends C3613G {
    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder A0(StringBuilder sb2, boolean z10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(z10);
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder B0(StringBuilder sb2, char[] value) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        sb2.append(value);
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.1")
    public static final String C0(int i10, Mf.l<? super StringBuilder, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        StringBuilder sb2 = new StringBuilder(i10);
        builderAction.invoke(sb2);
        return sb2.toString();
    }

    @Ef.f
    public static final String D0(Mf.l<? super StringBuilder, P0> builderAction) {
        kotlin.jvm.internal.M.p(builderAction, "builderAction");
        StringBuilder sb2 = new StringBuilder();
        builderAction.invoke(sb2);
        return sb2.toString();
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.WARNING, message = "Use append(value: Any?) instead", replaceWith = @InterfaceC14412g0(expression = "append(value = obj)", imports = {}))
    @InterfaceC14394D
    public static final StringBuilder r0(StringBuilder sb2, Object obj) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(obj);
        return sb2;
    }

    @Ef.f
    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use appendRange instead.", replaceWith = @InterfaceC14412g0(expression = "this.appendRange(str, offset, offset + len)", imports = {}))
    @InterfaceC14394D
    public static final StringBuilder s0(StringBuilder sb2, char[] str, int i10, int i11) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(str, "str");
        throw new NotImplementedError(null, 1, null);
    }

    @InterfaceC14394D
    @NotNull
    public static final StringBuilder t0(@NotNull StringBuilder sb2, @NotNull Object... value) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        for (Object obj : value) {
            sb2.append(obj);
        }
        return sb2;
    }

    @InterfaceC14394D
    @NotNull
    public static final StringBuilder u0(@NotNull StringBuilder sb2, @NotNull String... value) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        for (String str : value) {
            sb2.append(str);
        }
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder v0(StringBuilder sb2) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder w0(StringBuilder sb2, char c10) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(c10);
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder x0(StringBuilder sb2, CharSequence charSequence) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(charSequence);
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder y0(StringBuilder sb2, Object obj) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(obj);
        sb2.append('\n');
        return sb2;
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final StringBuilder z0(StringBuilder sb2, String str) {
        kotlin.jvm.internal.M.p(sb2, "<this>");
        sb2.append(str);
        sb2.append('\n');
        return sb2;
    }
}
