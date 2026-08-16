.class public abstract Lcom/android/tools/r8/internal/Hj0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Gj0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/android/tools/r8/internal/Gj0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/Gj0;->b:Ljava/lang/Throwable;

    throw p0
.end method
