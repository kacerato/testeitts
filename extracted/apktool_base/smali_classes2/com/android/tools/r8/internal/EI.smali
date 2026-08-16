.class public final Lcom/android/tools/r8/internal/EI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/X9;


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/nJ;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:I

.field public final f:Lcom/android/tools/r8/internal/yI;

.field public final g:Ljava/util/Set;

.field public final h:Lcom/android/tools/r8/internal/j80;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Lcom/android/tools/r8/internal/QC;

.field public final k:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/EI;->g:Ljava/util/Set;

    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/EI;->h:Lcom/android/tools/r8/internal/j80;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/EI;->i:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EI;->j:Lcom/android/tools/r8/internal/QC;

    iput-object p3, p0, Lcom/android/tools/r8/internal/EI;->k:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/EI;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/EI;->d:Lcom/android/tools/r8/graph/u1;

    sget-boolean p2, Lcom/android/tools/r8/internal/EI;->l:Z

    const/4 p3, 0x2

    if-nez p2, :cond_1

    if-eq p4, p3, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p4, p0, Lcom/android/tools/r8/internal/EI;->e:I

    if-nez p2, :cond_3

    if-eq p4, p3, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/yI;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/yI;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EI;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->E:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;
    .locals 3

    .line 280
    new-instance v0, Lcom/android/tools/r8/internal/ga;

    const/16 v1, 0xb8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/tools/r8/internal/tD0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tD0;-><init>(Lcom/android/tools/r8/graph/h;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V

    .line 48
    iget-object p1, p2, Lcom/android/tools/r8/internal/eu;->a:Lcom/android/tools/r8/graph/M2;

    .line 49
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V

    .line 51
    iget-object p1, p2, Lcom/android/tools/r8/internal/ui;->a:Lcom/android/tools/r8/graph/A2;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V

    .line 53
    iget-object p1, p2, Lcom/android/tools/r8/internal/ui;->b:Lcom/android/tools/r8/graph/A2;

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/j1;)V
    .locals 4

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    .line 41
    iget-object v0, p1, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/jD0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/jD0;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 45
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xU;->h()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/kD0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/kD0;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 68
    invoke-interface {p2, p1, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/X9;)Z
    .locals 0

    .line 70
    invoke-interface {p2, p1, p0}, Lcom/android/tools/r8/internal/X9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result p0

    return p0
.end method

.method public static f(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    sget-object v1, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/Ib;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    sget-object v0, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/Ib;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->d:Lcom/android/tools/r8/graph/u1;

    .line 195
    new-instance v1, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    move-result-object p1

    .line 197
    iput-object p2, p1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 198
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 199
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gj;
    .locals 6

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/Gj;->c:Lcom/android/tools/r8/internal/Gj;

    return-object p1

    .line 9
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Gj;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v1}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/Gj;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    sget-object p1, Lcom/android/tools/r8/internal/Gj;->c:Lcom/android/tools/r8/internal/Gj;

    return-object p1

    .line 15
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Gj;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v1}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/Gj;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p3

    if-nez p3, :cond_4

    .line 17
    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p3, p2, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)V

    .line 18
    :cond_4
    iget-object p2, v2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length p3, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_5

    aget-object v4, p2, v3

    .line 19
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/tools/r8/internal/EI;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gj;

    move-result-object v4

    .line 20
    iget-object v5, v4, Lcom/android/tools/r8/internal/Gj;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v4, v4, Lcom/android/tools/r8/internal/Gj;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 25
    :cond_7
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 27
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 28
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 30
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 31
    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 32
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_a
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 35
    sget-object p1, Lcom/android/tools/r8/internal/Gj;->c:Lcom/android/tools/r8/internal/Gj;

    return-object p1

    .line 36
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/Gj;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v1}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/android/tools/r8/internal/Gj;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1

    .line 37
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/If;

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p3

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is referenced as an interface from `"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "`."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 225
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 227
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 230
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/cu;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->b:Lcom/android/tools/r8/internal/Yj;

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 232
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/sD0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/sD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/Yj;)V

    .line 233
    invoke-static {v0}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;
    .locals 1

    .line 278
    sget-boolean v0, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 279
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 299
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {v1, p2, p3, v2, v0}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 302
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 304
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 305
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 306
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->g1()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 307
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    .line 308
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 309
    new-instance p1, Lcom/android/tools/r8/internal/wD0;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/wD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H0;)V

    .line 310
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 311
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 312
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    if-nez p2, :cond_1

    .line 313
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p3, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 315
    invoke-static {v0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 316
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 317
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->i()Ljava/util/Map;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_2

    .line 319
    new-instance p1, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    .line 320
    :cond_2
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/cu;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 321
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    :goto_1
    if-nez p1, :cond_4

    .line 322
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 323
    :cond_4
    new-instance p2, Lcom/android/tools/r8/internal/xD0;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/xD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/Yj;)V

    .line 324
    invoke-static {p2}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 325
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;
    .locals 4

    .line 235
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 239
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 240
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 243
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    if-nez p2, :cond_2

    .line 244
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 245
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 246
    sget-boolean p1, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez p1, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    .line 247
    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 248
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 249
    :cond_4
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/yD0;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/internal/yD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H0;)V

    .line 250
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 251
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 252
    :cond_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 253
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 254
    sget-boolean p3, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez p3, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    .line 255
    iget-object v0, p2, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p2, p2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 256
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    if-ne p3, p2, :cond_6

    goto :goto_1

    .line 257
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 258
    :cond_7
    :goto_1
    new-instance p2, Lcom/android/tools/r8/internal/zD0;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/zD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H0;)V

    .line 259
    invoke-static {p2}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 260
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 261
    :cond_8
    sget-boolean p1, Lcom/android/tools/r8/internal/EI;->l:Z

    if-eqz p1, :cond_9

    .line 262
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 263
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 264
    :cond_a
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 265
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected call to a private method defined in library class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    .line 267
    iget-object p3, p3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 268
    sget-object v0, Lcom/android/tools/r8/internal/yI;->c:Lcom/android/tools/r8/internal/Ib;

    .line 269
    iget-object v0, p3, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$-CC;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 271
    iget-object v0, v0, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 272
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 273
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_c

    .line 274
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object p3

    goto :goto_2

    .line 275
    :cond_c
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 276
    :goto_2
    invoke-direct {p2, p3, p1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    throw p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;
    .locals 6

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p2

    if-nez p2, :cond_1

    .line 90
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 91
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 93
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->d:Lcom/android/tools/r8/graph/u1;

    .line 94
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 96
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/EI;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 97
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 101
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_6

    .line 102
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 103
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v0

    if-nez v0, :cond_b

    .line 104
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 106
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 107
    :cond_8
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 108
    :cond_9
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    if-nez p1, :cond_a

    .line 109
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    :cond_a
    return-object p1

    .line 110
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    .line 111
    :cond_c
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 112
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 115
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 116
    iget-object v3, v1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 117
    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 118
    invoke-static {v3, v4, p1, v2, v0}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 120
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    :cond_e
    if-eqz v1, :cond_f

    .line 121
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 122
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 123
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    if-eqz p1, :cond_10

    return-object p1

    .line 124
    :cond_10
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 125
    :cond_11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 126
    sget-boolean v0, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 127
    :cond_13
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 130
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_14

    goto :goto_4

    :cond_14
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_15

    .line 131
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 132
    :cond_15
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 133
    :cond_16
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result v0

    if-nez v0, :cond_17

    .line 134
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 135
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object v0

    if-eqz v0, :cond_18

    return-object v0

    .line 136
    :cond_18
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 137
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_6

    .line 140
    :cond_19
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 142
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_1a

    goto :goto_5

    :cond_1a
    invoke-interface {v0, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 143
    :goto_5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 144
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->F()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1b
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 147
    :cond_1c
    :goto_6
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 148
    :cond_1d
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 150
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v3, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_21

    .line 151
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_8

    .line 152
    :cond_1f
    new-instance v0, Lcom/android/tools/r8/internal/uD0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/internal/uD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V

    .line 153
    new-instance p1, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 155
    :cond_20
    :goto_8
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 156
    :cond_21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->P()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->M()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_9

    .line 157
    :cond_22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 158
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/tools/r8/internal/EI;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 159
    :cond_23
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->N()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 160
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ga;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 161
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/EI;->c(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 162
    :cond_24
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    .line 163
    :cond_25
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 164
    :cond_26
    :goto_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 165
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->X()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 168
    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v5, v1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v4

    .line 169
    iget-object v5, v1, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 170
    invoke-static {v4, v5, p1, v3, v0}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 172
    invoke-virtual {p0, v2, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object p1

    return-object p1

    :cond_27
    if-eqz v1, :cond_28

    .line 173
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 174
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 175
    :cond_28
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    if-eqz p1, :cond_29

    return-object p1

    .line 176
    :cond_29
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 326
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 327
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 211
    iget-object p3, p1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 212
    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p3, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 213
    invoke-virtual {p8}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 214
    iget-object p4, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 215
    invoke-virtual {p0, p3, p3, p4}, Lcom/android/tools/r8/internal/EI;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gj;

    move-result-object p3

    .line 216
    iget-object p3, p3, Lcom/android/tools/r8/internal/Gj;->a:Ljava/util/List;

    .line 217
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    move-object p5, p4

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/j1;

    .line 218
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p6

    check-cast p6, Lcom/android/tools/r8/graph/A2;

    .line 219
    iget-object p8, p6, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p9, p2, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    if-ne p8, p9, :cond_0

    iget-object p8, p6, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object p9, p2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    if-ne p8, p9, :cond_0

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    move-object p5, p6

    goto :goto_0

    :cond_2
    move-object p4, p5

    :goto_1
    if-eqz p4, :cond_3

    move-object p2, p4

    .line 220
    :cond_3
    sget-boolean p3, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    if-ne p3, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 221
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 222
    invoke-virtual {p2, p1, p7}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 200
    iget-object p2, p1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 201
    iget-object p1, p1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p2, p1}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 202
    instance-of p2, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz p2, :cond_0

    .line 203
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 204
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 205
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    .line 207
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p2, p2, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 209
    const-string p3, "$private$"

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 210
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 329
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 330
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 331
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 177
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 178
    iget-object p2, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 179
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p2

    .line 180
    new-instance p3, Lcom/android/tools/r8/internal/lD0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/lD0;-><init>()V

    .line 181
    invoke-virtual {p8}, Lcom/android/tools/r8/internal/Df;->a()Lcom/android/tools/r8/internal/Gf;

    move-result-object p4

    iget-object p5, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    new-instance p8, Lcom/android/tools/r8/internal/mD0;

    invoke-direct {p8, p0, p1}, Lcom/android/tools/r8/internal/mD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;)V

    .line 182
    invoke-virtual {p2, p3, p4, p5, p8}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 183
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->h:Lcom/android/tools/r8/internal/j80;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 184
    invoke-interface {p6, p1, p7}, Lcom/android/tools/r8/internal/CI;->g(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 185
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    .line 186
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 296
    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V
    .locals 2

    .line 332
    iget-object v0, p2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/av0;

    .line 337
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Desugaring of static interface method handle in `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` is not yet supported."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V
    .locals 4

    .line 72
    iget p2, p0, Lcom/android/tools/r8/internal/EI;->e:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto/16 :goto_2

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G;->E0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W9;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    instance-of v1, v0, Lcom/android/tools/r8/internal/ha;

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->k()Lcom/android/tools/r8/internal/ha;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ha;->V()Lcom/android/tools/r8/graph/D0;

    move-result-object v1

    .line 81
    iget-object v2, v1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V

    .line 82
    iget-object v1, v1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/R2;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    instance-of v3, v2, Lcom/android/tools/r8/graph/X2;

    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v2, Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/C2;)V

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/W9;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/am;->b()V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 8

    .line 338
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/yI;->d(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 342
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 343
    sget-object v1, Lcom/android/tools/r8/internal/yI;->c:Lcom/android/tools/r8/internal/Ib;

    .line 344
    iget-object v1, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$-CC;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 346
    iget-object v1, v1, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 347
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 349
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 350
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    goto :goto_0

    .line 351
    :goto_1
    new-instance v3, Lcom/android/tools/r8/position/MethodPosition;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    .line 352
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->c:Lcom/android/tools/r8/internal/nJ;

    .line 353
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->c2:Ljava/util/Set;

    .line 354
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v7, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;

    .line 356
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    iget-object p1, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 357
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)V

    .line 358
    invoke-virtual {v0, v7}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 188
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 189
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    const/16 v0, 0x1009

    const/4 v1, 0x0

    .line 190
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 191
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->i:Lcom/android/tools/r8/graph/L4;

    .line 192
    new-instance v0, Lcom/android/tools/r8/internal/qD0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/qD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;)V

    .line 193
    iput-object v0, p2, Lcom/android/tools/r8/synthesis/N;->g:Lcom/android/tools/r8/synthesis/M;

    return-void
.end method

.method public final a(Ljava/util/function/IntConsumer;)V
    .locals 0

    .line 71
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ca;->b(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 282
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 283
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 284
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 285
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 286
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 287
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v3, v1

    .line 288
    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/synthesis/P;

    .line 289
    iget-object v2, v2, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 290
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    iget-object v3, v3, Lcom/android/tools/r8/synthesis/S;->E:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 292
    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/t;

    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 294
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/S;->E:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->j:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Lcom/android/tools/r8/internal/fD0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/fD0;-><init>(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->k:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Lcom/android/tools/r8/internal/vD0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/vD0;-><init>(Lcom/android/tools/r8/internal/ha;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gj;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Gj;

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Gj;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Gj;

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;
    .locals 2

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/nD0;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/internal/nD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;)V

    .line 16
    new-instance p2, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object p1, p0, Lcom/android/tools/r8/internal/EI;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    new-instance p1, Lcom/android/tools/r8/internal/oD0;

    invoke-direct {p1, p0, p3}, Lcom/android/tools/r8/internal/oD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;)V

    .line 30
    new-instance p2, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/EI;->h:Lcom/android/tools/r8/internal/j80;

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 34
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 35
    sget-object p1, Lcom/android/tools/r8/internal/am;->a:Lcom/android/tools/r8/internal/am;

    return-object p1

    .line 36
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/pD0;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/pD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/internal/ga;)V

    .line 37
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/graph/j;->g(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    .line 45
    :cond_5
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 46
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/EI;->l:Z

    if-nez p1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_0
    if-nez p1, :cond_a

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_a
    :goto_1
    iget-object p1, v0, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 49
    iget-object p2, v0, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/android/tools/r8/internal/rD0;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/rD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H0;)V

    .line 51
    invoke-static {p2}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 59
    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    instance-of p2, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 62
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 63
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    goto :goto_0

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p2, p2, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 67
    const-string p3, "$private$"

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 69
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 53
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 54
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/ea;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 56
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->c:Lcom/android/tools/r8/internal/nJ;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/EI;->g:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p2}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;
    .locals 5

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 8
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/AD0;

    invoke-direct {p1, p0, p2, v0}, Lcom/android/tools/r8/internal/AD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    .line 10
    new-instance p2, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v3, v0}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    iget-object v2, v1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    .line 21
    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-nez v2, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 25
    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 29
    iget-object v4, v1, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 30
    invoke-static {v3, v4, p2, v0, v2}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/BD0;

    invoke-direct {p1, p0, v1}, Lcom/android/tools/r8/internal/BD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/Z4$c;)V

    .line 34
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 36
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/gD0;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/tools/r8/internal/gD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/A2;)V

    .line 37
    invoke-static {p1}, Lcom/android/tools/r8/internal/s5;->a(Lcom/android/tools/r8/internal/Wl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    .line 39
    :cond_6
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/am;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/am;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/internal/hD0;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/internal/hD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;)V

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/m2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Xl;

    move-result-object p1

    return-object p1

    .line 43
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/iD0;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/iD0;-><init>(Lcom/android/tools/r8/internal/EI;Lcom/android/tools/r8/graph/H5;)V

    .line 44
    new-instance p2, Lcom/android/tools/r8/internal/Yl;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Yl;-><init>()V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yl;->a(Lcom/android/tools/r8/internal/Zl;)Lcom/android/tools/r8/internal/Yl;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/android/tools/r8/internal/Xl;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Xl;-><init>(Lcom/android/tools/r8/internal/Yl;)V

    return-object p2

    :cond_8
    return-object v0
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 2
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/ky;Lcom/android/tools/r8/internal/QT;Lcom/android/tools/r8/internal/D9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/graph/u1;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/EI;->f:Lcom/android/tools/r8/internal/yI;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p3, p1, Lcom/android/tools/r8/graph/H5;

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1, p6}, Lcom/android/tools/r8/internal/yI;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object p4, p2, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p4

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 10
    invoke-virtual {p1, p5, p4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 11
    iget-object p2, p2, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/e0;

    move-result-object p1

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/A2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/EI;->b:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interface method desugaring has inserted NoSuchMethodError replacing a super call in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 19
    invoke-direct {v1, v2, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-static {p1}, Lcom/android/tools/r8/internal/EI;->f(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
