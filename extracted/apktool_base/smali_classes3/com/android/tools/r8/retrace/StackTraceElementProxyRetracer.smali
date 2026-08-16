.class public interface abstract Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;
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


# direct methods
.method public static createDefault(Lcom/android/tools/r8/retrace/Retracer;)Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ST:",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "TT;TST;>;>(",
            "Lcom/android/tools/r8/retrace/Retracer;",
            ")",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer<",
            "TT;TST;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/Qn0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Qn0;-><init>(Lcom/android/tools/r8/retrace/Retracer;)V

    return-object v0
.end method


# virtual methods
.method public abstract retrace(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TST;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult<",
            "TT;TST;>;"
        }
    .end annotation
.end method
