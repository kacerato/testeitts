package mg;

import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/WeakMapCtorCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
public final class g0 extends AbstractC14250k {

    @NotNull
    public static final g0 f97069a = new g0();

    @NotNull
    public static final ReentrantReadWriteLock f97070b = new ReentrantReadWriteLock();

    @NotNull
    public static final WeakHashMap<Class<? extends Throwable>, Mf.l<Throwable, Throwable>> f97071c = new WeakHashMap<>();

    @Override
    @NotNull
    public Mf.l<Throwable, Throwable> a(@NotNull Class<? extends Throwable> cls) {
        Mf.l<Throwable, Throwable> b10;
        ReentrantReadWriteLock reentrantReadWriteLock = f97070b;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            Mf.l<Throwable, Throwable> lVar = f97071c.get(cls);
            if (lVar != null) {
                return lVar;
            }
            ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
            int i10 = 0;
            int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
            for (int i11 = 0; i11 < readHoldCount; i11++) {
                readLock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                WeakHashMap<Class<? extends Throwable>, Mf.l<Throwable, Throwable>> weakHashMap = f97071c;
                Mf.l<Throwable, Throwable> lVar2 = weakHashMap.get(cls);
                if (lVar2 != null) {
                    return lVar2;
                }
                b10 = C14253n.b(cls);
                weakHashMap.put(cls, b10);
                while (i10 < readHoldCount) {
                    readLock2.lock();
                    i10++;
                }
                writeLock.unlock();
                return b10;
            } finally {
                while (i10 < readHoldCount) {
                    readLock2.lock();
                    i10++;
                }
                writeLock.unlock();
            }
        } finally {
            readLock.unlock();
        }
    }
}
