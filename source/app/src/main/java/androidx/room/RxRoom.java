package androidx.room;

import Be.AbstractC2362l;
import Be.AbstractC2368s;
import Be.EnumC2352b;
import Be.InterfaceC2364n;
import Be.InterfaceC2365o;
import af.C3604b;
import androidx.room.InvalidationTracker;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public class RxRoom {
    public static final Object NOTHING = new Object();

    @Deprecated
    public RxRoom() {
    }

    public static AbstractC2362l<Object> createFlowable(final RoomDatabase database, final String... tableNames) {
        return AbstractC2362l.y1(new InterfaceC2365o<Object>() {
            @Override
            public void subscribe(final InterfaceC2364n<Object> emitter) throws Exception {
                final InvalidationTracker.Observer observer = new InvalidationTracker.Observer(tableNames) {
                    @Override
                    public void onInvalidated(Set<String> tables) {
                        if (emitter.isCancelled()) {
                            return;
                        }
                        emitter.h(RxRoom.NOTHING);
                    }
                };
                if (!emitter.isCancelled()) {
                    database.getInvalidationTracker().addObserver(observer);
                    emitter.g(De.d.c(new Fe.a() {
                        @Override
                        public void run() throws Exception {
                            database.getInvalidationTracker().removeObserver(observer);
                        }
                    }));
                }
                if (emitter.isCancelled()) {
                    return;
                }
                emitter.h(RxRoom.NOTHING);
            }
        }, EnumC2352b.LATEST);
    }

    public static Be.B<Object> createObservable(final RoomDatabase database, final String... tableNames) {
        return Be.B.s1(new Be.E<Object>() {
            @Override
            public void subscribe(final Be.D<Object> emitter) throws Exception {
                final InvalidationTracker.Observer observer = new InvalidationTracker.Observer(tableNames) {
                    @Override
                    public void onInvalidated(Set<String> tables) {
                        emitter.h(RxRoom.NOTHING);
                    }
                };
                database.getInvalidationTracker().addObserver(observer);
                emitter.g(De.d.c(new Fe.a() {
                    @Override
                    public void run() throws Exception {
                        database.getInvalidationTracker().removeObserver(observer);
                    }
                }));
                emitter.h(RxRoom.NOTHING);
            }
        });
    }

    public static <T> Be.K<T> createSingle(final Callable<T> callable) {
        return Be.K.C(new Be.O<T>() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void subscribe(Be.M<T> emitter) throws Exception {
                try {
                    emitter.b(Callable.this.call());
                } catch (EmptyResultSetException e10) {
                    emitter.f(e10);
                }
            }
        });
    }

    private static Executor getExecutor(RoomDatabase database, boolean inTransaction) {
        return inTransaction ? database.getTransactionExecutor() : database.getQueryExecutor();
    }

    @Deprecated
    public static <T> AbstractC2362l<T> createFlowable(final RoomDatabase database, final String[] tableNames, final Callable<T> callable) {
        return createFlowable(database, false, tableNames, callable);
    }

    @Deprecated
    public static <T> Be.B<T> createObservable(final RoomDatabase database, final String[] tableNames, final Callable<T> callable) {
        return createObservable(database, false, tableNames, callable);
    }

    public static <T> AbstractC2362l<T> createFlowable(RoomDatabase roomDatabase, boolean z10, String[] strArr, Callable<T> callable) {
        Be.J b10 = C3604b.b(getExecutor(roomDatabase, z10));
        final AbstractC2368s o02 = AbstractC2368s.o0(callable);
        return (AbstractC2362l<T>) createFlowable(roomDatabase, strArr).n6(b10).U7(b10).n4(b10).L2(new Fe.o<Object, Be.y<T>>() {
            @Override
            public Be.y<T> apply(Object o10) throws Exception {
                return AbstractC2368s.this;
            }
        });
    }

    public static <T> Be.B<T> createObservable(RoomDatabase roomDatabase, boolean z10, String[] strArr, Callable<T> callable) {
        Be.J b10 = C3604b.b(getExecutor(roomDatabase, z10));
        final AbstractC2368s o02 = AbstractC2368s.o0(callable);
        return (Be.B<T>) createObservable(roomDatabase, strArr).K5(b10).o7(b10).c4(b10).C2(new Fe.o<Object, Be.y<T>>() {
            @Override
            public Be.y<T> apply(Object o10) throws Exception {
                return AbstractC2368s.this;
            }
        });
    }
}
