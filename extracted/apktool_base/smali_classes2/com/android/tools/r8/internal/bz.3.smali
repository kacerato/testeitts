.class public final Lcom/android/tools/r8/internal/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/La0;

.field public final c:Z

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/bz;->e:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/bz;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/bz;->c:Z

    sget-boolean p2, Lcom/android/tools/r8/internal/bz;->f:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/iu;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/s61;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/s61;-><init>(Lcom/android/tools/r8/internal/iu;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/iu;Lcom/android/tools/r8/internal/bz;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Zy;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Zy;-><init>(Lcom/android/tools/r8/internal/bz;Ljava/util/Set;)V

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/internal/iu;->t:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;)Z
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/fH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fH0;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 96
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/zE;)Z
    .locals 4

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return v1

    .line 106
    :cond_0
    instance-of v0, p2, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return v1

    .line 110
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/internal/bz;->f:Z

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/tZ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/E0;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/fH0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fH0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/O4;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;)V
    .locals 7

    .line 47
    invoke-virtual {p3, p1, p5}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p5

    .line 48
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v0

    .line 49
    sget-boolean v1, Lcom/android/tools/r8/internal/bz;->f:Z

    if-nez v1, :cond_1

    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v4, :cond_1

    iget-object v3, v3, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 51
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object v2

    const/4 v3, 0x0

    .line 52
    invoke-interface {p5, v2, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 53
    new-instance v4, Lcom/android/tools/r8/internal/p61;

    invoke-direct {v4, p2}, Lcom/android/tools/r8/internal/p61;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 54
    invoke-interface {v0, v4}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/tZ;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_3
    :goto_1
    new-instance v4, Lcom/android/tools/r8/internal/jS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/jS;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 57
    new-instance v5, Lcom/android/tools/r8/internal/q61;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/q61;-><init>(Lcom/android/tools/r8/internal/tZ;)V

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/android/tools/r8/internal/tZ;

    iget-object v5, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v5, v2}, Lcom/android/tools/r8/internal/tZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 59
    iget-object v5, v4, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {v5, v0, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 61
    iget-object v5, v0, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    .line 62
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->v:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5, p3, p3, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    .line 63
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 64
    new-instance v5, Lcom/android/tools/r8/internal/r61;

    invoke-direct {v5, p3, v0}, Lcom/android/tools/r8/internal/r61;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/C7;)V

    .line 65
    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/QJ;

    if-nez v1, :cond_5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 66
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_5
    :goto_2
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v6, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    if-ne p2, v6, :cond_6

    .line 68
    iget-object p2, v1, Lcom/android/tools/r8/internal/La0;->s:Lcom/android/tools/r8/internal/Ha0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Ha0;->a:Lcom/android/tools/r8/graph/A2;

    goto :goto_3

    .line 69
    :cond_6
    iget-object p2, v1, Lcom/android/tools/r8/internal/La0;->t:Lcom/android/tools/r8/internal/Ia0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Ia0;->b:Lcom/android/tools/r8/graph/A2;

    .line 70
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    sget-boolean p1, Lcom/android/tools/r8/internal/QJ;->p:Z

    .line 72
    new-instance p1, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    filled-new-array {v2, p3}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p3

    .line 74
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    .line 75
    check-cast p1, Lcom/android/tools/r8/internal/PJ;

    .line 76
    iput-object p2, p1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    .line 78
    iget-object p2, v4, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p2, p1, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_4

    .line 79
    :cond_7
    iget-object v0, p3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 80
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/de;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 81
    invoke-interface {p5, p1, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/android/tools/r8/internal/Mo0;

    invoke-direct {v0, p3, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    .line 83
    iget-object p3, v4, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p3, v0, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 84
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 85
    iget-object v0, v4, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    .line 86
    iput-object p3, v0, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    .line 87
    new-instance p3, Lcom/android/tools/r8/internal/PJ;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/PJ;-><init>()V

    .line 88
    filled-new-array {v2, p1}, [Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 89
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    .line 90
    check-cast p1, Lcom/android/tools/r8/internal/PJ;

    .line 91
    iput-object p2, p1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 92
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PJ;->c()Lcom/android/tools/r8/internal/QJ;

    move-result-object p1

    .line 93
    iget-object p2, v4, Lcom/android/tools/r8/internal/jS;->c:Lcom/android/tools/r8/internal/Y5;

    invoke-interface {p2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 94
    :goto_4
    sget-object p1, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p2

    .line 95
    invoke-virtual {p4, p5, p1, p2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    const-string v0, "Remove dead builder references"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 40
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    .line 41
    new-instance v5, Lcom/android/tools/r8/internal/kB;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    new-instance v7, Lcom/android/tools/r8/internal/t61;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/t61;-><init>(Lcom/android/tools/r8/internal/bz;Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;)V

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 44
    invoke-static {v0, v7, p1, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 45
    iget-object p1, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->clear()V

    .line 46
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)V
    .locals 7

    .line 112
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v1

    .line 114
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/yF0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/yF0;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/jc;

    if-eqz v2, :cond_6

    .line 115
    iget-object v3, v2, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 116
    iget-object v4, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 118
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    .line 122
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/La0;->b(Lcom/android/tools/r8/graph/A2;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 123
    :cond_3
    sget-boolean v5, Lcom/android/tools/r8/internal/bz;->f:Z

    if-nez v5, :cond_5

    iget-object v4, v4, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/La0;->o:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_5
    :goto_1
    iget-object v4, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x1

    .line 125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 126
    iget-object v5, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v5, v5, Lcom/android/tools/r8/internal/La0;->u:Lcom/android/tools/r8/internal/Ka0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 128
    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 129
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    instance-of v6, v6, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v6, :cond_0

    .line 131
    iget-object v4, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 132
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 133
    iget-object v5, v5, Lcom/android/tools/r8/internal/Ka0;->f:Lcom/android/tools/r8/graph/l1;

    if-ne v4, v5, :cond_0

    .line 134
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    .line 136
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 137
    iget-object v6, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v3

    .line 140
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 141
    new-instance v4, Lcom/android/tools/r8/internal/Qk0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-direct {v4, v3, v2, v5}, Lcom/android/tools/r8/internal/Qk0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 142
    invoke-interface {v1, v4, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_0

    .line 143
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    .line 144
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/i;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 6

    .line 145
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->k:Ljava/util/Set;

    .line 146
    iget-object v0, p5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/EW$a;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    iget-object v2, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v2

    .line 14
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/u61;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/u61;-><init>()V

    const/4 v4, 0x1

    .line 15
    invoke-static {v0, v3, v4}, Lcom/android/tools/r8/internal/U30;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Z)Z

    move-result v0

    const-string v3, "`: disabling aggressive protobuf builder optimization."

    const-string v5, "Unexpected implementation of `"

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return v2

    .line 20
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/v61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v61;-><init>()V

    .line 21
    invoke-static {v1, v0, v4}, Lcom/android/tools/r8/internal/U30;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/bz;->a:Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return v2

    :cond_2
    return v4
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/BooleanSupplier;)Z
    .locals 6

    .line 30
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/bz;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/internal/bz;->b:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v2, Lcom/android/tools/r8/internal/La0;->j:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_1

    iget-object v5, v2, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v5, :cond_5

    .line 34
    :cond_1
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v3, v4, :cond_5

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->k:Lcom/android/tools/r8/graph/M2;

    if-ne v3, v2, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 36
    sget-boolean p3, Lcom/android/tools/r8/internal/bz;->f:Z

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 37
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/bz;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method
