package JAVARuntime;

import d8.m;
import java.util.List;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ListStream.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ListStream.class
  classes.dex
 */
@ClassCategory(cat = {"Lists"})
public final class ListStream {
    public static final int HALF_THREADS = 411;
    public static final int MAX_THREADS = 412;
    public static final int FIXED_THREADS = 413;

    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override
        public void run() {
            int N10;
            switch (ListStream.access$000(ListStream.this)) {
                case 411:
                    N10 = Nc.b.N(1, Device.availableProcessors() / 2);
                    break;
                case 412:
                    N10 = Device.availableProcessors();
                    break;
                case 413:
                    N10 = ListStream.access$100(ListStream.this);
                    break;
                default:
                    throw new IllegalArgumentException("Invalid threadsSequence, use ListStream.HALF_THREADS, ListStream.MAX_THREADS or ListStream.FIXED_THREADS");
            }
            final int ceil = (int) Math.ceil(ListStream.access$200(ListStream.this).size() / N10);
            final java.util.concurrent.atomic.AtomicInteger atomicInteger = new java.util.concurrent.atomic.AtomicInteger();
            for (int i10 = 0; i10 < N10; i10++) {
                final int i11 = ceil * i10;
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        for (int i12 = 0; i12 < ceil; i12++) {
                            try {
                                final int i13 = i11 + i12;
                                if (ListStream.access$200(ListStream.this).size() <= i13) {
                                    atomicInteger.incrementAndGet();
                                    return;
                                }
                                try {
                                    final Object obj = ListStream.access$200(ListStream.this).get(i13);
                                    m.d(new InterfaceC14490d() {
                                        @Override
                                        public void run() {
                                            ListStream.access$400(ListStream.this).execute(obj, i13, ListStream.access$300(ListStream.this));
                                        }
                                    });
                                } catch (Error e10) {
                                    m.d(new InterfaceC14490d() {
                                        @Override
                                        public void run() {
                                            ListStream.access$400(ListStream.this).onError(null, e10, i13, ListStream.access$300(ListStream.this));
                                        }
                                    });
                                } catch (Exception e11) {
                                    m.d(new InterfaceC14490d() {
                                        @Override
                                        public void run() {
                                            ListStream.access$400(ListStream.this).onError(e11, null, i13, ListStream.access$300(ListStream.this));
                                        }
                                    });
                                }
                            } catch (Error e12) {
                                e = e12;
                                e.printStackTrace();
                                return;
                            } catch (Exception e13) {
                                e = e13;
                                e.printStackTrace();
                                return;
                            }
                        }
                        atomicInteger.incrementAndGet();
                    }
                }).start();
            }
            do {
            } while (atomicInteger.get() < N10);
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    ListStream.access$400(ListStream.this).onFinish(ListStream.access$300(ListStream.this));
                }
            });
        }
    }

    public ListStream(List list) {
    }

    public ListStream(List list, int i10, ListStreamListener listStreamListener) {
    }

    public ListStream(Object obj, List list, int i10, ListStreamListener listStreamListener) {
    }

    public ListStream(List list, int i10, int i11, ListStreamListener listStreamListener) {
    }

    public ListStream(Object obj, List list, int i10, int i11, ListStreamListener listStreamListener) {
    }

    public void setThreadsSequence(int i10) {
    }

    public void setThreadsCount(int i10) {
    }

    public void setListStreamListener(ListStreamListener listStreamListener) {
    }
}
