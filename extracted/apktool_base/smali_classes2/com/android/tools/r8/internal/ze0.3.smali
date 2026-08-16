.class public final Lcom/android/tools/r8/internal/ze0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/t70;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/ns0;

.field public final e:Lcom/android/tools/r8/internal/Ae0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/internal/Ae0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ae0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/ze0;->e:Lcom/android/tools/r8/internal/Ae0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ze0;->b:Lcom/android/tools/r8/internal/t70;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ze0;->d:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->n:Lcom/android/tools/r8/graph/A2;

    .line 78
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    .line 79
    iget-object v3, p0, Lcom/android/tools/r8/internal/ze0;->e:Lcom/android/tools/r8/internal/Ae0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Ae0;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 81
    const-string v4, "onClassNewInstance"

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/G1;->l:Lcom/android/tools/r8/graph/A2;

    .line 83
    iget-object v4, p0, Lcom/android/tools/r8/internal/ze0;->e:Lcom/android/tools/r8/internal/Ae0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Ae0;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v5, v2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v2, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v2, Lcom/android/tools/r8/graph/u1;->m2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6, v7, v8}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 84
    invoke-virtual {v2, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 85
    const-string v6, "onClassGetDeclaredMethod"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 86
    iget-object v4, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v4, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    .line 87
    iget-object v6, v4, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    .line 88
    iget-object v7, p0, Lcom/android/tools/r8/internal/ze0;->e:Lcom/android/tools/r8/internal/Ae0;

    iget-object v7, v7, Lcom/android/tools/r8/internal/Ae0;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v4, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 89
    invoke-virtual {v4, v8, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 90
    const-string v8, "onClassForName"

    invoke-virtual {v4, v7, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 91
    new-instance v6, Lcom/android/tools/r8/internal/qC;

    invoke-direct {v6, v1, v0}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/tools/r8/internal/qC;

    invoke-direct {v0, v3, v2}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/tools/r8/internal/qC;

    invoke-direct {v1, v5, v4}, Lcom/android/tools/r8/internal/qC;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 92
    new-array v3, v2, [Ljava/util/Map$Entry;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 93
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/bf0;->a(I[Ljava/util/Map$Entry;)Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 95
    new-instance v3, Lcom/android/tools/r8/internal/VE1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/VE1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/WE1;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/internal/WE1;-><init>(Lcom/android/tools/r8/internal/ze0;Lcom/android/tools/r8/internal/nC;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 48
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 56
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    if-eqz v4, :cond_1

    .line 57
    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 58
    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 59
    iput-object v4, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 60
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/fK;

    .line 62
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    .line 63
    iput-object v3, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 65
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->previous()Lcom/android/tools/r8/internal/zE;

    .line 66
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 67
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 69
    invoke-virtual {v2, p2, v0, v3, v1}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    .line 70
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Y5;->a()Lcom/android/tools/r8/internal/zE;

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 72
    iget-object p1, p0, Lcom/android/tools/r8/internal/ze0;->b:Lcom/android/tools/r8/internal/t70;

    .line 73
    sget-boolean v0, Lcom/android/tools/r8/internal/k40;->a:Z

    .line 74
    sget-object v0, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 75
    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->d:Lcom/android/tools/r8/internal/ns0;

    .line 76
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->e:Lcom/android/tools/r8/internal/Ae0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ae0;->b:Lcom/android/tools/r8/graph/A2;

    .line 2
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 4
    sget-boolean v1, Lcom/android/tools/r8/internal/ze0;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->A()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    .line 8
    sget-boolean v2, Lcom/android/tools/r8/internal/tZ;->m:Z

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/sZ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/sZ;-><init>()V

    .line 10
    iput-object p1, v2, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/internal/ze0;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 14
    invoke-static {p1, v4, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    const/4 v4, 0x0

    .line 15
    invoke-interface {v0, v3, v4}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 16
    iput-object v3, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 17
    new-instance v3, Lcom/android/tools/r8/internal/tZ;

    iget-object v5, v2, Lcom/android/tools/r8/internal/sZ;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v6, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v3, v5, v6}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 20
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 21
    invoke-interface {v1, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    .line 23
    iget-object v3, p0, Lcom/android/tools/r8/internal/ze0;->c:Lcom/android/tools/r8/graph/u1;

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/tools/r8/graph/M2;

    .line 24
    iget-object v6, v3, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {v3, v6, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, v3, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 26
    sget-boolean v3, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 27
    new-instance v3, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 28
    iput-object p1, v3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 29
    filled-new-array {v2}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 30
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/tools/r8/internal/PJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    .line 32
    invoke-interface {v1, p1, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/hB;->a()Lcom/android/tools/r8/internal/zE;

    .line 34
    sget-boolean p1, Lcom/android/tools/r8/internal/yk0;->l:Z

    .line 35
    new-instance p1, Lcom/android/tools/r8/internal/xk0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/xk0;-><init>()V

    .line 36
    iput-object v2, p1, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    if-nez v2, :cond_3

    .line 37
    new-instance v2, Lcom/android/tools/r8/internal/yk0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yk0;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/yk0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/xk0;->d:Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/yk0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 38
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 40
    :cond_4
    invoke-interface {v1, v2, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 41
    iget-object p1, p0, Lcom/android/tools/r8/internal/ze0;->b:Lcom/android/tools/r8/internal/t70;

    sget-boolean v1, Lcom/android/tools/r8/internal/k40;->a:Z

    .line 42
    sget-object v1, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 43
    iget-object v2, p0, Lcom/android/tools/r8/internal/ze0;->d:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method
