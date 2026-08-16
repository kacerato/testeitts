.class public Lcom/android/tools/r8/internal/Vq0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/es0;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lcom/android/tools/r8/internal/es0;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/android/tools/r8/internal/es0<",
            "TT;TE;>;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/IZ0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/IZ0;-><init>(Lcom/android/tools/r8/internal/es0;)V

    instance-of p0, v0, Ljava/io/Serializable;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/tools/r8/internal/Wq0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Wq0;-><init>(Lcom/android/tools/r8/internal/Uq0;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Xq0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Xq0;-><init>(Lcom/android/tools/r8/internal/Uq0;)V

    return-object p0
.end method
