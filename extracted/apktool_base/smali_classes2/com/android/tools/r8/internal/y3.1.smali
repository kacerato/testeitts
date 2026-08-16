.class public final Lcom/android/tools/r8/internal/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/y70;

.field public final c:Lcom/android/tools/r8/internal/Mw;

.field public final d:Lcom/android/tools/r8/internal/zX;

.field public final e:Lcom/android/tools/r8/internal/nJ;

.field public final f:Lcom/android/tools/r8/internal/O60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;Lcom/android/tools/r8/internal/O60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/y3;->b:Lcom/android/tools/r8/internal/y70;

    iput-object p3, p0, Lcom/android/tools/r8/internal/y3;->c:Lcom/android/tools/r8/internal/Mw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/y3;->d:Lcom/android/tools/r8/internal/zX;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/y3;->e:Lcom/android/tools/r8/internal/nJ;

    iput-object p5, p0, Lcom/android/tools/r8/internal/y3;->f:Lcom/android/tools/r8/internal/O60;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/O5;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/az1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/az1;-><init>(Lcom/android/tools/r8/internal/y3;Lcom/android/tools/r8/internal/m80;)V

    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-static {v3, v1, v2, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 8
    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->b:Lcom/android/tools/r8/internal/y70;

    .line 9
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 10
    iget-object v3, v3, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 11
    iget-object v3, v3, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 12
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->f:Lcom/android/tools/r8/internal/O60;

    iget-object v4, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v4

    .line 14
    iget-object v3, v3, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->b:Lcom/android/tools/r8/internal/y70;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/y70;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->b:Lcom/android/tools/r8/internal/y70;

    .line 18
    sget-object v2, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 19
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;)V

    .line 20
    new-instance p1, Lcom/android/tools/r8/graph/M5;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v1

    .line 23
    iput-object v1, p1, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/EZ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EZ0;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Vn;->b(Ljava/util/function/IntFunction;)Ljava/util/Set;

    move-result-object v0

    .line 26
    iput-object v0, p1, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 237
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-object p3

    .line 240
    :cond_1
    new-instance p2, Lcom/android/tools/r8/internal/lg;

    iget-object p3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 241
    iget-object p3, p3, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 242
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object p1

    .line 243
    sget-boolean p3, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 244
    sget-object p3, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    .line 245
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p2, p1, p3, v0}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/m80;
    .locals 3

    .line 31
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/android/tools/r8/internal/cz1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/cz1;-><init>(Lcom/android/tools/r8/internal/y3;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 34
    new-instance v1, Lcom/android/tools/r8/internal/dz1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/dz1;-><init>(Lcom/android/tools/r8/internal/y3;Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Vn;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 37
    :cond_0
    iget-object v2, p1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Set;)V

    .line 38
    sget-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v1, p1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;
    .locals 4

    .line 219
    sget-boolean v0, Lcom/android/tools/r8/internal/y3;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 220
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/y3;->e:Lcom/android/tools/r8/internal/nJ;

    .line 221
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/I1;->p:Z

    if-eqz v1, :cond_6

    .line 223
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 224
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v1

    .line 226
    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object v0

    .line 228
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/ng;->b:Z

    .line 229
    iget-object v0, v0, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    .line 230
    invoke-interface {p2}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 231
    :cond_4
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 233
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    move-object v0, v2

    .line 234
    :goto_3
    new-instance v2, Lcom/android/tools/r8/internal/bz1;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/internal/bz1;-><init>(Lcom/android/tools/r8/internal/y3;Lcom/android/tools/r8/graph/H5;)V

    const/4 p1, 0x0

    .line 235
    invoke-static {v0, v2, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/bI;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 236
    new-instance p2, Lcom/android/tools/r8/internal/ng;

    invoke-direct {p2, p1, v1}, Lcom/android/tools/r8/internal/ng;-><init>(Ljava/util/List;Z)V

    :cond_6
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->c:Lcom/android/tools/r8/internal/Mw;

    .line 40
    iget-object v0, v0, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 41
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 42
    sget-object v1, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 43
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/tools/r8/internal/Iw0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object v0

    .line 49
    :goto_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/zv0;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    sget v2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    return-void

    .line 53
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/y3;->g:Z

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->a()Lcom/android/tools/r8/internal/ig;

    move-result-object v0

    .line 58
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 64
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    .line 65
    sget-object v0, Lcom/android/tools/r8/internal/zt;->d:Lcom/android/tools/r8/internal/zt;

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xt;)V

    return-void

    .line 67
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 68
    sget-boolean v0, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v0, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xt;)V

    return-void

    .line 69
    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 70
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lg;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    iget-object v4, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 74
    iget-object v1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 75
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 76
    iget-object v0, v0, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    if-eqz v1, :cond_8

    .line 77
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v2

    if-nez v2, :cond_8

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 80
    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    .line 81
    :cond_8
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xt;)V

    return-void

    :cond_9
    if-nez v1, :cond_b

    .line 82
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Iw0;->e()Lcom/android/tools/r8/internal/ug;

    move-result-object v0

    .line 84
    iget-object v0, v0, Lcom/android/tools/r8/internal/ug;->e:Lcom/android/tools/r8/internal/F1;

    .line 85
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/xt;)V
    .locals 3

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 89
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/wX;)V
    .locals 9

    .line 101
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_9

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 104
    iget-object p3, p3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 105
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->E()Z

    move-result p3

    if-nez p3, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H3$g;->b()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 108
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 109
    iget-object p3, p3, Lcom/android/tools/r8/shaking/i;->n:Ljava/util/Set;

    .line 110
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 111
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 113
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H5;->c(Lcom/android/tools/r8/graph/y;)V

    .line 114
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->b:Lcom/android/tools/r8/internal/y70;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/kB;->c(Lcom/android/tools/r8/graph/H5;)V

    .line 115
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->f:Lcom/android/tools/r8/internal/O60;

    iget-object p3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object p3

    .line 116
    iget-object p2, p2, Lcom/android/tools/r8/internal/O60;->a:Lcom/android/tools/r8/internal/qU;

    .line 117
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/qU;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 118
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->e:Lcom/android/tools/r8/internal/nJ;

    .line 119
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    iget-boolean p2, p2, Lcom/android/tools/r8/shaking/I1;->p:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 121
    :cond_3
    sget-object p3, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    .line 122
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->e:Lcom/android/tools/r8/internal/nJ;

    .line 123
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/I1;->i(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 124
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)Lcom/android/tools/r8/internal/wX;

    move-result-object p3

    .line 125
    :cond_4
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->isUnknown()Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_9

    .line 126
    :cond_5
    invoke-interface {p3}, Lcom/android/tools/r8/internal/wX;->d()Lcom/android/tools/r8/internal/mg;

    move-result-object p2

    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    instance-of p3, p2, Lcom/android/tools/r8/internal/sg;

    if-eqz p3, :cond_7

    .line 129
    sget-boolean p1, Lcom/android/tools/r8/internal/y3;->g:Z

    if-eqz p1, :cond_6

    goto/16 :goto_9

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 130
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xX;->b()Lcom/android/tools/r8/internal/ng;

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    .line 131
    :goto_1
    iget-object v1, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 133
    iget-object v1, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Iw0;

    .line 134
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 135
    instance-of v1, v2, Lcom/android/tools/r8/internal/lg;

    if-nez v1, :cond_8

    goto :goto_3

    .line 136
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Iw0;->b()Lcom/android/tools/r8/internal/lg;

    move-result-object v1

    .line 137
    iget-object v1, v1, Lcom/android/tools/r8/internal/lg;->g:Lcom/android/tools/r8/internal/xt;

    .line 138
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H0;->a(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    .line 140
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 141
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 142
    invoke-static {v3, v1, v6, v4}, Lcom/android/tools/r8/internal/Ix0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    .line 144
    :cond_a
    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 146
    iget-object v4, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 147
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/internal/lg;

    .line 148
    sget v1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v1, Lcom/android/tools/r8/internal/A7;->b:Lcom/android/tools/r8/internal/A7;

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v5

    .line 149
    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v4, v1, v5, v7}, Lcom/android/tools/r8/internal/lg;-><init>(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/xt;Ljava/util/Set;)V

    .line 150
    sget-object v7, Lcom/android/tools/r8/internal/Bo0;->b:Lcom/android/tools/r8/internal/Ao0;

    .line 151
    sget-object v8, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    const/4 v5, 0x0

    .line 152
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object v1

    .line 153
    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/ng;->a(ILcom/android/tools/r8/internal/Iw0;)V

    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_c
    iget-boolean v0, p2, Lcom/android/tools/r8/internal/ng;->b:Z

    iget-object v1, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ng;->a(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_9

    .line 155
    :cond_d
    sget-boolean v0, Lcom/android/tools/r8/internal/y3;->g:Z

    if-nez v0, :cond_f

    .line 156
    iget-object v1, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 157
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/ez1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ez1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_f
    :goto_4
    if-nez v0, :cond_11

    .line 158
    iget-object v0, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 159
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/fz1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fz1;-><init>()V

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/gz1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gz1;-><init>()V

    .line 161
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/hz1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hz1;-><init>()V

    .line 162
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    .line 163
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 164
    :cond_11
    :goto_5
    iget-object v0, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 165
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    .line 166
    new-instance v2, Lcom/android/tools/r8/internal/jg;

    .line 167
    iget-object v3, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    .line 168
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 169
    new-instance v4, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    new-instance v5, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/jg;-><init>(ILcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)V

    const/4 v3, 0x1

    move v4, p3

    .line 170
    :goto_6
    iget-object v5, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 171
    iget-object v5, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/Iw0;

    .line 172
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    instance-of v6, v5, Lcom/android/tools/r8/internal/zv0;

    if-eqz v6, :cond_12

    goto/16 :goto_8

    .line 174
    :cond_12
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object v5

    .line 175
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object v6

    .line 176
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->b0()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 177
    iget-object v3, v2, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v3, v4, v6}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, p3

    .line 178
    :cond_13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    .line 179
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    .line 180
    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v6

    invoke-virtual {v7, v4, v6}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 182
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    .line 183
    invoke-static {v6, v7, v1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 184
    invoke-static {v1, v7}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v7

    .line 185
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 186
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Iw0;->a()Lcom/android/tools/r8/internal/ig;

    move-result-object v5

    .line 187
    iget-object v5, v5, Lcom/android/tools/r8/internal/ig;->f:Lcom/android/tools/r8/internal/p10;

    .line 188
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 189
    iget-object v3, v2, Lcom/android/tools/r8/internal/jg;->c:Lcom/android/tools/r8/internal/SG;

    .line 190
    iget-object v5, v1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 191
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/tools/r8/internal/G1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Hm0;

    move-result-object v5

    .line 192
    invoke-interface {v3, v4, v5}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move v3, p3

    goto :goto_8

    .line 193
    :cond_14
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 194
    iget-object v3, v2, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    .line 195
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object v5

    .line 196
    invoke-interface {v3, v4, v5}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 197
    :cond_15
    sget-boolean v5, Lcom/android/tools/r8/internal/jg;->d:Z

    if-eqz v5, :cond_16

    goto :goto_8

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 198
    :cond_17
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 199
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Iw0;->g()Lcom/android/tools/r8/internal/xg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xg;->z()Lcom/android/tools/r8/internal/xt;

    move-result-object v5

    .line 200
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v6

    if-nez v6, :cond_18

    .line 201
    iget-object v3, v2, Lcom/android/tools/r8/internal/jg;->b:Lcom/android/tools/r8/internal/SG;

    invoke-interface {v3, v4, v5}, Lcom/android/tools/r8/internal/HG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_18
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_19
    if-eqz v3, :cond_1a

    .line 202
    sget-object v2, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    .line 203
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 205
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p3

    .line 206
    iput-object v2, p3, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 207
    :cond_1b
    iget-boolean p3, p2, Lcom/android/tools/r8/internal/ng;->b:Z

    if-nez p3, :cond_1c

    .line 208
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object p3

    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p3

    .line 210
    iput-object v0, p3, Lcom/android/tools/r8/internal/WY;->k:Lcom/android/tools/r8/internal/t40;

    .line 211
    :cond_1c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p3

    .line 212
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->G()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 213
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result p3

    .line 214
    iget-object p2, p2, Lcom/android/tools/r8/internal/ng;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Iw0;

    .line 215
    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object p3

    .line 216
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/F1;

    move-result-object p2

    .line 217
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/j1;)V

    :cond_1d
    :goto_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/m80;

    move-result-object p2

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 30
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/y3;->d:Lcom/android/tools/r8/internal/zX;

    .line 97
    sget-object v1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    .line 98
    iget-object v2, v0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    .line 99
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/zX;->a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/wX;

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 100
    :cond_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/tools/r8/internal/y3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method
