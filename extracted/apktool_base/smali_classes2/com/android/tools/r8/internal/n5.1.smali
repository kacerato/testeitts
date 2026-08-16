.class public final Lcom/android/tools/r8/internal/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Na;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/m5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/m5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/m5;-><init>(Lcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/n5;->c:Lcom/android/tools/r8/internal/m5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Cf;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/H5;
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 55
    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 58
    const-string v4, "close"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 59
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-nez v2, :cond_2

    .line 60
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/tools/r8/internal/n5;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    .line 61
    :cond_1
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v1, p2, p3}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 62
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    .line 63
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 64
    :cond_3
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 66
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 67
    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V

    .line 68
    iget-object v0, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 69
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 70
    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/internal/k5;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/j1;
    .locals 10

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 72
    sget-boolean v1, Lcom/android/tools/r8/internal/n5;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 73
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    sget-boolean v3, Lcom/android/tools/r8/internal/m5;->e:Z

    .line 74
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v2, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 77
    invoke-virtual {v2, p2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_8

    .line 78
    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->c:Lcom/android/tools/r8/internal/m5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 79
    iget-object v2, v2, Lcom/android/tools/r8/internal/m5;->d:Lcom/android/tools/r8/internal/QC;

    .line 80
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    .line 81
    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->c:Lcom/android/tools/r8/internal/m5;

    iget-object v5, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 82
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    new-instance v9, Lcom/android/tools/r8/internal/im1;

    invoke-direct {v9, p4, p2}, Lcom/android/tools/r8/internal/im1;-><init>(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)V

    move-object v7, p2

    move-object v8, p3

    .line 83
    invoke-virtual/range {v4 .. v9}, Lcom/android/tools/r8/internal/m5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/l5;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    if-nez v1, :cond_5

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    goto :goto_2

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 85
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-interface {v0, p4}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p4

    .line 87
    invoke-virtual {v0, p1, p4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    .line 89
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 90
    :cond_7
    :goto_3
    iget-object p4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    iget-object v0, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 92
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 94
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    .line 95
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 96
    sget-object p2, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    return-object p1

    :cond_8
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 1
    const-string p3, "Auto closeable retargeter post processor"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    .line 2
    :try_start_0
    iget-object p4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object p4

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Cf;

    iget-object v1, p4, Lcom/android/tools/r8/internal/Ef;->a:Lcom/android/tools/r8/internal/Hf;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hf;->b:Ljava/lang/Thread;

    invoke-direct {v0, p4, v1}, Lcom/android/tools/r8/internal/Cf;-><init>(Lcom/android/tools/r8/internal/Ef;Ljava/lang/Thread;)V

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 5
    :cond_0
    :goto_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 7
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v2, :cond_3

    .line 8
    sget-boolean v2, Lcom/android/tools/r8/internal/n5;->d:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/n5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0, p2, v1, v0}, Lcom/android/tools/r8/internal/n5;->a(Lcom/android/tools/r8/internal/Ta;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Cf;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_6

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 17
    iget-object v2, v2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 18
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/j1;)V

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Lcom/android/tools/r8/internal/l5;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 21
    :goto_3
    :try_start_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 11

    .line 23
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 24
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 25
    iget-object v2, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 29
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 30
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 31
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/E0;

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    iget-object v4, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v5, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->C2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    .line 36
    :cond_6
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    iget-object v5, v2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_7

    .line 37
    iget-object v8, v2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 38
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 39
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    .line 40
    iget-object v6, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 41
    iget-object v7, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 42
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v9, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v3, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v10, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 45
    const-string v9, "close"

    invoke-virtual {v4, v7, v3, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 46
    sget v4, Lcom/android/tools/r8/internal/QC;->c:I

    .line 47
    new-instance v10, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v10, v3}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    .line 48
    const-string v9, "missing"

    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 49
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 50
    :goto_2
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 51
    iget-object v4, p0, Lcom/android/tools/r8/internal/n5;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 52
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return v3
.end method
