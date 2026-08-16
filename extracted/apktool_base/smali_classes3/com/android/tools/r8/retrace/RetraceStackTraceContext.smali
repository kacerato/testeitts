.class public interface abstract Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Yj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Yj0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Zj0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Yj0;->a:Lcom/android/tools/r8/references/ClassReference;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Yj0;->b:Ljava/util/OptionalInt;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/Zj0;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/OptionalInt;)V

    return-object v1
.end method
