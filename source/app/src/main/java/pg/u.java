package pg;

import eg.InterfaceC13153z0;
import kotlin.jvm.internal.J;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,33:1\n55#2,8:34\n*S KotlinDebug\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt\n*L\n31#1:34,8\n*E\n"})
public final class u {

    @t0({"SMAP\nWhileSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhileSelect.kt\nkotlinx/coroutines/selects/WhileSelectKt$whileSelect$1\n*L\n1#1,33:1\n*E\n"})
    @Bf.f(c = "kotlinx.coroutines.selects.WhileSelectKt", f = "WhileSelect.kt", i = {0}, l = {41}, m = "whileSelect", n = {"builder"}, s = {"L$0"})
    public static final class a extends Bf.d {

        public Object f103965b;

        public Object f103966c;

        public int f103967d;

        public a(yf.f<? super a> fVar) {
            super(fVar);
        }

        @Override
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f103966c = obj;
            this.f103967d |= Integer.MIN_VALUE;
            return u.a(null, this);
        }
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x004c -> B:10:0x004f). Please report as a decompilation issue!!! */
    @eg.InterfaceC13153z0
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull Mf.l<? super pg.InterfaceC14996c<? super java.lang.Boolean>, nf.P0> r4, @org.jetbrains.annotations.NotNull yf.f<? super nf.P0> r5) {
        /*
            boolean r0 = r5 instanceof pg.u.a
            if (r0 == 0) goto L13
            r0 = r5
            pg.u$a r0 = (pg.u.a) r0
            int r1 = r0.f103967d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f103967d = r1
            goto L18
        L13:
            pg.u$a r0 = new pg.u$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f103966c
            java.lang.Object r1 = Af.d.l()
            int r2 = r0.f103967d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f103965b
            Mf.l r4 = (Mf.l) r4
            nf.C14418j0.n(r5)
            goto L4f
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            nf.C14418j0.n(r5)
        L38:
            pg.l r5 = new pg.l
            yf.j r2 = r0.getContext()
            r5.<init>(r2)
            r4.invoke(r5)
            r0.f103965b = r4
            r0.f103967d = r3
            java.lang.Object r5 = r5.X(r0)
            if (r5 != r1) goto L4f
            return r1
        L4f:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 != 0) goto L38
            nf.P0 r4 = nf.P0.f98194a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: pg.u.a(Mf.l, yf.f):java.lang.Object");
    }

    @InterfaceC13153z0
    public static final Object b(Mf.l<? super InterfaceC14996c<? super Boolean>, P0> lVar, yf.f<? super P0> fVar) {
        J.e(3);
        throw null;
    }
}
