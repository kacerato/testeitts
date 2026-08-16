.class public abstract Lcom/android/tools/r8/internal/Jr0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/Ir0;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/Ir0;->a(Lcom/android/tools/r8/internal/ns0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ir0;Lcom/android/tools/r8/internal/xr0;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/gK0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/gK0;-><init>(Lcom/android/tools/r8/internal/Ir0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILcom/android/tools/r8/internal/xr0;Ljava/util/List;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/fK0;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/tools/r8/internal/fK0;-><init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V
    .locals 1

    .line 6
    const-string v0, "Timing"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p0

    .line 7
    invoke-interface {p3, p2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Ir0;->a(Lcom/android/tools/r8/internal/ns0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Jr0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILjava/util/List;)V

    return-void
.end method
