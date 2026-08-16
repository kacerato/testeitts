package com.android.tools.r8.internal;

import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.StringConsumer;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.utils.ExceptionDiagnostic;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.file.FileSystemException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public abstract class AbstractC8333lv {

    public interface a {
        void run() throws IOException, C5325If, ResourceException;
    }

    public static String a() {
        return (String) Thread.getAllStackTraces().entrySet().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean equals;
                equals = ((Thread) ((Map.Entry) obj).getKey()).getName().equals(T5.b.f24045b);
                return equals;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC8333lv.b((Map.Entry) obj);
            }
        }).flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Stream of2;
                of2 = Stream.of((Object[]) ((StackTraceElement[]) obj));
                return of2;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String stackTraceElement;
                stackTraceElement = ((StackTraceElement) obj).toString();
                return stackTraceElement;
            }
        }).collect(Collectors.joining(System.lineSeparator()));
    }

    public static StackTraceElement[] b(Map.Entry entry) {
        return (StackTraceElement[]) entry.getValue();
    }

    public static void b(C5094Ef0 c5094Ef0, a aVar) throws CompilationFailedException {
        a(c5094Ef0, aVar);
    }

    public static void a(C5094Ef0 c5094Ef0, final StringConsumer stringConsumer, final String str) {
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                StringConsumer.this.accept(str, (DiagnosticsHandler) obj);
            }
        }.accept(c5094Ef0);
        c5094Ef0.a();
    }

    public static void a(C5094Ef0 c5094Ef0, final StringConsumer stringConsumer) {
        Objects.requireNonNull(stringConsumer);
        new Consumer() {
            @Override
            public final void accept(Object obj) {
                StringConsumer.this.finished((DiagnosticsHandler) obj);
            }
        }.accept(c5094Ef0);
        c5094Ef0.a();
    }

    public static void a(C5094Ef0 c5094Ef0, Consumer consumer) {
        consumer.accept(c5094Ef0);
        c5094Ef0.a();
    }

    public static void a(C5094Ef0 c5094Ef0, a aVar) {
        try {
            aVar.run();
            c5094Ef0.a();
        } catch (Throwable th2) {
            throw a(c5094Ef0, th2);
        }
    }

    public static CompilationFailedException a(C5094Ef0 c5094Ef0, Throwable th2) {
        return (CompilationFailedException) a(c5094Ef0, th2, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return com.android.tools.r8.Q.a((String) obj, (Throwable) obj2, ((Boolean) obj3).booleanValue());
            }
        }, C7348g.class);
    }

    public static Exception a(DiagnosticsHandler diagnosticsHandler, Throwable th2, InterfaceC7495gt0 interfaceC7495gt0, Class cls) {
        Position position;
        Position position2;
        Origin unknown = Origin.unknown();
        Position position3 = Position.UNKNOWN;
        ArrayList arrayList = new ArrayList();
        Throwable th3 = th2;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            z11 |= th3 instanceof I8;
            z10 |= cls.isAssignableFrom(th3.getClass());
            Origin a10 = a(th3);
            if (a10 != Origin.unknown()) {
                unknown = a10;
            }
            if (th3 instanceof C5325If) {
                position = ((C5325If) th3).f41160c;
            } else if (th3 instanceof C8667nv) {
                position = ((C8667nv) th3).f51115c;
            } else if (th3 instanceof C7348g) {
                Diagnostic diagnostic = ((C7348g) th3).f48161b;
                position = diagnostic != null ? diagnostic.getPosition() : Position.UNKNOWN;
            } else {
                position = Position.UNKNOWN;
            }
            position2 = Position.UNKNOWN;
            if (position != position2) {
                position3 = position;
            }
            if (th3.getCause() == null || arrayList.contains(th3)) {
                break;
            }
            arrayList.add(th3);
            th3 = th3.getCause();
        }
        if (th2 != th3) {
            th3.addSuppressed(th2);
        }
        if (!z11 && !z10) {
            diagnosticsHandler.error(new ExceptionDiagnostic(th3, unknown, position3));
        }
        StringBuilder sb2 = new StringBuilder("Compilation failed to complete");
        if (position3 != position2) {
            sb2.append(", position: ");
            sb2.append((Object) position3);
        }
        if (unknown != Origin.unknown()) {
            sb2.append(", origin: ");
            sb2.append((Object) unknown);
        }
        Exception exc = (Exception) interfaceC7495gt0.a(sb2.toString(), th3, Boolean.valueOf(z11));
        StackTraceElement stackTraceElement = new StackTraceElement("Version", "fakeStackEntry", "Version_8.10.21.java", 0);
        StackTraceElement[] stackTrace = exc.getStackTrace();
        int length = stackTrace.length + 1;
        int i10 = AbstractC8368m60.f50199a;
        Object[] copyOf = Arrays.copyOf(stackTrace.length == 0 ? stackTrace : Arrays.copyOf(stackTrace, 0), length);
        copyOf[0] = stackTraceElement;
        System.arraycopy(stackTrace, 0, copyOf, 1, stackTrace.length);
        exc.setStackTrace((StackTraceElement[]) copyOf);
        return exc;
    }

    public static Origin a(Throwable th2) {
        if (th2 instanceof IOException) {
            IOException iOException = (IOException) th2;
            if (iOException instanceof FileSystemException) {
                FileSystemException fileSystemException = (FileSystemException) iOException;
                if (fileSystemException.getFile() != null && !fileSystemException.getFile().isEmpty()) {
                    return new PathOrigin(Paths.get(fileSystemException.getFile(), new String[0]));
                }
            }
            return Origin.unknown();
        }
        if (th2 instanceof C5325If) {
            return ((C5325If) th2).f41159b;
        }
        if (th2 instanceof ResourceException) {
            return ((ResourceException) th2).getOrigin();
        }
        if (th2 instanceof C8667nv) {
            return ((C8667nv) th2).f51114b;
        }
        if (th2 instanceof C7348g) {
            Diagnostic diagnostic = ((C7348g) th2).f48161b;
            return diagnostic != null ? diagnostic.getOrigin() : Origin.unknown();
        }
        return Origin.unknown();
    }

    public static void a(InterfaceC8500mv interfaceC8500mv) {
        String str = "Compilation failed";
        try {
            interfaceC8500mv.run();
        } catch (CompilationFailedException e10) {
            Throwable cause = e10.getCause();
            PrintStream printStream = System.err;
            if (!(cause instanceof C5325If) && !(cause instanceof C7348g)) {
                str = "Compilation failed with an internal error.";
            }
            printStream.println(str);
            throw new RuntimeException(e10);
        } catch (RuntimeException e11) {
            PrintStream printStream2 = System.err;
            if (!(e11 instanceof C5325If) && !(e11 instanceof C7348g)) {
                str = "Compilation failed with an internal error.";
            }
            printStream2.println(str);
            throw e11;
        }
    }

    public static RuntimeException a(ExecutionException executionException) {
        return new RuntimeException(executionException);
    }

    public static void a(Origin origin, Position position, final Runnable runnable) {
        a(origin, position, new Supplier() {
            @Override
            public final Object get() {
                return AbstractC8333lv.a(Runnable.this);
            }
        });
    }

    public static Object a(Runnable runnable) {
        runnable.run();
        return null;
    }

    public static Object a(Origin origin, Position position, Supplier supplier) {
        Position position2;
        try {
            return supplier.get();
        } catch (I8 e10) {
            throw e10;
        } catch (RuntimeException e11) {
            int i10 = C8667nv.f51113d;
            if (origin != Origin.unknown() || position != Position.UNKNOWN) {
                Origin a10 = a(e11);
                if (e11 instanceof C5325If) {
                    position2 = ((C5325If) e11).f41160c;
                } else if (e11 instanceof C8667nv) {
                    position2 = ((C8667nv) e11).f51115c;
                } else if (e11 instanceof C7348g) {
                    Diagnostic diagnostic = ((C7348g) e11).f48161b;
                    position2 = diagnostic != null ? diagnostic.getPosition() : Position.UNKNOWN;
                } else {
                    position2 = Position.UNKNOWN;
                }
                if (origin != a10 || position != position2) {
                    throw new C8667nv(e11, origin, position);
                }
                throw e11;
            }
            throw e11;
        }
    }
}
