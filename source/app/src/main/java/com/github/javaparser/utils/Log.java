package com.github.javaparser.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.function.Supplier;

public class Log {
    private static Adapter CURRENT_ADAPTER = new SilentAdapter();

    public interface Adapter {
        void error(Supplier<Throwable> throwableSupplier, Supplier<String> messageSupplier);

        void info(Supplier<String> message);

        void trace(Supplier<String> message);
    }

    public static class SilentAdapter implements Adapter {
        @Override
        public void error(Supplier<Throwable> throwableSupplier, Supplier<String> messageSupplier) {
        }

        @Override
        public void info(Supplier<String> messageSupplier) {
        }

        @Override
        public void trace(Supplier<String> messageSupplier) {
        }
    }

    public static class StandardOutStandardErrorAdapter implements Adapter {
        private void printStackTrace(Throwable throwable) {
            try {
                final StringWriter stringWriter = new StringWriter();
                try {
                    PrintWriter printWriter = new PrintWriter(stringWriter);
                    try {
                        throwable.printStackTrace(printWriter);
                        trace(new Supplier() {
                            @Override
                            public final Object get() {
                                return StringWriter.this.toString();
                            }
                        });
                        printWriter.close();
                        stringWriter.close();
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } finally {
                    }
                }
            } catch (IOException unused) {
                throw new AssertionError((Object) "Error in logging library");
            }
        }

        @Override
        public void error(Supplier<Throwable> throwableSupplier, Supplier<String> messageSupplier) {
            Throwable th2 = throwableSupplier.get();
            String str = messageSupplier.get();
            if (str == null) {
                System.err.println(th2.getMessage());
                printStackTrace(th2);
            } else {
                if (th2 == null) {
                    System.err.println(str);
                    return;
                }
                System.err.println(str + b3.s.f32937c + th2.getMessage());
                printStackTrace(th2);
            }
        }

        @Override
        public void info(Supplier<String> messageSupplier) {
            System.out.println(messageSupplier.get());
        }

        @Override
        public void trace(Supplier<String> messageSupplier) {
            System.out.println(messageSupplier.get());
        }
    }

    public static void error(final Throwable throwable) {
        CURRENT_ADAPTER.error(new Supplier() {
            @Override
            public final Object get() {
                Throwable lambda$error$1;
                lambda$error$1 = Log.lambda$error$1(Throwable.this);
                return lambda$error$1;
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                String lambda$error$2;
                lambda$error$2 = Log.lambda$error$2();
                return lambda$error$2;
            }
        });
    }

    @SafeVarargs
    public static void info(String format, Supplier<Object>... args) {
        CURRENT_ADAPTER.info(makeFormattingSupplier(format, args));
    }

    public static Throwable lambda$error$1(final Throwable throwable) {
        return throwable;
    }

    public static String lambda$error$2() {
        return null;
    }

    public static Throwable lambda$error$3(final Throwable throwable) {
        return throwable;
    }

    public static Throwable lambda$error$4() {
        return null;
    }

    public static String lambda$makeFormattingSupplier$0(final Supplier[] args, final String format) {
        Object[] objArr = new Object[args.length];
        for (int i10 = 0; i10 < args.length; i10++) {
            objArr[i10] = args[i10].get();
        }
        return CodeGenerationUtils.f(format, objArr);
    }

    private static Supplier<String> makeFormattingSupplier(final String format, final Supplier<Object>[] args) {
        return new Supplier() {
            @Override
            public final Object get() {
                String lambda$makeFormattingSupplier$0;
                lambda$makeFormattingSupplier$0 = Log.lambda$makeFormattingSupplier$0(args, format);
                return lambda$makeFormattingSupplier$0;
            }
        };
    }

    public static void setAdapter(Adapter adapter) {
        CURRENT_ADAPTER = adapter;
    }

    @SafeVarargs
    public static void trace(String format, Supplier<Object>... args) {
        CURRENT_ADAPTER.trace(makeFormattingSupplier(format, args));
    }

    @SafeVarargs
    public static void error(final Throwable throwable, String format, Supplier<Object>... args) {
        CURRENT_ADAPTER.error(new Supplier() {
            @Override
            public final Object get() {
                Throwable lambda$error$3;
                lambda$error$3 = Log.lambda$error$3(Throwable.this);
                return lambda$error$3;
            }
        }, makeFormattingSupplier(format, args));
    }

    @SafeVarargs
    public static void error(String format, Supplier<Object>... args) {
        CURRENT_ADAPTER.error(new Supplier() {
            @Override
            public final Object get() {
                Throwable lambda$error$4;
                lambda$error$4 = Log.lambda$error$4();
                return lambda$error$4;
            }
        }, makeFormattingSupplier(format, args));
    }
}
