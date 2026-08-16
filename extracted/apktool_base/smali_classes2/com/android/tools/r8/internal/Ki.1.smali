.class public final Lcom/android/tools/r8/internal/Ki;
.super Lcom/android/tools/r8/internal/dX;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/M70;

.field public final b:Lcom/android/tools/r8/internal/t70;

.field public final c:Lcom/android/tools/r8/internal/fX;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/android/tools/r8/internal/lr0;

.field public final f:Lcom/android/tools/r8/internal/lr0;

.field public g:Lcom/android/tools/r8/internal/Ef;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/t70;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dX;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ki;->d:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ki;->a:Lcom/android/tools/r8/internal/M70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    sget-object v0, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/android/tools/r8/internal/b10;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/U70;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/U70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/eX;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ki;->c:Lcom/android/tools/r8/internal/fX;

    iget-object p1, p2, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    new-instance p1, Lcom/android/tools/r8/internal/lr0;

    iget-object v0, p2, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p1, v0, p3}, Lcom/android/tools/r8/internal/lr0;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    new-instance p1, Lcom/android/tools/r8/internal/lr0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/lr0;-><init>(Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    .line 3
    sget-object v3, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v5

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V
    .locals 9

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v5

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 13
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    .line 14
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 15
    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/Ib;)Lcom/android/tools/r8/internal/Ib;

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 20
    sget-boolean v3, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Ib;

    iput-object v2, v1, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    .line 22
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_e

    .line 23
    :cond_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_e

    .line 24
    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->z:Z

    if-nez v2, :cond_5

    goto/16 :goto_d

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    .line 26
    iget-object v3, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 27
    iget-object v3, v3, Lcom/android/tools/r8/internal/rJ;->a:Ljava/util/List;

    .line 28
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/L2;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v6, v4, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 31
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    goto :goto_1

    .line 32
    :cond_7
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 33
    iget-object v6, v6, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 34
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/L2;

    .line 35
    iget-object v8, v8, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v2, v8}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v8

    if-nez v8, :cond_8

    .line 36
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 37
    :cond_9
    :goto_1
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 38
    new-instance p1, Lcom/android/tools/r8/internal/If;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object p2, v0, Lcom/android/tools/r8/internal/kB;->G:Ljava/lang/String;

    if-nez p2, :cond_17

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Merging DEX file containing classes with prefix"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object p3, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 42
    iget-object p3, p3, Lcom/android/tools/r8/internal/rJ;->a:Ljava/util/List;

    .line 43
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v7, :cond_a

    const-string p3, "es "

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_c

    :cond_a
    const-string p3, " "

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    move v1, p3

    .line 44
    :goto_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 45
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->a:Ljava/util/List;

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2e

    const/16 v5, 0x2f

    if-ge v1, v2, :cond_c

    .line 47
    const-string v2, "\'"

    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 49
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->a:Ljava/util/List;

    .line 50
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 53
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->a:Ljava/util/List;

    .line 54
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_b

    const-string v2, ", "

    goto :goto_4

    :cond_b
    const-string v2, ""

    :goto_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 55
    :cond_c
    iget-object v1, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 56
    iget-object v1, v1, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 58
    const-string v1, " with other classes, except classes with prefix"

    .line 59
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 61
    iget-object v1, v1, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_d

    const-string v1, "es "

    goto :goto_5

    :cond_d
    const-string v1, " "

    :goto_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p3

    .line 63
    :goto_6
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 64
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 66
    const-string v2, "\'"

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 68
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 69
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 73
    iget-object v2, v2, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_e

    const-string v2, ", "

    goto :goto_7

    :cond_e
    const-string v2, ""

    :goto_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    :cond_f
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 76
    :cond_10
    const-string v1, " with classes with any other prefixes"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_8
    const-string v1, " is not allowed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0xb

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 79
    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    iget-object v6, v4, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v5

    if-nez v5, :cond_11

    .line 81
    iget-object v5, v0, Lcom/android/tools/r8/internal/kB;->D:Lcom/android/tools/r8/internal/rJ;

    .line 82
    iget-object v5, v5, Lcom/android/tools/r8/internal/rJ;->b:Ljava/util/List;

    .line 83
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/L2;

    .line 84
    iget-object v8, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v8, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget-object v6, v6, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v8, v6}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_9

    :cond_13
    add-int/lit8 v5, v2, -0x1

    if-ltz v2, :cond_15

    if-eqz v7, :cond_14

    move v7, p3

    goto :goto_a

    .line 86
    :cond_14
    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_a
    iget-object v2, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_9

    .line 88
    :cond_15
    const-string p3, ".."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_16
    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/kB;->G:Ljava/lang/String;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :cond_17
    monitor-exit v0

    .line 92
    :goto_b
    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_c
    monitor-exit v0

    throw p1

    .line 93
    :cond_18
    :goto_d
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    .line 94
    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 95
    instance-of v3, v3, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v3, :cond_1c

    .line 96
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->y:Z

    if-eqz v2, :cond_1c

    .line 97
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_f

    .line 98
    :cond_19
    sget-boolean p1, Lcom/android/tools/r8/internal/t70;->J:Z

    if-nez p1, :cond_1b

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_e

    :cond_1a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1b
    :goto_e
    return-void

    .line 99
    :cond_1c
    :goto_f
    iget-object v3, v0, Lcom/android/tools/r8/internal/kB;->A:Lcom/android/tools/r8/internal/o40;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/OK0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/OK0;-><init>(Lcom/android/tools/r8/internal/Ki;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    new-instance v1, Lcom/android/tools/r8/internal/PK0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/PK0;-><init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Uu0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Uu0;-><init>(Ljava/util/concurrent/ExecutionException;)V

    throw v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    new-instance v1, Lcom/android/tools/r8/internal/NK0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/NK0;-><init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/android/tools/r8/internal/Uu0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Uu0;-><init>(Ljava/util/concurrent/ExecutionException;)V

    throw p2
.end method

.method public final c()Lcom/android/tools/r8/internal/E8;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Invalid attempt to obtain call-site information in D8"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Lcom/android/tools/r8/internal/fX;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->c:Lcom/android/tools/r8/internal/fX;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object v4

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v1, p1

    move-object v3, p0

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
