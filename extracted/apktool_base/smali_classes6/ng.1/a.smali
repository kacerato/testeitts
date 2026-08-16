.class public final Lng/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,68:1\n49#1,6:69\n49#1,6:75\n49#1,6:81\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n17#1:69,6\n29#1:75,6\n38#1:81,6\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lyf/f;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public static final b(Lyf/f;LMf/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, Lng/a;->a(Lyf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final c(LMf/l;Lyf/f;)V
    .locals 3
    .param p0    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation build Leg/F0;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, LAf/c;->b(LMf/l;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lmg/m;->e(Lyf/f;Ljava/lang/Object;LMf/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lng/a;->a(Lyf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final d(LMf/p;Ljava/lang/Object;Lyf/f;LMf/l;)V
    .locals 0
    .param p0    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-TR;-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lyf/f<",
            "-TT;>;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, LAf/c;->c(LMf/p;Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p0

    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    sget-object p1, Lnf/i0;->c:Lnf/i0$a;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lmg/m;->d(Lyf/f;Ljava/lang/Object;LMf/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Lng/a;->a(Lyf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final e(Lyf/f;Lyf/f;)V
    .locals 3
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object p0

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    invoke-static {v0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lmg/m;->e(Lyf/f;Ljava/lang/Object;LMf/l;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lng/a;->a(Lyf/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic f(LMf/p;Ljava/lang/Object;Lyf/f;LMf/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lng/a;->d(LMf/p;Ljava/lang/Object;Lyf/f;LMf/l;)V

    return-void
.end method
