.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getResultContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
.end method

.method public abstract stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy<",
            "TT;TST;>;>;"
        }
    .end annotation
.end method
