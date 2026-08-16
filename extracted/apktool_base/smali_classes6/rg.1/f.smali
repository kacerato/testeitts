.class public final Lrg/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lmg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lrg/f;->a:I

    new-instance v0, Lmg/T;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrg/f;->b:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrg/f;->c:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrg/f;->d:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrg/f;->e:Lmg/T;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lmg/W;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lrg/f;->f:I

    return-void
.end method

.method public static final a(II)Lrg/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lrg/e;

    invoke-direct {v0, p0, p1}, Lrg/e;-><init>(II)V

    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)Lrg/d;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lrg/f;->a(II)Lrg/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(JLrg/g;)Lrg/g;
    .locals 0

    invoke-static {p0, p1, p2}, Lrg/f;->j(JLrg/g;)Lrg/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lmg/T;
    .locals 1

    sget-object v0, Lrg/f;->d:Lmg/T;

    return-object v0
.end method

.method public static final synthetic e()Lmg/T;
    .locals 1

    sget-object v0, Lrg/f;->e:Lmg/T;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lrg/f;->a:I

    return v0
.end method

.method public static final synthetic g()Lmg/T;
    .locals 1

    sget-object v0, Lrg/f;->b:Lmg/T;

    return-object v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Lrg/f;->f:I

    return v0
.end method

.method public static final synthetic i()Lmg/T;
    .locals 1

    sget-object v0, Lrg/f;->c:Lmg/T;

    return-object v0
.end method

.method public static final j(JLrg/g;)Lrg/g;
    .locals 2

    new-instance v0, Lrg/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrg/g;-><init>(JLrg/g;I)V

    return-object v0
.end method

.method public static final k(Lrg/d;LMf/a;Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lrg/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrg/d;",
            "LMf/a<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lrg/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lrg/f$a;

    iget v1, v0, Lrg/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lrg/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrg/f$a;

    invoke-direct {v0, p2}, Lrg/f$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p2, v0, Lrg/f$a;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lrg/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lrg/f$a;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, LMf/a;

    iget-object p0, v0, Lrg/f$a;->b:Ljava/lang/Object;

    check-cast p0, Lrg/d;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, Lrg/f$a;->b:Ljava/lang/Object;

    iput-object p1, v0, Lrg/f$a;->c:Ljava/lang/Object;

    iput v3, v0, Lrg/f$a;->e:I

    invoke-interface {p0, v0}, Lrg/d;->g(Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, Lrg/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, Lrg/d;->release()V

    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public static final l(Lrg/d;LMf/a;Lyf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrg/d;",
            "LMf/a<",
            "+TT;>;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-interface {p0, p2}, Lrg/d;->g(Lyf/f;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Lkotlin/jvm/internal/J;->e(I)V

    :try_start_0
    invoke-interface {p1}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, Lrg/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-interface {p0}, Lrg/d;->release()V

    invoke-static {p2}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method
