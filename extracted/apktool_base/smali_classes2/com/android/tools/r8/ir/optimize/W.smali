.class public Lcom/android/tools/r8/ir/optimize/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;

.field public final c:Lcom/android/tools/r8/internal/QR;

.field public final d:Lcom/android/tools/r8/internal/qU;

.field public final e:Lcom/android/tools/r8/ir/optimize/e0;

.field public final f:Lcom/android/tools/r8/internal/f80;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/util/Set;

.field public final i:Lcom/android/tools/r8/internal/p5;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/QR;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->f:Lcom/android/tools/r8/internal/f80;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/W;->c:Lcom/android/tools/r8/internal/QR;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    new-instance p2, Lcom/android/tools/r8/ir/optimize/e0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/ir/optimize/e0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->e:Lcom/android/tools/r8/ir/optimize/e0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/tools/r8/internal/p5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/p5;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->i:Lcom/android/tools/r8/internal/p5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/l3;)V
    .locals 1

    .line 217
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 219
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 221
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-ne p1, p2, :cond_3

    :goto_1
    return-void

    .line 222
    :cond_3
    iget-object p1, p3, Lcom/android/tools/r8/internal/l3;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 283
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 284
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 286
    iget-object v1, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 287
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->A()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 279
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/H5;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;)V
    .locals 1

    .line 245
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 248
    :cond_1
    :goto_1
    sget-boolean p2, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez p2, :cond_3

    invoke-static {p0}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    .line 230
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 231
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 243
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 244
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;)Z
    .locals 4

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 58
    iget-object p0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Lcom/android/tools/r8/internal/l31;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/l31;-><init>()V

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    iget-object v2, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static b(Lcom/android/tools/r8/internal/fB;)I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 3
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    instance-of v3, v2, Lcom/android/tools/r8/internal/C4;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public static b(Lcom/android/tools/r8/graph/y;)V
    .locals 4

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 30
    new-instance v2, Lv/V;

    invoke-direct {v2}, Lv/V;-><init>()V

    new-instance v3, Lv/W;

    invoke-direct {v3, p0}, Lv/W;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Cx0;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/Dx0;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/Dx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-object v1

    .line 7
    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Cj;Lcom/android/tools/r8/internal/cz;)Lcom/android/tools/r8/internal/KD;
    .locals 1

    .line 74
    new-instance p2, Lcom/android/tools/r8/internal/ra0;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/ra0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/KD;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/KD;
    .locals 2

    .line 71
    new-instance v0, Lcom/android/tools/r8/internal/Cj;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 72
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Cj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/E8;)V

    .line 73
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lv/Y;

    invoke-direct {v1, p0, v0}, Lv/Y;-><init>(Lcom/android/tools/r8/ir/optimize/W;Lcom/android/tools/r8/internal/Cj;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/y;->b(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/KD;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;)Lcom/android/tools/r8/ir/optimize/H;
    .locals 7

    .line 75
    new-instance v6, Lcom/android/tools/r8/ir/optimize/H;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/H;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 7

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v1

    .line 10
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/nJ$h;->c:Z

    if-eqz v2, :cond_f

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$h;->n:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v1, :cond_f

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v2

    if-nez v2, :cond_e

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H2;->I1()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/TW;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iget-boolean v1, v2, Lcom/android/tools/r8/shaking/I1;->q:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    iget-boolean v0, v2, Lcom/android/tools/r8/shaking/I1;->m:Z

    if-eqz v0, :cond_d

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->i:Lcom/android/tools/r8/internal/p5;

    if-nez v0, :cond_4

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 29
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 30
    iget-object v3, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 31
    iget-object v4, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 32
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_7
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/W;->i:Lcom/android/tools/r8/internal/p5;

    .line 34
    iget-object v4, v4, Lcom/android/tools/r8/internal/p5;->a:Ljava/util/Set;

    .line 35
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 36
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 37
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v2, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    invoke-static {p1, v0}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 42
    :cond_9
    sget-object v1, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    .line 43
    new-instance v2, Lcom/android/tools/r8/ir/optimize/X;

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/ir/optimize/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 45
    invoke-virtual {v3, v2, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/ir/optimize/X;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v4

    .line 46
    iget-object v5, v4, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v6, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v5, v6, :cond_a

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->A1()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 50
    sget-object v4, Lcom/android/tools/r8/ir/optimize/O;->d:Lcom/android/tools/r8/ir/optimize/O;

    .line 51
    :cond_a
    iget-object v3, v4, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v3, v6, :cond_b

    return-object v4

    .line 53
    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v1, v4, v3}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v1

    goto :goto_2

    :cond_c
    return-object v1

    .line 54
    :cond_d
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 55
    :cond_e
    :goto_3
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 56
    :cond_f
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->f:Lcom/android/tools/r8/internal/f80;

    new-instance v1, Lv/a0;

    invoke-direct {v1}, Lv/a0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lv/b0;

    invoke-direct {v1, p0}, Lv/b0;-><init>(Lcom/android/tools/r8/ir/optimize/W;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 252
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->f:Lcom/android/tools/r8/internal/f80;

    .line 253
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 255
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 256
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/h80;)V
    .locals 2

    .line 257
    new-instance v0, Lv/T;

    invoke-direct {v0, p0}, Lv/T;-><init>(Lcom/android/tools/r8/ir/optimize/W;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/BiPredicate;)Z

    .line 258
    iget-object v0, p2, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Pn;->j()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/w21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/w21;-><init>()V

    .line 260
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 261
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 262
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Set;)V

    .line 265
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 266
    :goto_0
    new-instance p1, Lv/X;

    invoke-direct {p1, p0}, Lv/X;-><init>(Lcom/android/tools/r8/ir/optimize/W;)V

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/KD;)V
    .locals 8

    .line 66
    invoke-virtual {p0, p2, p1, p4, p6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;)Lcom/android/tools/r8/ir/optimize/H;

    move-result-object v1

    .line 67
    new-instance p6, Lcom/android/tools/r8/internal/JD;

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/ir/optimize/W;->c:Lcom/android/tools/r8/internal/QR;

    move-object v2, p6

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/internal/JD;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/dX;)V

    .line 68
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v0, :cond_1

    .line 69
    sget-boolean v0, Lcom/android/tools/r8/internal/JD;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p6, Lcom/android/tools/r8/internal/JD;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    move-object v7, p5

    .line 70
    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/ir/optimize/Y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 268
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/qU;->c(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/qU;

    move-result-object v1

    .line 271
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lv/c0;

    invoke-direct {v3}, Lv/c0;-><init>()V

    .line 272
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/qU;

    move-result-object v1

    .line 273
    iget-object v0, v0, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/qU;)V

    .line 274
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    .line 275
    iget-object v0, v0, Lcom/android/tools/r8/internal/qU;->d:Ljava/util/Set;

    .line 276
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 277
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->e:Lcom/android/tools/r8/ir/optimize/e0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 223
    invoke-static {p2}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 224
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 225
    new-instance v2, Lv/Z;

    invoke-direct {v2, p5, v1}, Lv/Z;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p2, p3, v2}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;)V

    .line 226
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)V

    .line 227
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;)V

    .line 228
    invoke-virtual {p0, p1, p2, v1, p6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V

    .line 229
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)V
    .locals 2

    .line 237
    new-instance v0, Lcom/android/tools/r8/internal/eb0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eb0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 238
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/c01;

    invoke-direct {v1, p4}, Lcom/android/tools/r8/internal/c01;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/tools/r8/internal/ZV;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V

    .line 239
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez p1, :cond_1

    .line 240
    iget-object p1, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 232
    new-instance v0, Lcom/android/tools/r8/ir/optimize/q;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/q;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 233
    new-instance v1, Lcom/android/tools/r8/internal/c01;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/c01;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/ns0;)V

    .line 234
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez p1, :cond_1

    .line 235
    iget-object p1, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/Y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/ns0;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move-object/from16 v4, p6

    .line 76
    new-instance v3, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v3}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 77
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v2

    .line 78
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 79
    new-instance v0, Lcom/android/tools/r8/internal/Pc;

    iget-object v9, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v9, v5}, Lcom/android/tools/r8/internal/Pc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 80
    new-instance v15, Ljava/util/ArrayDeque;

    invoke-direct {v15}, Ljava/util/ArrayDeque;-><init>()V

    .line 81
    iget-object v9, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/nJ;->L()Lcom/android/tools/r8/internal/nJ$h;

    move-result-object v14

    .line 82
    :goto_0
    iget-object v9, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 83
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 84
    iget-object v9, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    iput-object v11, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 85
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v11, :cond_0

    .line 86
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v10

    .line 89
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 90
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/zE;

    .line 91
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 92
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v12

    .line 94
    iget-object v13, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 95
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/shaking/i;

    move-object/from16 v18, v3

    .line 96
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->A2()Z

    move-result v3

    invoke-virtual {v13, v12, v3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v12

    if-eqz v12, :cond_2a

    .line 98
    iget-object v3, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 99
    invoke-virtual {v12, v6, v3}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v3, v18

    goto :goto_1

    .line 100
    :cond_3
    iget-object v3, v12, Lcom/android/tools/r8/graph/Z4$c;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v13, v12, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    invoke-static {v3, v13}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object v3

    .line 101
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 102
    iget-object v3, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v13

    invoke-interface {v10, v3, v13}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    move-object/from16 v19, v11

    goto :goto_4

    .line 103
    :cond_5
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 104
    iget-object v13, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 105
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    move-object/from16 v19, v11

    .line 106
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v11

    .line 107
    invoke-interface {v10, v13, v5, v3, v11}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v3, v18

    move-object/from16 v11, v19

    goto :goto_1

    .line 108
    :goto_4
    invoke-interface {v8, v6, v9}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    if-nez v3, :cond_9

    .line 109
    iget-object v3, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 110
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/shaking/i;

    .line 111
    iget-object v11, v11, Lcom/android/tools/r8/shaking/i;->y:Ljava/util/Set;

    .line 112
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_5
    goto :goto_3

    .line 113
    :cond_7
    invoke-virtual {v9, v3, v6}, Lcom/android/tools/r8/internal/VJ;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_5

    .line 114
    :cond_8
    iget-object v3, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 115
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/H5;

    .line 116
    invoke-virtual {v7, v9, v6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Cx0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/Cx0;->u()V

    goto :goto_6

    .line 117
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/android/tools/r8/ir/optimize/Y;->a()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v11

    if-nez v11, :cond_b

    :cond_a
    move-object/from16 v20, v10

    goto :goto_7

    .line 118
    :cond_b
    new-instance v11, Lcom/android/tools/r8/ir/optimize/K;

    iget-object v13, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/ir/optimize/T;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/ir/optimize/T;-><init>(Lcom/android/tools/r8/graph/H5;)V

    move-object/from16 v20, v10

    .line 119
    new-instance v10, Lcom/android/tools/r8/internal/Rm0;

    invoke-direct {v10, v9, v5}, Lcom/android/tools/r8/internal/Rm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-direct {v11, v13, v10}, Lcom/android/tools/r8/ir/optimize/K;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)V

    move-object v5, v11

    goto :goto_8

    :goto_7
    move-object v5, v8

    .line 121
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/android/tools/r8/graph/j1;

    .line 122
    invoke-interface {v5}, Lcom/android/tools/r8/ir/optimize/Y;->a()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 123
    sget-object v10, Lcom/android/tools/r8/internal/c10;->a:Lcom/android/tools/r8/internal/c10;

    :goto_9
    move-object v11, v10

    move-object v10, v9

    goto :goto_a

    .line 124
    :cond_c
    invoke-virtual {v7, v3, v6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Cx0;

    move-result-object v10

    goto :goto_9

    :goto_a
    move-object v9, v5

    move-object/from16 v21, v10

    move-object/from16 v10, p3

    move-object/from16 v22, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v21

    move-object v4, v13

    move-object v13, v3

    move-object/from16 v23, v14

    move-object/from16 v14, p2

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, p5

    move-object/from16 v17, v19

    .line 125
    invoke-interface/range {v9 .. v17}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;

    move-result-object v9

    if-nez v9, :cond_e

    .line 126
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v3, :cond_d

    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/internal/Cx0;->w()V

    :cond_d
    :goto_b
    move-object/from16 v5, p3

    move-object/from16 v4, p6

    :goto_c
    move-object/from16 v3, v18

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    goto/16 :goto_1

    .line 127
    :cond_e
    instance-of v10, v9, Lcom/android/tools/r8/ir/optimize/V;

    if-eqz v10, :cond_f

    .line 128
    iget-object v3, v7, Lcom/android/tools/r8/ir/optimize/W;->d:Lcom/android/tools/r8/internal/qU;

    iget-object v4, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_b

    .line 129
    :cond_f
    invoke-virtual {v9}, Lcom/android/tools/r8/ir/optimize/S;->a()Lcom/android/tools/r8/ir/optimize/Q;

    move-result-object v15

    .line 130
    iget-object v9, v15, Lcom/android/tools/r8/ir/optimize/Q;->c:Lcom/android/tools/r8/ir/optimize/U;

    sget-object v10, Lcom/android/tools/r8/ir/optimize/U;->d:Lcom/android/tools/r8/ir/optimize/U;

    if-ne v9, v10, :cond_11

    .line 131
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v3, :cond_d

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    move-object/from16 v14, v19

    .line 132
    invoke-interface {v5, v15, v14}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 133
    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v3, :cond_d

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Cx0;->w()V

    goto :goto_b

    .line 134
    :cond_12
    iget-object v9, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v13, p5

    move-object/from16 v12, v21

    invoke-virtual {v15, v9, v12, v6, v13}, Lcom/android/tools/r8/ir/optimize/Q;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/JD;)Lcom/android/tools/r8/internal/fB;

    move-result-object v11

    move-object v9, v5

    move-object v10, v15

    move-object v5, v11

    move-object/from16 v11, p3

    move-object/from16 v16, v12

    move-object v12, v5

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object/from16 v14, v22

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v15, v16

    .line 135
    invoke-interface/range {v9 .. v15}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/ir/optimize/Q;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Cx0;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 136
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v0, :cond_13

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/Cx0;->w()V

    :cond_13
    move-object/from16 v5, p3

    move-object/from16 v4, p6

    move-object/from16 v0, v17

    goto :goto_c

    .line 137
    :cond_14
    sget-boolean v16, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v16, :cond_16

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/j1;->o1()Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_d

    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_16
    :goto_d
    iget-object v9, v5, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 139
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/mB;->c()Z

    move-result v19

    .line 140
    invoke-interface/range {v20 .. v20}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 141
    invoke-interface {v8, v5}, Lcom/android/tools/r8/ir/optimize/Y;->a(Lcom/android/tools/r8/internal/fB;)V

    .line 142
    iget-object v10, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 143
    iget-object v15, v0, Lcom/android/tools/r8/ir/optimize/Q;->f:Lcom/android/tools/r8/graph/H2;

    move-object/from16 v9, v20

    move-object/from16 v11, p3

    move-object v12, v5

    move-object v13, v1

    move-object v14, v2

    .line 144
    invoke-interface/range {v9 .. v15}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/W5;

    .line 145
    iget-object v5, v0, Lcom/android/tools/r8/ir/optimize/Q;->e:Lcom/android/tools/r8/internal/f80;

    if-eqz v5, :cond_1b

    if-nez v16, :cond_18

    .line 146
    iget-object v5, v5, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 147
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_e

    .line 148
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    :goto_e
    if-nez v16, :cond_1a

    .line 149
    iget-object v5, v7, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    .line 150
    iget-object v5, v5, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz v5, :cond_19

    goto :goto_f

    .line 151
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_1a
    :goto_f
    iget-object v5, v7, Lcom/android/tools/r8/ir/optimize/W;->f:Lcom/android/tools/r8/internal/f80;

    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/Q;->e:Lcom/android/tools/r8/internal/f80;

    .line 153
    iget-object v5, v5, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 154
    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/ir/optimize/W;->b()V

    .line 156
    :cond_1b
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Lcom/android/tools/r8/internal/E8;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    move-object/from16 v9, p4

    if-eqz v0, :cond_1f

    .line 157
    invoke-interface {v9, v4}, Lcom/android/tools/r8/internal/SW;->b(Lcom/android/tools/r8/graph/j1;)V

    .line 158
    iget-object v0, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lv/e0;

    move-object v10, v4

    move-object/from16 v4, p6

    invoke-direct {v5, v3, v6, v4}, Lv/e0;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V

    .line 159
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v0, :cond_1c

    .line 160
    invoke-interface {v5, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 161
    :cond_1c
    instance-of v0, v4, Lcom/android/tools/r8/internal/d40;

    if-nez v0, :cond_20

    if-nez v16, :cond_1e

    .line 162
    iget-object v0, v7, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    .line 163
    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz v0, :cond_1d

    goto :goto_10

    .line 164
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 165
    :cond_1e
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/ir/optimize/W;->b()V

    .line 166
    iget-object v0, v7, Lcom/android/tools/r8/ir/optimize/W;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    new-instance v11, Lv/f0;

    invoke-direct {v11}, Lv/f0;-><init>()V

    invoke-static {v11}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v11

    .line 168
    invoke-virtual {v0, v5, v11}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/h80;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    sget-object v5, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 171
    new-instance v11, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v11, v5, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 172
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1f
    move-object v10, v4

    move-object/from16 v4, p6

    .line 173
    :cond_20
    :goto_11
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/dX;->c()Lcom/android/tools/r8/internal/E8;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/E8;->c(Lcom/android/tools/r8/graph/H5;)V

    move-object/from16 v0, v17

    const/4 v11, 0x0

    .line 174
    iput-object v11, v0, Lcom/android/tools/r8/internal/Pc;->c:Lcom/android/tools/r8/internal/dt;

    .line 175
    iget v5, v0, Lcom/android/tools/r8/internal/Pc;->d:I

    if-ltz v5, :cond_21

    .line 176
    iget-object v12, v0, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v12, v5}, Lcom/android/tools/r8/internal/fB;->a(I)V

    const/4 v12, -0x1

    .line 177
    iput v12, v0, Lcom/android/tools/r8/internal/Pc;->d:I

    :goto_12
    move-object v13, v0

    goto :goto_13

    :cond_21
    const/4 v12, -0x1

    goto :goto_12

    :goto_13
    move-object/from16 v0, p0

    move-object v14, v1

    move-object/from16 v1, p3

    move-object v15, v2

    move-object v2, v14

    move-object/from16 v16, v3

    move-object/from16 v5, v18

    move-object/from16 v3, v22

    move-object v4, v5

    move-object/from16 v11, p3

    move-object/from16 v25, v5

    move-object v5, v15

    move-object/from16 v6, p7

    .line 178
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;Lcom/android/tools/r8/internal/ns0;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v0

    if-nez v0, :cond_22

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 181
    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit8 v1, v1, -0x41

    .line 182
    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 183
    :cond_22
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 184
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-nez v0, :cond_23

    .line 185
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    .line 186
    iget v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v1, v1, -0x1001

    .line 187
    iput v1, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 188
    :cond_23
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object v1, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, v10}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)V

    if-eqz v19, :cond_29

    .line 189
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 190
    iget-object v2, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v3, v23

    .line 191
    iget-object v4, v3, Lcom/android/tools/r8/internal/nJ$h;->m:Lcom/android/tools/r8/internal/nJ$a;

    if-eqz v4, :cond_24

    move-object/from16 v5, v16

    .line 192
    invoke-interface {v4, v2, v5, v0}, Lcom/android/tools/r8/internal/nJ$a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result v1

    goto :goto_14

    :cond_24
    move-object/from16 v5, v16

    .line 193
    iget-object v4, v3, Lcom/android/tools/r8/internal/nJ$h;->n:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 195
    iget-object v4, v2, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 196
    iget-object v4, v4, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    .line 197
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/La0;->b(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_14

    :cond_25
    if-gt v0, v1, :cond_27

    .line 199
    iget-object v0, v2, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 200
    iget-object v0, v0, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    .line 201
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v4, v0, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v4, :cond_26

    goto :goto_14

    .line 202
    :cond_26
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v0, :cond_27

    goto :goto_14

    :cond_27
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_28

    .line 203
    invoke-static {v14}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    move-object/from16 v1, v24

    .line 204
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 205
    new-instance v0, Lv/U;

    move-object/from16 v2, v22

    invoke-direct {v0, v2}, Lv/U;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-static {v14, v0}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 206
    iget-object v0, v14, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iput-object v0, v14, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    move-object/from16 v6, p2

    move-object/from16 v4, p6

    move-object v5, v11

    move-object v0, v13

    move-object/from16 v10, v20

    move-object v11, v2

    :goto_15
    move-object v2, v15

    move-object v15, v1

    move-object v1, v14

    :goto_16
    move-object v14, v3

    :goto_17
    move-object/from16 v3, v25

    goto/16 :goto_1

    :cond_28
    move-object/from16 v6, p2

    move-object/from16 v4, p6

    move-object v5, v11

    move-object v0, v13

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    move-object/from16 v15, v24

    goto :goto_16

    :cond_29
    move-object/from16 v6, p2

    move-object/from16 v4, p6

    move-object v5, v11

    move-object v0, v13

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, v20

    move-object/from16 v11, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    goto :goto_17

    :cond_2a
    move-object/from16 v9, p4

    move-object v3, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v11

    move-object/from16 v6, p2

    move-object/from16 v4, p6

    move-object v2, v15

    move-object v15, v1

    move-object v1, v14

    move-object v14, v3

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v9, p4

    move-object/from16 v25, v3

    move-object v3, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v11

    move-object/from16 v6, p2

    move-object/from16 v4, p6

    goto :goto_15

    :cond_2c
    move-object/from16 v9, p4

    move-object/from16 v25, v3

    move-object/from16 v6, p2

    move-object/from16 v4, p6

    goto/16 :goto_0

    :cond_2d
    move-object v13, v0

    move-object/from16 v25, v3

    move-object v11, v5

    move-object v1, v15

    const/4 v12, -0x1

    move-object v15, v2

    .line 207
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/W;->k:Z

    if-nez v0, :cond_2f

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_18

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_2f
    :goto_18
    invoke-virtual {v11, v15}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    .line 209
    iget v1, v13, Lcom/android/tools/r8/internal/Pc;->d:I

    if-ltz v1, :cond_30

    .line 210
    iget-object v2, v13, Lcom/android/tools/r8/internal/Pc;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/fB;->a(I)V

    .line 211
    iput v12, v13, Lcom/android/tools/r8/internal/Pc;->d:I

    :cond_30
    move-object/from16 v1, v25

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v11, v2, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    .line 213
    iget-object v2, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 214
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v1, v2, v11, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/fB;->x()V

    if-nez v0, :cond_32

    .line 216
    iget-object v0, v7, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v11, v0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_19

    :cond_31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_32
    :goto_19
    return-void
.end method

.method public final b()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    new-instance v1, Lv/d0;

    invoke-direct {v1, p0}, Lv/d0;-><init>(Lcom/android/tools/r8/ir/optimize/W;)V

    .line 23
    iget-object v2, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Attempt to call addWaveDoneAction() outside of wave."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "addWaveDoneAction() should never be used in D8."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    const/4 v1, 0x2

    .line 11
    iget p2, p2, Lcom/android/tools/r8/graph/g;->b:I

    .line 12
    invoke-static {p2, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p2

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->g1:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    if-eqz v0, :cond_3

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H5;->c(Lcom/android/tools/r8/graph/y;)V

    .line 20
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/kB;->c(Lcom/android/tools/r8/graph/H5;)V

    :cond_3
    return v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/W;->b:Lcom/android/tools/r8/internal/kB;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    sget-boolean v2, Lcom/android/tools/r8/graph/M5;->h:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/W;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
