.class public final Lcom/android/tools/r8/internal/Y2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/Set;

.field public final d:Lcom/android/tools/r8/androidapi/a;

.field public final e:Lcom/android/tools/r8/internal/a3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y2;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y2;->d:Lcom/android/tools/r8/androidapi/a;

    sget-object v0, Lcom/android/tools/r8/internal/Z2;->a:Lcom/android/tools/r8/internal/Z2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/s4;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/android/tools/r8/internal/b10;

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/N70;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/N70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/Y2;->e:Lcom/android/tools/r8/internal/a3;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a()Lcom/android/tools/r8/internal/GX;
    .locals 2

    .line 83
    new-instance v0, Lcom/android/tools/r8/internal/GX;

    const-string v1, "API stubbing"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/GX;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->U:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->j1:Lcom/android/tools/r8/graph/L2;

    .line 95
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    .line 97
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 p0, 0x1008

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    .line 99
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 100
    new-instance p0, Lcom/android/tools/r8/internal/U21;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/U21;-><init>(Lcom/android/tools/r8/graph/a6;)V

    .line 101
    iput-object p0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/synthesis/W;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 85
    iput-object v0, p3, Lcom/android/tools/r8/synthesis/m;->i:Lcom/android/tools/r8/graph/M2;

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/List;)Lcom/android/tools/r8/synthesis/m;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/W;

    new-instance v1, Lcom/android/tools/r8/internal/Y21;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Y21;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p3, Lcom/android/tools/r8/synthesis/m;->e:Z

    .line 90
    iput-boolean p2, p3, Lcom/android/tools/r8/synthesis/m;->f:Z

    .line 91
    iput-boolean p1, p3, Lcom/android/tools/r8/synthesis/m;->g:Z

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result p0

    if-nez p0, :cond_1

    .line 93
    iput-boolean p2, p3, Lcom/android/tools/r8/synthesis/m;->f:Z

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;)V
    .locals 10

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xU;->b(Lcom/android/tools/r8/graph/J2;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/c31;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/c31;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/d31;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/d31;-><init>()V

    .line 80
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    new-instance v7, Lcom/android/tools/r8/internal/e31;

    invoke-direct {v7, p2, v0, p3}, Lcom/android/tools/r8/internal/e31;-><init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;)V

    new-instance v8, Lcom/android/tools/r8/internal/f31;

    invoke-direct {v8, p4, p2}, Lcom/android/tools/r8/internal/f31;-><init>(Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;)V

    new-instance v9, Lcom/android/tools/r8/internal/Q21;

    invoke-direct {v9, p4, v5, p2}, Lcom/android/tools/r8/internal/Q21;-><init>(Lcom/android/tools/r8/internal/a3;Ljava/util/Set;Lcom/android/tools/r8/graph/u2;)V

    move-object v6, p0

    .line 81
    invoke-virtual/range {v1 .. v9}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    return-void

    .line 82
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string p1, "Attempt to create a global synthetic with no contexts"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/a3;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 102
    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/internal/a3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/a3;Ljava/util/Set;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 103
    invoke-interface {p0}, Lcom/android/tools/r8/internal/a3;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 105
    invoke-interface {p0, p3, p2, v0}, Lcom/android/tools/r8/internal/a3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->G:Lcom/android/tools/r8/graph/L2;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->H:Lcom/android/tools/r8/graph/L2;

    .line 66
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->I:Lcom/android/tools/r8/graph/L2;

    .line 68
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/android/tools/r8/graph/u1;->J:Lcom/android/tools/r8/graph/L2;

    .line 70
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 71
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->K:Lcom/android/tools/r8/graph/L2;

    .line 72
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->V:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->b:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 35
    iget-object p2, p2, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    if-eqz p2, :cond_0

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/P21;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/P21;-><init>(Lcom/android/tools/r8/internal/Y2;Lcom/android/tools/r8/graph/H2;)V

    .line 37
    iget-object p1, p2, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 40
    iget-object p2, p2, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    .line 41
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 42
    iget-object v3, v3, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 43
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J0$b$a;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p2

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->d:Lcom/android/tools/r8/androidapi/a;

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 49
    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 53
    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/iJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/iJ0;-><init>()V

    .line 57
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 58
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/lang/Integer;Lcom/android/tools/r8/internal/N8;)V
    .locals 0

    .line 17
    iget-object p2, p3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 18
    new-instance p3, Lcom/android/tools/r8/internal/X21;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/internal/X21;-><init>(Lcom/android/tools/r8/internal/Y2;Lcom/android/tools/r8/graph/H2;)V

    .line 19
    invoke-interface {p2, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u2;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y2;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/b31;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/b31;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->C3:Lcom/android/tools/r8/graph/M2;

    .line 23
    new-instance v3, Lcom/android/tools/r8/graph/a6;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/graph/a6;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/Y2;->e:Lcom/android/tools/r8/internal/a3;

    .line 25
    invoke-static {v0, v2, p1, v3, v1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/internal/a3;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/R21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/R21;-><init>()V

    .line 5
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/S21;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/S21;-><init>(Lcom/android/tools/r8/internal/Y2;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/S21;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/S21;-><init>(Lcom/android/tools/r8/internal/Y2;)V

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y2;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y2;->c:Ljava/util/Set;

    new-instance v0, Lcom/android/tools/r8/internal/T21;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/T21;-><init>(Lcom/android/tools/r8/internal/Y2;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y2;->e:Lcom/android/tools/r8/internal/a3;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/a3;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    .line 27
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/V21;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/V21;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/W21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/W21;-><init>()V

    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Y2;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y2;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Z21;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Z21;-><init>(Lcom/android/tools/r8/internal/Y2;Lcom/android/tools/r8/graph/H2;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    :cond_3
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/a31;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/a31;-><init>(Lcom/android/tools/r8/internal/Y2;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
