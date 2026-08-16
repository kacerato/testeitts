package ag;

import nf.InterfaceC14394D;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class C3643z {
    @InterfaceC14394D
    @NotNull
    public static final <T extends Appendable> T a(@NotNull T t10, @NotNull CharSequence... value) {
        kotlin.jvm.internal.M.p(t10, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        for (CharSequence charSequence : value) {
            t10.append(charSequence);
        }
        return t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void b(@NotNull Appendable appendable, T t10, @Nullable Mf.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        if (lVar != null) {
            appendable.append(lVar.invoke(t10));
            return;
        }
        if (t10 == 0 ? true : t10 instanceof CharSequence) {
            appendable.append((CharSequence) t10);
        } else if (t10 instanceof Character) {
            appendable.append(((Character) t10).charValue());
        } else {
            appendable.append(t10.toString());
        }
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final Appendable c(Appendable appendable) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        return appendable.append('\n');
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final Appendable d(Appendable appendable, char c10) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        return appendable.append(c10).append('\n');
    }

    @Ef.f
    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    public static final Appendable e(Appendable appendable, CharSequence charSequence) {
        kotlin.jvm.internal.M.p(appendable, "<this>");
        return appendable.append(charSequence).append('\n');
    }

    @InterfaceC14394D
    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final <T extends Appendable> T f(@NotNull T t10, @NotNull CharSequence value, int i10, int i11) {
        kotlin.jvm.internal.M.p(t10, "<this>");
        kotlin.jvm.internal.M.p(value, "value");
        T t11 = (T) t10.append(value, i10, i11);
        kotlin.jvm.internal.M.n(t11, "null cannot be cast to non-null type T of kotlin.text.StringsKt__AppendableKt.appendRange");
        return t11;
    }
}
