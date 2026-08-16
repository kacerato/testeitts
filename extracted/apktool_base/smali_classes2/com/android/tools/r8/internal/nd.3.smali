.class public final Lcom/android/tools/r8/internal/nd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic m:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/AA;

.field public final c:Lcom/android/tools/r8/graph/u1;

.field public final d:Lcom/android/tools/r8/internal/wA;

.field public final e:Lcom/android/tools/r8/internal/td;

.field public final f:Lcom/android/tools/r8/internal/qd0;

.field public final g:Lcom/android/tools/r8/internal/gd;

.field public final h:Lcom/android/tools/r8/internal/Yd;

.field public final i:Lcom/android/tools/r8/internal/Tc;

.field public final j:Lcom/android/tools/r8/internal/jE;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    sput-object v0, Lcom/android/tools/r8/internal/nd;->l:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/td;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/td;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/nd;->f:Lcom/android/tools/r8/internal/qd0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nd;->d:Lcom/android/tools/r8/internal/wA;

    new-instance v1, Lcom/android/tools/r8/internal/Yd;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/Yd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/nd;->h:Lcom/android/tools/r8/internal/Yd;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/fd;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3}, Lcom/android/tools/r8/internal/fd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;)V

    goto :goto_3

    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/ed;->a:Z

    if-nez v1, :cond_4

    sget-boolean v2, Lcom/android/tools/r8/internal/AA;->f:Z

    if-nez v2, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v2, p3, Lcom/android/tools/r8/internal/AA;->e:Lcom/android/tools/r8/internal/m6;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/j6;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/dd;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dd;-><init>()V

    :goto_3
    iput-object v1, p0, Lcom/android/tools/r8/internal/nd;->g:Lcom/android/tools/r8/internal/gd;

    invoke-static {p3}, Lcom/android/tools/r8/internal/Tc;->a(Lcom/android/tools/r8/internal/AA;)Lcom/android/tools/r8/internal/Tc;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    invoke-static {p1, v0, p3, p2}, Lcom/android/tools/r8/internal/jE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd0;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/wA;)Lcom/android/tools/r8/internal/jE;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/nd;->j:Lcom/android/tools/r8/internal/jE;

    iput-object p4, p0, Lcom/android/tools/r8/internal/nd;->k:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    .line 159
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p0, p0, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 113
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 114
    iget-object p0, p0, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    .line 115
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 106
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O4;->b()V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/kn1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kn1;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->f(Ljava/util/function/Consumer;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p0

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 39
    iget-object p1, p1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/s3;->a()V

    .line 41
    sget-object p1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/tools/r8/graph/g1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->f:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v1, Lcom/android/tools/r8/internal/Zm1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Zm1;-><init>(Lcom/android/tools/r8/internal/nd;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->f:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->f:Lcom/android/tools/r8/internal/qd0;

    .line 6
    iget v1, v1, Lcom/android/tools/r8/internal/qd0;->i:I

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->d:Lcom/android/tools/r8/internal/wA;

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 76
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 77
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 78
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    return-void

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 81
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 82
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 83
    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/nd;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    .line 86
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 87
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v4, 0x0

    .line 89
    invoke-virtual {v0, v1, p1, v4}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 91
    :goto_0
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 92
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    if-eq p1, v1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->d:Lcom/android/tools/r8/internal/wA;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 94
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/wA;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M5;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v1, Lcom/android/tools/r8/internal/jn1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/jn1;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    .line 110
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 111
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->g:Lcom/android/tools/r8/internal/gd;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/gd;->a()[Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/M70;Ljava/util/function/Consumer;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->k:Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/pn1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/pn1;-><init>(Lcom/android/tools/r8/internal/nd;Lcom/android/tools/r8/internal/M70;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance p2, Lcom/android/tools/r8/internal/qn1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/qn1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/M70;Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/tx0;)V
    .locals 6

    .line 99
    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->d:Lcom/android/tools/r8/internal/wA;

    iget-object v4, p0, Lcom/android/tools/r8/internal/nd;->f:Lcom/android/tools/r8/internal/qd0;

    move-object v0, p3

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/tx0;->a(Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/td;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/qd0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->j:Lcom/android/tools/r8/internal/jE;

    new-instance v1, Lcom/android/tools/r8/internal/nn1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/nn1;-><init>(Lcom/android/tools/r8/internal/nd;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jE;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/internal/nr0;Ljava/util/function/Consumer;)V
    .locals 7

    .line 116
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->b()V

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->c()V

    .line 118
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->d()V

    .line 119
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->e()V

    .line 120
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    sget-boolean v0, Lcom/android/tools/r8/internal/nd;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    .line 122
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 126
    new-instance v0, Lcom/android/tools/r8/graph/g1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 128
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v0

    const/16 v2, 0x1011

    .line 129
    invoke-static {v2}, Lcom/android/tools/r8/graph/k3;->g(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    .line 130
    iput-object v2, v0, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 131
    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    .line 132
    iget-object v3, v2, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 133
    iput-object v3, v0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 134
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 135
    iput-boolean v2, v0, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 136
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/android/tools/r8/internal/x10;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 138
    iget-object v3, v3, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 139
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    .line 140
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/android/tools/r8/internal/x10;-><init>(JJ)V

    .line 141
    sget-object v1, Lcom/android/tools/r8/internal/nd;->l:Lcom/android/tools/r8/internal/o40;

    iget-object v3, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 142
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->g:Lcom/android/tools/r8/internal/gd;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/gd;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 143
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/nd;->a(Lcom/android/tools/r8/graph/M5;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nd;->f()V

    .line 145
    invoke-virtual {p0, p2, p5}, Lcom/android/tools/r8/internal/nd;->a(Lcom/android/tools/r8/internal/M70;Ljava/util/function/Consumer;)V

    .line 146
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/tools/r8/internal/nd;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/nr0;)V

    .line 147
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    iget-object p2, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 148
    iget-object p2, p2, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 149
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 150
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 151
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D0()V

    .line 153
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 154
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 155
    new-instance p2, Lcom/android/tools/r8/internal/rn1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/rn1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    .line 156
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance p2, Lcom/android/tools/r8/internal/sn1;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/sn1;-><init>(Lcom/android/tools/r8/graph/M5;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/iE;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/iE;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/td;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/nr0;)V
    .locals 5

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/nd;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    .line 10
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 14
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    iget-object p3, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    .line 16
    sget-boolean v2, Lcom/android/tools/r8/internal/Tc;->b:Z

    if-nez v2, :cond_2

    .line 17
    iget-object v2, p1, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 18
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 21
    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 24
    iget-object v3, p3, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 26
    iget-object p3, p3, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 29
    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 30
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 31
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    goto/16 :goto_5

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 34
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string v2, "$r8$clinit$synthetic"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 39
    iget-object v3, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->d:Lcom/android/tools/r8/internal/wA;

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/tools/r8/internal/wA;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Z)V

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v1

    .line 42
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v1, :cond_5

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Tc;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v1

    goto :goto_2

    .line 44
    :cond_5
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    .line 45
    :goto_2
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 46
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    const/16 v2, 0x1008

    .line 47
    invoke-static {v2, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v2, Lcom/android/tools/r8/internal/Sc;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Sc;-><init>(Lcom/android/tools/r8/internal/hC;)V

    .line 51
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->i:Lcom/android/tools/r8/internal/Tc;

    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 54
    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_7

    .line 55
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tc;->a:Lcom/android/tools/r8/internal/hC;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 57
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 58
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Ib;

    goto :goto_3

    .line 59
    :cond_7
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 60
    iput-object v1, p1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 61
    iput-object v1, p1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/td;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 64
    sget-boolean p2, Lcom/android/tools/r8/internal/nd;->m:Z

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    instance-of p2, p2, Lcom/android/tools/r8/internal/Sc;

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 65
    :cond_9
    :goto_4
    new-instance p2, Lcom/android/tools/r8/graph/H5;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 66
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 67
    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 68
    iget-object p1, p3, Lcom/android/tools/r8/internal/nr0;->b:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance p2, Lcom/android/tools/r8/internal/hn1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/hn1;-><init>(Lcom/android/tools/r8/internal/nd;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->j:Lcom/android/tools/r8/internal/jE;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jE;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v1, Lcom/android/tools/r8/internal/fn1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/fn1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/p5;)Z
    .locals 1

    .line 100
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 101
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 102
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/A2;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/nd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->c:Lcom/android/tools/r8/graph/u1;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object p1, p0, Lcom/android/tools/r8/internal/nd;->e:Lcom/android/tools/r8/internal/td;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/tools/r8/internal/Vd1;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/Vd1;-><init>(Lcom/android/tools/r8/internal/td;)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->b()Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/dn1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dn1;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 22
    invoke-interface {v1, v4}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_2

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    .line 26
    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v1, v1, -0x401

    .line 27
    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->b()Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/en1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/en1;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/V60;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_3
    if-eq v2, v5, :cond_5

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 34
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 35
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->b()Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 13
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    const/4 v2, 0x0

    .line 17
    iput-object v2, v0, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    .line 21
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/in1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/in1;-><init>(Lcom/android/tools/r8/internal/nd;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->f(Ljava/util/function/Predicate;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/on1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/on1;-><init>(Lcom/android/tools/r8/internal/nd;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O4;->a()V

    return-void
.end method

.method public final d()V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/nd;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/gn1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gn1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->b()Lcom/android/tools/r8/internal/rK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/rK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/e0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/e0;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/an1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/an1;-><init>(Lcom/android/tools/r8/internal/nd;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->b(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v3, Lcom/android/tools/r8/internal/bn1;

    invoke-direct {v3, v1, v0}, Lcom/android/tools/r8/internal/bn1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v2, Lcom/android/tools/r8/internal/cn1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/cn1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    sget-object v2, Lcom/android/tools/r8/graph/O2;->c:Lcom/android/tools/r8/graph/O2;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/tools/r8/graph/O2;

    sget-object v3, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    move-object v0, v2

    :goto_1
    iput-object v0, v1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nd;->h:Lcom/android/tools/r8/internal/Yd;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/ln1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ln1;-><init>(Lcom/android/tools/r8/internal/Yd;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->h:Lcom/android/tools/r8/internal/Yd;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Yd;->c:Lcom/android/tools/r8/internal/AA;

    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Yd;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    sget-boolean v2, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    sget-boolean v4, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/r3;->a(Lcom/android/tools/r8/graph/g1;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/s3;->a(Ljava/util/Collection;)V

    sget-boolean v0, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/nd;->b:Lcom/android/tools/r8/internal/AA;

    new-instance v1, Lcom/android/tools/r8/internal/mn1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/mn1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/AA;->a(Ljava/util/function/Consumer;)V

    return-void
.end method
