package gg;

import kotlinx.coroutines.channels.ClosedReceiveChannelException;
import nf.C14418j0;
import nf.EnumC14431q;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface n<E> {

    public static final class a {

        @Bf.f(c = "kotlinx.coroutines.channels.ChannelIterator$DefaultImpls", f = "Channel.kt", i = {0}, l = {589}, m = "next", n = {"$this"}, s = {"L$0"})
        public static final class C1719a<E> extends Bf.d {

            public Object f89692b;

            public Object f89693c;

            public int f89694d;

            public C1719a(yf.f<? super C1719a> fVar) {
                super(fVar);
            }

            @Override
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f89693c = obj;
                this.f89694d |= Integer.MIN_VALUE;
                return a.a(null, this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Lf.j(name = "next")
        @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static Object a(n nVar, yf.f fVar) {
            C1719a c1719a;
            Object obj;
            int i10;
            if (fVar instanceof C1719a) {
                c1719a = (C1719a) fVar;
                int i11 = c1719a.f89694d;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    c1719a.f89694d = i11 - Integer.MIN_VALUE;
                    obj = c1719a.f89693c;
                    Object l10 = Af.d.l();
                    i10 = c1719a.f89694d;
                    if (i10 != 0) {
                        C14418j0.n(obj);
                        c1719a.f89692b = nVar;
                        c1719a.f89694d = 1;
                        obj = nVar.a(c1719a);
                        if (obj == l10) {
                            return l10;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        nVar = (n) c1719a.f89692b;
                        C14418j0.n(obj);
                    }
                    if (((Boolean) obj).booleanValue()) {
                        throw new ClosedReceiveChannelException(r.f89701a);
                    }
                    return nVar.next();
                }
            }
            c1719a = new C1719a(fVar);
            obj = c1719a.f89693c;
            Object l102 = Af.d.l();
            i10 = c1719a.f89694d;
            if (i10 != 0) {
            }
            if (((Boolean) obj).booleanValue()) {
            }
        }
    }

    @Nullable
    Object a(@NotNull yf.f<? super Boolean> fVar);

    @Lf.j(name = "next")
    @InterfaceC14427o(level = EnumC14431q.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
    Object b(yf.f fVar);

    E next();
}
