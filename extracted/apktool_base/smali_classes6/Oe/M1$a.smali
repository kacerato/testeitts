.class public final LOe/M1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LDe/c;"
    }
.end annotation


# static fields
.field public static final h:J = 0x296842a962149c03L


# instance fields
.field public final b:LBe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final d:[LOe/M1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LOe/M1$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final f:Z

.field public volatile g:Z


# direct methods
.method public constructor <init>(LBe/I;LFe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TR;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LOe/M1$a;->b:LBe/I;

    iput-object p2, p0, LOe/M1$a;->c:LFe/o;

    new-array p1, p3, [LOe/M1$b;

    iput-object p1, p0, LOe/M1$a;->d:[LOe/M1$b;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, LOe/M1$a;->e:[Ljava/lang/Object;

    iput-boolean p4, p0, LOe/M1$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, LOe/M1$a;->e()V

    invoke-virtual {p0}, LOe/M1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, LOe/M1$a;->d:[LOe/M1$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, LOe/M1$b;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(ZZLBe/I;ZLOe/M1$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LBe/I<",
            "-TR;>;Z",
            "LOe/M1$b<",
            "**>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, LOe/M1$a;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOe/M1$a;->a()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    iget-object p1, p5, LOe/M1$b;->e:Ljava/lang/Throwable;

    iput-boolean v1, p0, LOe/M1$a;->g:Z

    invoke-virtual {p0}, LOe/M1$a;->a()V

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LBe/I;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p1, p5, LOe/M1$b;->e:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    iput-boolean v1, p0, LOe/M1$a;->g:Z

    invoke-virtual {p0}, LOe/M1$a;->a()V

    invoke-interface {p3, p1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, LOe/M1$a;->g:Z

    invoke-virtual {p0}, LOe/M1$a;->a()V

    invoke-interface {p3}, LBe/I;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LOe/M1$a;->g:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, LOe/M1$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LOe/M1$a;->g:Z

    invoke-virtual {p0}, LOe/M1$a;->b()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOe/M1$a;->e()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, LOe/M1$a;->d:[LOe/M1$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, LOe/M1$b;->c:LRe/c;

    invoke-virtual {v3}, LRe/c;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 20

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v7, LOe/M1$a;->d:[LOe/M1$b;

    iget-object v8, v7, LOe/M1$a;->b:LBe/I;

    iget-object v9, v7, LOe/M1$a;->e:[Ljava/lang/Object;

    iget-boolean v10, v7, LOe/M1$a;->f:Z

    const/4 v11, 0x1

    move v12, v11

    :cond_1
    :goto_0
    array-length v13, v0

    const/4 v14, 0x0

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_1
    if-ge v15, v13, :cond_7

    aget-object v6, v0, v15

    aget-object v1, v9, v17

    if-nez v1, :cond_5

    iget-boolean v2, v6, LOe/M1$b;->d:Z

    iget-object v1, v6, LOe/M1$b;->c:LRe/c;

    invoke-virtual {v1}, LRe/c;->poll()Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_2

    move/from16 v19, v11

    goto :goto_2

    :cond_2
    move/from16 v19, v14

    :goto_2
    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object v4, v8

    move v5, v10

    invoke-virtual/range {v1 .. v6}, LOe/M1$a;->c(ZZLBe/I;ZLOe/M1$b;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    if-nez v19, :cond_4

    aput-object v18, v9, v17

    goto :goto_3

    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v1, v6, LOe/M1$b;->d:Z

    if-eqz v1, :cond_6

    if-nez v10, :cond_6

    iget-object v1, v6, LOe/M1$b;->e:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    iput-boolean v11, v7, LOe/M1$a;->g:Z

    invoke-virtual/range {p0 .. p0}, LOe/M1$a;->a()V

    invoke-interface {v8, v1}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_3
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_7
    if-eqz v16, :cond_8

    neg-int v1, v12

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    if-nez v12, :cond_1

    return-void

    :cond_8
    :try_start_0
    iget-object v1, v7, LOe/M1$a;->c:LFe/o;

    invoke-virtual {v9}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The zipper returned a null value"

    invoke-static {v1, v2}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8, v1}, LBe/I;->h(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v9, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, LOe/M1$a;->a()V

    invoke-interface {v8, v0}, LBe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public g([LBe/G;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LBe/G<",
            "+TT;>;I)V"
        }
    .end annotation

    iget-object v0, p0, LOe/M1$a;->d:[LOe/M1$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, LOe/M1$b;

    invoke-direct {v4, p0, p2}, LOe/M1$b;-><init>(LOe/M1$a;I)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object p2, p0, LOe/M1$a;->b:LBe/I;

    invoke-interface {p2, p0}, LBe/I;->e(LDe/c;)V

    :goto_1
    if-ge v2, v1, :cond_2

    iget-boolean p2, p0, LOe/M1$a;->g:Z

    if-eqz p2, :cond_1

    return-void

    :cond_1
    aget-object p2, p1, v2

    aget-object v3, v0, v2

    invoke-interface {p2, v3}, LBe/G;->c(LBe/I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
