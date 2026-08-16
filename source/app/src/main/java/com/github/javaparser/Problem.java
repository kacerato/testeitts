package com.github.javaparser;

import com.bumptech.glide.load.engine.GlideException;
import com.github.javaparser.utils.LineSeparator;
import com.github.javaparser.utils.Utils;
import java.util.Comparator;
import java.util.Optional;
import java.util.function.Function;

public class Problem {
    public static Comparator<Problem> PROBLEM_BY_BEGIN_POSITION = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            int lambda$static$6;
            lambda$static$6 = Problem.lambda$static$6((Problem) obj, (Problem) obj2);
            return lambda$static$6;
        }
    };
    private final Throwable cause;
    private final TokenRange location;
    private final String message;

    public Problem(String message, TokenRange location, Throwable cause) {
        Utils.assertNotNull(message);
        this.message = message;
        this.location = location;
        this.cause = cause;
    }

    public String lambda$getVerboseMessage$1(TokenRange l10) {
        return ((String) l10.getBegin().getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$null$0;
                lambda$null$0 = Problem.lambda$null$0((Range) obj);
                return lambda$null$0;
            }
        }).orElse("(line ?,col ?)")) + " " + this.message;
    }

    public static String lambda$null$0(Range r10) {
        return r10.begin.toString();
    }

    public static Optional lambda$null$3(TokenRange l10) {
        return l10.getBegin().getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position position;
                position = ((Range) obj).begin;
                return position;
            }
        });
    }

    public static Optional lambda$null$5(TokenRange l10) {
        return l10.getBegin().getRange().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Position position;
                position = ((Range) obj).begin;
                return position;
            }
        });
    }

    public static int lambda$static$6(Problem a10, Problem b10) {
        Optional<U> flatMap = a10.getLocation().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$null$3;
                lambda$null$3 = Problem.lambda$null$3((TokenRange) obj);
                return lambda$null$3;
            }
        });
        Optional<U> flatMap2 = b10.getLocation().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                Optional lambda$null$5;
                lambda$null$5 = Problem.lambda$null$5((TokenRange) obj);
                return lambda$null$5;
            }
        });
        if (flatMap.isPresent() && flatMap2.isPresent()) {
            return ((Position) flatMap.get()).compareTo((Position) flatMap2.get());
        }
        if (a10.getLocation().isPresent() || b10.getLocation().isPresent()) {
            return a10.getLocation().isPresent() ? 1 : -1;
        }
        return 0;
    }

    public Optional<Throwable> getCause() {
        return Optional.ofNullable(this.cause);
    }

    public Optional<TokenRange> getLocation() {
        return Optional.ofNullable(this.location);
    }

    public String getMessage() {
        return this.message;
    }

    public String getVerboseMessage() {
        return (String) getLocation().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$getVerboseMessage$1;
                lambda$getVerboseMessage$1 = Problem.this.lambda$getVerboseMessage$1((TokenRange) obj);
                return lambda$getVerboseMessage$1;
            }
        }).orElse(this.message);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(getVerboseMessage());
        if (this.cause != null) {
            LineSeparator lineSeparator = LineSeparator.SYSTEM;
            sb2.append((Object) lineSeparator);
            sb2.append("Problem stacktrace : ");
            sb2.append((Object) lineSeparator);
            int i10 = 0;
            while (i10 < this.cause.getStackTrace().length) {
                StackTraceElement stackTraceElement = this.cause.getStackTrace()[i10];
                sb2.append(GlideException.a.f59088e);
                sb2.append(stackTraceElement.toString());
                i10++;
                if (i10 != this.cause.getStackTrace().length) {
                    sb2.append((Object) LineSeparator.SYSTEM);
                }
            }
        }
        return sb2.toString();
    }
}
