.class public final Lcom/android/tools/r8/internal/md;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/bx0;

.field public final d:Lcom/android/tools/r8/internal/bx0;

.field public final e:Lcom/android/tools/r8/internal/mx0;

.field public final f:Lcom/android/tools/r8/graph/H2;

.field public final g:Lcom/android/tools/r8/graph/H2;

.field public final h:Lcom/android/tools/r8/internal/qd;

.field public final i:Ljava/util/ArrayList;

.field public j:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/k40;->a()Lcom/android/tools/r8/internal/o40;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/md;->k:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/bx0;Lcom/android/tools/r8/internal/qd;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/mx0;Lcom/android/tools/r8/internal/lx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    new-instance p1, Lcom/android/tools/r8/internal/bx0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/bx0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/md;->d:Lcom/android/tools/r8/internal/bx0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/md;->h:Lcom/android/tools/r8/internal/qd;

    iput-object p4, p0, Lcom/android/tools/r8/internal/md;->i:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/tools/r8/internal/md;->e:Lcom/android/tools/r8/internal/mx0;

    iget-object p1, p6, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object p1, p6, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p1, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/U3;Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 296
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/U3;->b(Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object p0

    .line 298
    sget-boolean v0, Lcom/android/tools/r8/graph/g1;->p:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 299
    :cond_2
    :goto_0
    iput-object p0, p1, Lcom/android/tools/r8/graph/g1;->k:Lcom/android/tools/r8/graph/H3$e;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/U3;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$g;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/U3;->f(Ljava/util/List;)Lcom/android/tools/r8/graph/U3;

    move-result-object p0

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/U3;->a(Lcom/android/tools/r8/graph/H3$g;)Lcom/android/tools/r8/graph/H3$g;

    move-result-object p0

    .line 294
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 295
    :cond_2
    :goto_0
    iput-object p0, p1, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1$a;)V
    .locals 1

    .line 235
    new-instance v0, Lcom/android/tools/r8/internal/Lk1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lk1;-><init>()V

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 237
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1$a;->f:Lcom/android/tools/r8/internal/t40;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    new-instance v0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 201
    iget-object p0, p0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    new-instance p0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p0, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 204
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    new-instance p0, Lcom/android/tools/r8/graph/D2;

    invoke-direct {p0, p3}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 207
    iget-object p1, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/l1;)Z
    .locals 0

    .line 245
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    instance-of p0, p0, Lcom/android/tools/r8/graph/l0;

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/U3;
    .locals 5

    .line 300
    sget-boolean v0, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 301
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/graph/H3$b;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    return-object v1

    .line 302
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Type should be present in generic signature"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 303
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 304
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object p2

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 306
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_4

    return-object v1

    .line 307
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Invalid argument count to formals"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    const/4 v0, 0x0

    .line 308
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 309
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H3$e;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 311
    invoke-static {}, Lcom/android/tools/r8/graph/M3$a;->a()Lcom/android/tools/r8/graph/M3$a;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/graph/M3$a;->a(Ljava/util/Map;)Lcom/android/tools/r8/graph/M3$a;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/Wk1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wk1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Yk1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Yk1;-><init>()V

    .line 312
    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/U3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3$a;Ljava/util/function/BiPredicate;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/U3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 314
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 315
    sget-boolean v1, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    if-nez v1, :cond_3

    .line 316
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/j1;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 337
    invoke-virtual {p3, v0, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 338
    invoke-interface {p2, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object p3, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 341
    invoke-virtual {p2, p3, v0}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 342
    iget-object p3, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 343
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 344
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 346
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v3

    iget-object p3, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 347
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 348
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object p3, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 349
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    sget-boolean p3, Lcom/android/tools/r8/graph/u1;->K6:Z

    if-nez p3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 v8, 0x0

    move-object v7, p2

    .line 352
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/graph/u1;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 353
    iget-object p3, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 354
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 355
    invoke-virtual {p1, p2, p3, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Dq;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Dq;->a(Ljava/lang/Iterable;)V

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/Cq;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/Cq;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Cq;-><init>(Ljava/util/Map;)V

    .line 7
    new-instance v4, Lcom/android/tools/r8/internal/Zk1;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/tools/r8/internal/Zk1;-><init>(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/internal/Cq;)V

    .line 8
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    new-instance v5, Lcom/android/tools/r8/internal/bl1;

    invoke-direct {v5, v0, v4, v2}, Lcom/android/tools/r8/internal/bl1;-><init>(Lcom/android/tools/r8/internal/md;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/Cq;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v6, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v1, v5, v6}, Lcom/android/tools/r8/graph/H2;->e(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    new-instance v5, Lcom/android/tools/r8/internal/fH0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/fH0;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 11
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 12
    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {v8, v5, v7, v6, v6}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)V

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->q1()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->q1()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v5

    .line 15
    iget v6, v5, Lcom/android/tools/r8/graph/g;->c:I

    and-int/lit16 v6, v6, -0x1001

    .line 16
    iput v6, v5, Lcom/android/tools/r8/graph/g;->c:I

    goto :goto_0

    .line 17
    :cond_1
    sget-boolean v7, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 18
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v9, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 20
    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 21
    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 23
    invoke-virtual {v5, v7, v8, v6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    .line 24
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 25
    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    .line 26
    iget-object v7, v7, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 27
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v5, v8}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v5

    .line 29
    iget-object v7, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 30
    :cond_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    new-instance v5, Lcom/android/tools/r8/internal/fH0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/fH0;-><init>()V

    invoke-static {v5}, Lcom/android/tools/r8/internal/Na1;->a(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 31
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object v8

    .line 32
    iget-object v9, v0, Lcom/android/tools/r8/internal/md;->j:Ljava/util/function/Predicate;

    invoke-interface {v9, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v8, :cond_5

    .line 33
    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {v7, v5, v8, v6, v6}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v9, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 36
    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 37
    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 38
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 39
    invoke-virtual {v5, v7, v8, v6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v8

    .line 41
    iget-object v9, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v8, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    .line 43
    iget-object v8, v8, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 44
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v8, v5, v7}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 45
    :cond_6
    iget-object v9, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 46
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2e

    const/16 v13, 0x24

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 47
    iget-object v12, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v13, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 48
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 49
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v14, v7, v15}, Lcom/android/tools/r8/graph/I2;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    iget-object v14, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 50
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v16, v15, 0x1

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v15, :cond_7

    .line 52
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    iget-object v15, v14, Lcom/android/tools/r8/graph/u1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v10, Lcom/android/tools/r8/graph/L2;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/graph/L2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/L2;

    if-nez v10, :cond_a

    .line 55
    invoke-virtual {v14, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 56
    invoke-virtual {v12, v13, v7, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 57
    sget-boolean v7, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v7, :cond_9

    invoke-interface {v4, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_9
    :goto_4
    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v9, Lcom/android/tools/r8/internal/cl1;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/cl1;-><init>()V

    .line 59
    invoke-virtual {v5, v6, v7, v9}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    goto :goto_6

    :cond_a
    move/from16 v15, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    const/4 v6, 0x1

    .line 60
    invoke-virtual {v0, v5, v4, v6}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/j1;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v6

    .line 62
    sget-boolean v9, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v9, :cond_d

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_5

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 63
    :cond_d
    :goto_5
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->A()V

    .line 64
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->B()V

    .line 65
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->w()V

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g;->t()V

    move-object v6, v7

    .line 67
    :goto_6
    iget-object v7, v6, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 68
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v7, v2

    goto :goto_7

    :cond_e
    move-object v7, v3

    .line 69
    :goto_7
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v9

    .line 70
    iget-object v7, v7, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_15

    .line 71
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    iget-object v9, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v10, v0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 73
    invoke-virtual {v7, v9, v10}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 74
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    .line 75
    new-instance v10, Lcom/android/tools/r8/graph/L4;

    .line 76
    iget v11, v9, Lcom/android/tools/r8/graph/g;->b:I

    .line 77
    iget v9, v9, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v10, v11, v9}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 78
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/L4;->N()Lcom/android/tools/r8/graph/L4;

    .line 79
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    const/16 v9, 0x400

    .line 80
    invoke-virtual {v10, v9}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 81
    sget-boolean v9, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v9, :cond_10

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_8

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 82
    :cond_10
    :goto_8
    new-instance v11, Lcom/android/tools/r8/internal/iD;

    .line 83
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    .line 84
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v13

    if-eqz v13, :cond_11

    sget-object v13, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    goto :goto_9

    :cond_11
    sget-object v13, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    :goto_9
    iget-object v14, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 85
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lcom/android/tools/r8/internal/iD;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    .line 86
    iget-object v12, v0, Lcom/android/tools/r8/internal/md;->i:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v12

    goto :goto_a

    :cond_12
    const/4 v12, 0x0

    .line 88
    :goto_a
    new-instance v13, Lcom/android/tools/r8/graph/j1$a;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 89
    invoke-virtual {v13, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    .line 90
    invoke-virtual {v7, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    .line 91
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    .line 92
    iput-object v12, v7, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 93
    iget-object v10, v5, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 94
    iput-object v10, v7, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 95
    iput-object v10, v7, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 96
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v7

    .line 97
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v10

    .line 98
    iput-object v10, v7, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 99
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    if-nez v9, :cond_14

    .line 100
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    .line 101
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/g;->i()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 102
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    .line 103
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/g;->i()Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_b

    .line 104
    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 105
    :cond_14
    :goto_b
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v9

    .line 106
    iget-object v10, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v7

    goto :goto_c

    :cond_15
    move-object v7, v8

    const/4 v9, 0x0

    .line 107
    :goto_c
    new-instance v10, Lcom/android/tools/r8/graph/H5;

    iget-object v11, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-direct {v10, v11, v7}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 108
    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 109
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v7

    new-instance v11, Lcom/android/tools/r8/internal/dl1;

    invoke-direct {v11, v0, v10, v5}, Lcom/android/tools/r8/internal/dl1;-><init>(Lcom/android/tools/r8/internal/md;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1;)V

    .line 110
    invoke-virtual {v7, v11}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    .line 111
    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {v7, v5, v8, v9, v6}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)V

    const/4 v6, 0x0

    goto/16 :goto_2

    .line 112
    :cond_16
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 113
    iget-object v5, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 114
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 115
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    new-instance v4, Lcom/android/tools/r8/internal/el1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/el1;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/fl1;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/fl1;-><init>(Lcom/android/tools/r8/internal/md;)V

    invoke-virtual {v1, v5, v4}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 116
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 117
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/g1;

    .line 118
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 119
    :cond_17
    new-instance v4, Lcom/android/tools/r8/internal/Mk1;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/Mk1;-><init>(Ljava/util/Set;)V

    .line 120
    iget-object v5, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 121
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 122
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v6

    .line 123
    invoke-virtual {v0, v5, v6, v4, v1}, Lcom/android/tools/r8/internal/md;->a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/HashSet;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v5

    .line 124
    iget-object v6, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 125
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 126
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v7

    .line 127
    invoke-virtual {v0, v6, v7, v4, v1}, Lcom/android/tools/r8/internal/md;->a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/HashSet;)[Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 128
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    iget-object v6, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 129
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    invoke-static {v7, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 131
    invoke-static {v7, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 132
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 133
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v7, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    .line 134
    :cond_18
    sget-boolean v4, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v4, :cond_1a

    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_e

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 135
    :cond_1a
    :goto_e
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v6, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iput-object v6, v4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 136
    :goto_f
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 137
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 138
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    goto :goto_10

    .line 139
    :cond_1b
    new-instance v6, Lcom/android/tools/r8/graph/O2;

    sget-object v8, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    :goto_10
    iput-object v6, v4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    .line 140
    iget-object v4, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 141
    sget-object v6, Lcom/android/tools/r8/internal/md;->k:Lcom/android/tools/r8/internal/o40;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/al1;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/al1;-><init>(Lcom/android/tools/r8/internal/o40;)V

    invoke-interface {v4, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 142
    iget-object v4, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 143
    new-instance v7, Lcom/android/tools/r8/internal/al1;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/al1;-><init>(Lcom/android/tools/r8/internal/o40;)V

    invoke-interface {v4, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 v4, 0x0

    .line 144
    :goto_11
    iget-object v6, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1c

    .line 145
    sget-object v6, Lcom/android/tools/r8/internal/md;->k:Lcom/android/tools/r8/internal/o40;

    aget-object v7, v5, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1c
    const/4 v7, 0x0

    .line 146
    :goto_12
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_1d

    .line 147
    sget-object v4, Lcom/android/tools/r8/internal/md;->k:Lcom/android/tools/r8/internal/o40;

    aget-object v6, v1, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 148
    :cond_1d
    iget-object v4, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 149
    iget-object v2, v2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 150
    iget-object v4, v4, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    sget-boolean v6, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v6, :cond_1f

    .line 153
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 154
    sget-boolean v8, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v8, :cond_1e

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_13

    .line 155
    :cond_1f
    sget-object v6, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v6, v4, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 156
    iget-object v4, v4, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Collection;)V

    .line 157
    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 158
    iget-object v3, v3, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 159
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    .line 160
    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/g1;)V

    .line 161
    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/E0;->b([Lcom/android/tools/r8/graph/g1;)V

    .line 162
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    iput-object v6, v1, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 164
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->a()V

    .line 165
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    .line 166
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->b()V

    .line 168
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 169
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v2

    .line 170
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 171
    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 172
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/s3;->a()V

    .line 173
    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/graph/g1;

    .line 174
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->F0()[Lcom/android/tools/r8/graph/g1;

    .line 175
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 176
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v1

    const/16 v2, 0x4000

    .line 177
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 178
    :cond_20
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 179
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    const/4 v2, 0x0

    .line 180
    iput-object v2, v1, Lcom/android/tools/r8/graph/E0;->o:Lcom/android/tools/r8/graph/o5;

    .line 181
    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object v2

    .line 182
    iput-object v2, v1, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    .line 183
    :cond_21
    sget-boolean v1, Lcom/android/tools/r8/internal/md;->l:Z

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 184
    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v2

    .line 185
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/R3;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 186
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/R3;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    sget-object v2, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-ne v1, v2, :cond_22

    goto :goto_14

    .line 189
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 190
    :cond_23
    :goto_14
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->d:Lcom/android/tools/r8/internal/bx0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/internal/bx0;)V

    .line 191
    iget-object v1, v0, Lcom/android/tools/r8/internal/md;->e:Lcom/android/tools/r8/internal/mx0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 192
    iget-object v4, v1, Lcom/android/tools/r8/internal/mx0;->a:Lcom/android/tools/r8/internal/n6;

    .line 193
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 195
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 196
    iget-object v1, v1, Lcom/android/tools/r8/internal/mx0;->c:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 197
    :cond_24
    iget-object v1, v1, Lcom/android/tools/r8/internal/mx0;->b:Lcom/android/tools/r8/internal/l6;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 248
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    .line 249
    invoke-interface {v3}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    new-instance p1, Lcom/android/tools/r8/internal/Pk1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Pk1;-><init>()V

    invoke-interface {p3, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    new-instance p1, Lcom/android/tools/r8/internal/Pk1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Pk1;-><init>()V

    invoke-interface {p4, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 252
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Qk1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Qk1;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/U3;

    move-result-object v4

    if-nez v4, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D0()V

    .line 255
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Rk1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Rk1;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 256
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v5

    .line 257
    invoke-interface {v5}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result v6

    if-nez v6, :cond_2

    .line 258
    iget-object v6, v4, Lcom/android/tools/r8/graph/U3;->d:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/graph/H3$b;->a(Lcom/android/tools/r8/graph/b4;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object v5

    .line 259
    :cond_2
    new-instance v6, Lcom/android/tools/r8/graph/J3;

    invoke-direct {v6}, Lcom/android/tools/r8/graph/J3;-><init>()V

    .line 260
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H3$b;->c()Ljava/util/List;

    move-result-object v7

    .line 261
    iget-object v8, v6, Lcom/android/tools/r8/graph/J3;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 262
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v7

    if-nez v7, :cond_4

    .line 263
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 264
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$b;->d()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v7

    .line 265
    iput-object v7, v6, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    goto :goto_0

    .line 266
    :cond_3
    new-instance v7, Lcom/android/tools/r8/graph/H3$c;

    iget-object v8, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v7, v8}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 267
    iput-object v7, v6, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    goto :goto_0

    .line 268
    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H3$b;->d()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v7

    .line 269
    iput-object v7, v6, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 270
    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 271
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    iget-object v8, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H3$c;

    .line 274
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/H3$c;->q()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 275
    iget-object v9, v6, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$b;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 277
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H3$c;

    .line 278
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H3$c;->q()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 279
    iget-object v8, v6, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    :cond_9
    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 281
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 282
    new-instance v8, Lcom/android/tools/r8/graph/H3$c;

    invoke-direct {v8, v5}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 283
    iget-object v5, v6, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 284
    :cond_b
    iget-object v3, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/J3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/H3$b;)V

    .line 285
    new-instance p1, Lcom/android/tools/r8/internal/Sk1;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/Sk1;-><init>(Lcom/android/tools/r8/graph/U3;)V

    new-array v3, v2, [Ljava/util/Collection;

    aput-object p3, v3, v1

    aput-object p4, v3, v0

    :goto_4
    if-ge v1, v2, :cond_c

    .line 286
    aget-object p3, v3, v1

    .line 287
    invoke-interface {p3, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    add-int/2addr v1, v0

    goto :goto_4

    .line 288
    :cond_c
    new-instance p1, Lcom/android/tools/r8/internal/Tk1;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/Tk1;-><init>(Lcom/android/tools/r8/graph/U3;)V

    .line 289
    sget-object p3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    sget-object v1, Lcom/android/tools/r8/graph/l0;->e:Lcom/android/tools/r8/graph/l0;

    .line 244
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/l0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/x1;)V
    .locals 1

    .line 238
    new-instance v0, Lcom/android/tools/r8/internal/Nk1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/tools/r8/internal/Nk1;-><init>(Lcom/android/tools/r8/internal/md;Lcom/android/tools/r8/shaking/x1;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)V
    .locals 7

    .line 246
    new-instance v6, Lcom/android/tools/r8/internal/iK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    move-object v0, v6

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/iK;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H2;)V

    .line 247
    invoke-virtual {p3, v6}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/x1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    .line 240
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 242
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 208
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    .line 209
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 214
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 215
    invoke-virtual {p3, p1, v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 218
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 220
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/android/tools/r8/internal/md;->h:Lcom/android/tools/r8/internal/qd;

    .line 222
    iget-object v3, v3, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/hC;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    .line 226
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 227
    invoke-virtual {p3, p1, v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 228
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/graph/j1;Ljava/util/function/Predicate;I)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 229
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Z0()Lcom/android/tools/r8/graph/F2;

    move-result-object v0

    .line 231
    iget-object p2, p2, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p2, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    .line 233
    iget-object p2, p2, Lcom/android/tools/r8/internal/bx0;->d:Lcom/android/tools/r8/internal/n6;

    .line 234
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Ljava/util/function/Predicate;Ljava/util/HashSet;)[Lcom/android/tools/r8/graph/g1;
    .locals 8

    .line 317
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/android/tools/r8/graph/g1;

    .line 318
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 319
    iget-object v4, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 320
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 321
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 322
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-virtual {v4, v5, v6, v7, p3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 324
    iget-object v5, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 325
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v5, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    .line 328
    iget-object v5, v5, Lcom/android/tools/r8/internal/bx0;->a:Lcom/android/tools/r8/internal/r6;

    .line 329
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    .line 330
    iget-object v5, v5, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    .line 331
    invoke-virtual {v5, v2, v6, v3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 332
    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 334
    aput-object p2, v0, v1

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/md;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/md;->c()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->j:Ljava/util/function/Predicate;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->q1()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-nez v1, :cond_7

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    .line 14
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    :cond_1
    return-void

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    :goto_0
    if-eqz v0, :cond_7

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->c:Lcom/android/tools/r8/internal/bx0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/tools/r8/internal/bx0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;)V

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->i1()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    new-instance v1, Lcom/android/tools/r8/internal/Ok1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Ok1;-><init>(Lcom/android/tools/r8/internal/md;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/md;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->H()Lcom/android/tools/r8/internal/dx0;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/dx0;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    iput-object v0, p0, Lcom/android/tools/r8/internal/md;->j:Ljava/util/function/Predicate;

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Dq;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/md;->f:Lcom/android/tools/r8/graph/H2;

    new-instance v2, Lcom/android/tools/r8/internal/Uk1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Uk1;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/Jz0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Jz0;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    new-instance v1, Lcom/android/tools/r8/internal/Dq;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Dq;-><init>(Ljava/util/Set;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/md;->g:Lcom/android/tools/r8/graph/H2;

    new-instance v3, Lu/P0;

    invoke-direct {v3}, Lu/P0;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/Vk1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/tools/r8/internal/Vk1;-><init>(Lcom/android/tools/r8/internal/md;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/internal/Dq;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    new-instance v0, Lcom/android/tools/r8/internal/Xk1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Xk1;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/md;->j:Ljava/util/function/Predicate;

    return-void
.end method
