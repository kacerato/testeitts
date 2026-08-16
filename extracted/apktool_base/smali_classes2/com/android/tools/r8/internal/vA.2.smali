.class public final Lcom/android/tools/r8/internal/vA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/nJ$g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/vA;->b:Lcom/android/tools/r8/internal/nJ$g;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 329
    sget-boolean p2, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 330
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 332
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Interface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " inherits from itself"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 333
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/vA;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/vA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/vA;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method

.method public static a(Ljava/util/LinkedList;)Lcom/android/tools/r8/shaking/O0;
    .locals 5

    .line 261
    new-instance v0, Lcom/android/tools/r8/shaking/M0;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/M0;-><init>()V

    .line 262
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/AA;

    .line 263
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/AA;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, v1, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 265
    new-instance v3, Lcom/android/tools/r8/internal/ew1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ew1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/fw1;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/internal/fw1;-><init>(Lcom/android/tools/r8/shaking/M0;Lcom/android/tools/r8/internal/AA;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 266
    new-instance v3, Lcom/android/tools/r8/internal/gw1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/gw1;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/Rv1;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/internal/Rv1;-><init>(Lcom/android/tools/r8/shaking/M0;Lcom/android/tools/r8/internal/AA;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 267
    :cond_1
    new-instance p0, Lcom/android/tools/r8/shaking/O0;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/M0;->a:Ljava/util/IdentityHashMap;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/O0;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/x1;)V
    .locals 0

    .line 247
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedList;)V
    .locals 3

    .line 319
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AA;

    .line 320
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AA;->j()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez v1, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 325
    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 326
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    new-instance v2, Lcom/android/tools/r8/internal/Tv1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Tv1;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 328
    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/AA;)V
    .locals 1

    .line 296
    sget-boolean v0, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez v0, :cond_1

    .line 297
    iget-object p0, p0, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 298
    new-instance v0, Lcom/android/tools/r8/internal/Zv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zv1;-><init>()V

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p0

    .line 300
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected no incomplete code"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xx0;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/internal/xx0;->b:Lcom/android/tools/r8/shaking/H1;

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/M0;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 269
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/M0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;

    move-result-object p0

    .line 271
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N0;->b:Lcom/android/tools/r8/graph/d;

    .line 272
    instance-of v1, v0, Lcom/android/tools/r8/graph/b;

    if-eqz v1, :cond_0

    .line 273
    new-instance v0, Lcom/android/tools/r8/graph/a;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/a;-><init>()V

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    .line 275
    iput-object v0, p0, Lcom/android/tools/r8/shaking/N0;->b:Lcom/android/tools/r8/graph/d;

    return-void

    .line 276
    :cond_0
    instance-of p0, v0, Lcom/android/tools/r8/graph/a;

    if-eqz p0, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    return-void

    .line 278
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/shaking/N0;->c:Z

    if-nez p0, :cond_3

    .line 279
    instance-of p0, v0, Lcom/android/tools/r8/graph/c;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 280
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->y0()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/CA;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 308
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CA;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/shaking/M0;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/M0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/N0;

    move-result-object p0

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N0;->a:Lcom/android/tools/r8/graph/d;

    .line 20
    instance-of v1, v0, Lcom/android/tools/r8/graph/b;

    if-eqz v1, :cond_0

    .line 21
    new-instance v0, Lcom/android/tools/r8/graph/a;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/a;-><init>()V

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    .line 23
    iput-object v0, p0, Lcom/android/tools/r8/shaking/N0;->a:Lcom/android/tools/r8/graph/d;

    return-void

    .line 24
    :cond_0
    instance-of p0, v0, Lcom/android/tools/r8/graph/a;

    if-eqz p0, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    return-void

    .line 26
    :cond_1
    sget-boolean p0, Lcom/android/tools/r8/shaking/N0;->c:Z

    if-nez p0, :cond_3

    .line 27
    instance-of p0, v0, Lcom/android/tools/r8/graph/c;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->y0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->z0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->z0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/CA;)Lcom/android/tools/r8/graph/x0;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 304
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/dw1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/dw1;-><init>(Lcom/android/tools/r8/internal/CA;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/graph/w0;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/LinkedList;
    .locals 5

    .line 309
    new-instance v0, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 310
    new-instance v1, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 311
    iget-object v2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 312
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_0
    iget-object v4, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 316
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v0, Lcom/android/tools/r8/internal/zs1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zs1;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/L4;Ljava/util/concurrent/ExecutorService;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v4, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 4
    iget-object v5, v0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v5

    const/16 v20, 0x0

    if-eqz v5, :cond_0

    .line 5
    iget-object v5, v0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v21

    check-cast v21, Lcom/android/tools/r8/graph/j;

    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object/from16 v5, v20

    .line 8
    :goto_0
    iget-object v6, v0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v21

    .line 10
    invoke-virtual/range {v21 .. v21}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 11
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v6

    .line 12
    sget v21, Lcom/android/tools/r8/internal/hC;->c:I

    .line 13
    new-instance v13, Lcom/android/tools/r8/internal/eC;

    .line 14
    invoke-direct {v13}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 15
    new-instance v7, Lcom/android/tools/r8/internal/eC;

    .line 16
    invoke-direct {v7}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 17
    new-instance v8, Lcom/android/tools/r8/internal/Ac;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/Ac;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v9, Lcom/android/tools/r8/internal/MZ;

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/MZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v10, Lcom/android/tools/r8/internal/o00;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/internal/o00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v26, Lcom/android/tools/r8/internal/SZ;

    invoke-direct/range {v26 .. v26}, Lcom/android/tools/r8/internal/SZ;-><init>()V

    new-array v11, v15, [Lcom/android/tools/r8/internal/zm0;

    aput-object v8, v11, v17

    aput-object v9, v11, v18

    aput-object v10, v11, v4

    aput-object v26, v11, v14

    .line 18
    invoke-static {v15, v11}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    invoke-virtual {v7, v15, v11}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 21
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    .line 22
    iget-object v8, v8, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 23
    instance-of v8, v8, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v8, :cond_1

    .line 24
    new-instance v8, Lcom/android/tools/r8/internal/s00;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/tools/r8/internal/s00;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 25
    :cond_1
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 26
    sget-boolean v8, Lcom/android/tools/r8/internal/u60;->a:Z

    if-nez v8, :cond_3

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/u60;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v8

    .line 28
    new-instance v9, Lcom/android/tools/r8/internal/y00;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/y00;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/g10;

    invoke-direct {v10, v8}, Lcom/android/tools/r8/internal/g10;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v11, Lcom/android/tools/r8/internal/IZ;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/IZ;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/ZZ;

    invoke-direct {v15, v8, v2}, Lcom/android/tools/r8/internal/ZZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/L4;)V

    new-instance v14, Lcom/android/tools/r8/internal/c00;

    invoke-direct {v14, v8}, Lcom/android/tools/r8/internal/c00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v4, Lcom/android/tools/r8/internal/d00;

    invoke-direct {v4, v8}, Lcom/android/tools/r8/internal/d00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v12, Lcom/android/tools/r8/internal/k00;

    invoke-direct {v12, v8}, Lcom/android/tools/r8/internal/k00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v28, Lcom/android/tools/r8/internal/i00;

    invoke-direct/range {v28 .. v28}, Lcom/android/tools/r8/internal/i00;-><init>()V

    new-instance v29, Lcom/android/tools/r8/internal/j00;

    invoke-direct/range {v29 .. v29}, Lcom/android/tools/r8/internal/j00;-><init>()V

    new-instance v30, Lcom/android/tools/r8/internal/q00;

    invoke-direct/range {v30 .. v30}, Lcom/android/tools/r8/internal/q00;-><init>()V

    new-instance v31, Lcom/android/tools/r8/internal/u00;

    invoke-direct/range {v31 .. v31}, Lcom/android/tools/r8/internal/u00;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/A00;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/internal/A00;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v8, Lcom/android/tools/r8/internal/x00;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/x00;-><init>()V

    const/16 v1, 0xd

    new-array v3, v1, [Lcom/android/tools/r8/internal/zm0;

    aput-object v9, v3, v17

    aput-object v10, v3, v18

    const/4 v1, 0x2

    aput-object v11, v3, v1

    const/4 v1, 0x3

    aput-object v15, v3, v1

    const/4 v1, 0x4

    aput-object v14, v3, v1

    const/4 v1, 0x5

    aput-object v4, v3, v1

    const/4 v1, 0x6

    aput-object v12, v3, v1

    const/4 v1, 0x7

    aput-object v28, v3, v1

    const/16 v1, 0x8

    aput-object v29, v3, v1

    const/16 v1, 0x9

    aput-object v30, v3, v1

    const/16 v1, 0xa

    aput-object v31, v3, v1

    const/16 v1, 0xb

    aput-object v0, v3, v1

    const/16 v0, 0xc

    aput-object v8, v3, v0

    const/16 v0, 0xd

    .line 29
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 30
    invoke-virtual {v7, v0, v3}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 31
    :cond_3
    :goto_1
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 32
    invoke-virtual {v13, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 34
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/android/tools/r8/internal/Uk0;

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/Uk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v7, Lcom/android/tools/r8/internal/gc;

    invoke-direct {v7, v6}, Lcom/android/tools/r8/internal/gc;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v8, Lcom/android/tools/r8/internal/NZ;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/NZ;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/Sk0;

    invoke-direct {v9, v6}, Lcom/android/tools/r8/internal/Sk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v10, Lcom/android/tools/r8/internal/fl0;

    invoke-direct {v10, v6}, Lcom/android/tools/r8/internal/fl0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v11, Lcom/android/tools/r8/internal/Wk0;

    invoke-direct {v11, v6}, Lcom/android/tools/r8/internal/Wk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v12, Lcom/android/tools/r8/internal/Xk0;

    invoke-direct {v12, v6}, Lcom/android/tools/r8/internal/Xk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v13, Lcom/android/tools/r8/internal/Zk0;

    invoke-direct {v13, v6}, Lcom/android/tools/r8/internal/Zk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v14, Lcom/android/tools/r8/internal/cl0;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/cl0;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/qr0;

    invoke-direct {v15, v6}, Lcom/android/tools/r8/internal/qr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v28, v0

    new-instance v0, Lcom/android/tools/r8/internal/Ej0;

    invoke-direct {v0, v6}, Lcom/android/tools/r8/internal/Ej0;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v29, v5

    new-instance v5, Lcom/android/tools/r8/internal/YZ;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/YZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v30, v1

    new-instance v1, Lcom/android/tools/r8/internal/g00;

    invoke-direct {v1, v6, v2}, Lcom/android/tools/r8/internal/g00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/L4;)V

    new-instance v2, Lcom/android/tools/r8/internal/B00;

    invoke-direct {v2, v6, v3}, Lcom/android/tools/r8/internal/B00;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    move-object/from16 p2, v2

    new-instance v2, Lcom/android/tools/r8/internal/r70;

    invoke-direct {v2, v6, v3}, Lcom/android/tools/r8/internal/r70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance v3, Lcom/android/tools/r8/internal/i10;

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/i10;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v32, v3

    move-object/from16 v31, v6

    const/16 v6, 0x10

    new-array v3, v6, [Lcom/android/tools/r8/internal/s60;

    aput-object v4, v3, v17

    aput-object v7, v3, v18

    const/4 v4, 0x2

    aput-object v8, v3, v4

    const/4 v4, 0x3

    aput-object v9, v3, v4

    const/4 v4, 0x4

    aput-object v10, v3, v4

    const/4 v4, 0x5

    aput-object v11, v3, v4

    const/4 v4, 0x6

    aput-object v12, v3, v4

    const/4 v4, 0x7

    aput-object v13, v3, v4

    const/16 v4, 0x8

    aput-object v14, v3, v4

    const/16 v4, 0x9

    aput-object v15, v3, v4

    const/16 v4, 0xa

    aput-object v0, v3, v4

    const/16 v0, 0xb

    aput-object v5, v3, v0

    const/16 v0, 0xc

    aput-object v1, v3, v0

    const/16 v0, 0xd

    aput-object p2, v3, v0

    const/16 v0, 0xe

    aput-object v2, v3, v0

    const/16 v0, 0xf

    aput-object v32, v3, v0

    const/16 v0, 0x10

    .line 37
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v1, v30

    .line 38
    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 39
    invoke-virtual/range {v31 .. v31}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$g;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 40
    invoke-virtual/range {v31 .. v31}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 41
    new-instance v2, Lcom/android/tools/r8/internal/RZ;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/RZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v3, Lcom/android/tools/r8/internal/TZ;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/TZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/android/tools/r8/internal/s60;

    aput-object v2, v4, v17

    aput-object v3, v4, v18

    .line 42
    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v0, v4}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 44
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Lcom/android/tools/r8/internal/j70;

    invoke-virtual/range {v31 .. v31}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/j70;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 46
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/FX;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/FX;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 47
    new-instance v0, Lcom/android/tools/r8/internal/XZ;

    move-object/from16 v2, v31

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/XZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v3, Lcom/android/tools/r8/internal/WZ;

    move-object/from16 v5, v29

    invoke-direct {v3, v2, v5}, Lcom/android/tools/r8/internal/WZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    new-instance v4, Lcom/android/tools/r8/internal/gS;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/gS;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v6, Lcom/android/tools/r8/internal/h40;

    invoke-direct {v6, v2, v5}, Lcom/android/tools/r8/internal/h40;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    const/4 v7, 0x4

    new-array v8, v7, [Lcom/android/tools/r8/internal/s60;

    aput-object v0, v8, v17

    aput-object v3, v8, v18

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v3, 0x3

    aput-object v6, v8, v3

    .line 48
    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, v7, v8}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 50
    new-instance v3, Lcom/android/tools/r8/internal/fS;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/fS;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v4, Lcom/android/tools/r8/internal/ex;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/ex;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-array v6, v0, [Lcom/android/tools/r8/internal/s60;

    aput-object v3, v6, v17

    aput-object v4, v6, v18

    .line 51
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    invoke-virtual {v1, v0, v6}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    move-object/from16 v1, v28

    .line 54
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->A:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    sget-boolean v1, Lcom/android/tools/r8/internal/u60;->a:Z

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/android/tools/r8/internal/u60;->a(Ljava/util/List;)V

    :cond_6
    move-object/from16 v29, v5

    goto/16 :goto_2

    .line 58
    :cond_7
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 59
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 60
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 61
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 62
    new-instance v2, Lcom/android/tools/r8/internal/eC;

    .line 63
    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 64
    new-instance v3, Lcom/android/tools/r8/internal/Ac;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Ac;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 65
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/f40;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/f40;-><init>()V

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v2

    .line 67
    sget-boolean v3, Lcom/android/tools/r8/internal/u60;->a:Z

    if-nez v3, :cond_8

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/u60;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V

    .line 68
    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/android/tools/r8/internal/eC;

    .line 71
    invoke-direct {v2}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v4, :cond_9

    .line 73
    new-instance v4, Lcom/android/tools/r8/internal/dl0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/dl0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 74
    :cond_9
    new-instance v4, Lcom/android/tools/r8/internal/gc;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/gc;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v6, Lcom/android/tools/r8/internal/Sk0;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/Sk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v7, Lcom/android/tools/r8/internal/Xk0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/Xk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v8, Lcom/android/tools/r8/internal/Zk0;

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/Zk0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v9, Lcom/android/tools/r8/internal/cl0;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/cl0;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/qr0;

    invoke-direct {v10, v0}, Lcom/android/tools/r8/internal/qr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v11, Lcom/android/tools/r8/internal/LZ;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/internal/LZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v12, Lcom/android/tools/r8/internal/bl0;

    invoke-direct {v12, v0}, Lcom/android/tools/r8/internal/bl0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v13, Lcom/android/tools/r8/internal/YZ;

    invoke-direct {v13, v0}, Lcom/android/tools/r8/internal/YZ;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance v14, Lcom/android/tools/r8/internal/fS;

    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/fS;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v29, v5

    const/16 v15, 0xa

    new-array v5, v15, [Lcom/android/tools/r8/internal/wY;

    aput-object v4, v5, v17

    aput-object v6, v5, v18

    const/4 v4, 0x2

    aput-object v7, v5, v4

    const/4 v4, 0x3

    aput-object v8, v5, v4

    const/4 v4, 0x4

    aput-object v9, v5, v4

    const/4 v4, 0x5

    aput-object v10, v5, v4

    const/4 v4, 0x6

    aput-object v11, v5, v4

    const/4 v4, 0x7

    aput-object v12, v5, v4

    const/16 v4, 0x8

    aput-object v13, v5, v4

    const/16 v4, 0x9

    aput-object v14, v5, v4

    .line 75
    invoke-static {v15, v5}, Lcom/android/tools/r8/internal/u30;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    invoke-virtual {v2, v15, v5}, Lcom/android/tools/r8/internal/eC;->a(I[Ljava/lang/Object;)V

    if-nez v3, :cond_a

    .line 77
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/u60;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/eC;)V

    .line 78
    :cond_a
    new-instance v4, Lcom/android/tools/r8/internal/ex;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/ex;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 79
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->A:Ljava/util/function/Function;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v3, :cond_b

    .line 83
    invoke-static {v0}, Lcom/android/tools/r8/internal/u60;->a(Ljava/util/List;)V

    .line 84
    :cond_b
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/yA;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/yA;-><init>()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/vA;->a()Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/android/tools/r8/internal/t60;->a(Ljava/util/AbstractList;Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Ljava/util/LinkedList;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, p0

    .line 87
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 88
    new-instance v2, Lcom/android/tools/r8/internal/CA;

    new-instance v3, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/CA;-><init>(Lcom/android/tools/r8/internal/o6;)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/CA;)V

    return-void

    :cond_c
    move-object/from16 v1, p0

    .line 90
    new-instance v2, Lcom/android/tools/r8/internal/qd;

    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/qd;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 91
    new-instance v11, Lcom/android/tools/r8/internal/wA;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/wA;-><init>()V

    .line 92
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/AA;

    .line 94
    sget-boolean v8, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez v8, :cond_e

    .line 95
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/AA;->k()Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_4

    .line 96
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_4
    if-nez v8, :cond_10

    .line 97
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/AA;->g()Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    :goto_5
    if-nez v8, :cond_12

    .line 98
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/AA;->h()Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_12
    :goto_6
    new-instance v8, Lcom/android/tools/r8/internal/ld;

    iget-object v9, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/internal/ld;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 100
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, v17

    :goto_7
    if-ge v7, v6, :cond_24

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/ld;

    .line 101
    iget-object v9, v8, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    .line 102
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    .line 103
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v9

    if-nez v9, :cond_16

    .line 104
    sget-boolean v9, Lcom/android/tools/r8/internal/ld;->d:Z

    if-nez v9, :cond_15

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ld;->b()Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_8

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_15
    :goto_8
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v9, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    :goto_9
    move/from16 p2, v6

    move/from16 v16, v7

    goto/16 :goto_12

    .line 106
    :cond_16
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ld;->b()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 107
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 108
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v9, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    goto :goto_9

    .line 109
    :cond_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    .line 110
    new-instance v10, Ljava/util/ArrayList;

    .line 111
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/rx0;

    .line 113
    iget-object v13, v8, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    .line 114
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v13

    iget-object v14, v8, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    .line 115
    iget-object v15, v12, Lcom/android/tools/r8/internal/rx0;->a:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 p2, v6

    .line 117
    iget-object v6, v14, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 118
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v15, v6, :cond_1b

    .line 119
    iget-object v6, v12, Lcom/android/tools/r8/internal/rx0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 120
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/graph/j;

    move/from16 v16, v7

    .line 121
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/AA;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v15, v7, v6}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v6

    if-eqz v6, :cond_18

    .line 123
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v7

    if-eqz v7, :cond_19

    :cond_18
    :goto_b
    move-object/from16 v19, v9

    goto :goto_d

    .line 124
    :cond_19
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 125
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 126
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 128
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/AA;->c()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    move-object/from16 v19, v9

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    invoke-virtual {v6, v15, v9}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    goto :goto_c

    :cond_1a
    move-object/from16 v19, v9

    move-object v6, v7

    .line 129
    :goto_c
    new-instance v9, Lcom/android/tools/r8/internal/sx0;

    invoke-direct {v9, v6, v7}, Lcom/android/tools/r8/internal/sx0;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_e

    :cond_1b
    move/from16 v16, v7

    goto :goto_b

    :goto_d
    move-object/from16 v9, v20

    .line 130
    :goto_e
    new-instance v6, Lcom/android/tools/r8/internal/tx0;

    iget-object v7, v12, Lcom/android/tools/r8/internal/rx0;->a:Ljava/util/ArrayList;

    invoke-direct {v6, v13, v14, v7, v9}, Lcom/android/tools/r8/internal/tx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/AA;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/sx0;)V

    .line 131
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tx0;->b()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tx0;->c()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_10

    .line 132
    :cond_1c
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move/from16 v6, p2

    move/from16 v7, v16

    move-object/from16 v9, v19

    goto/16 :goto_a

    .line 133
    :cond_1d
    :goto_10
    iget-object v7, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    move/from16 p2, v6

    move/from16 v16, v7

    .line 134
    iget-object v6, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    sget-boolean v6, Lcom/android/tools/r8/internal/ld;->d:Z

    if-nez v6, :cond_23

    iget-object v6, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    .line 136
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move/from16 v7, v17

    :cond_1f
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/tx0;

    if-eqz v7, :cond_21

    .line 137
    sget-boolean v10, Lcom/android/tools/r8/internal/ld;->d:Z

    if-nez v10, :cond_1f

    .line 138
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/tx0;->b()Z

    move-result v10

    if-nez v10, :cond_20

    .line 139
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/tx0;->c()Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_11

    .line 140
    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_21
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/tx0;->b()Z

    move-result v10

    if-nez v10, :cond_1f

    .line 142
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/tx0;->c()Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_11

    :cond_22
    move/from16 v7, v18

    goto :goto_11

    .line 143
    :cond_23
    :goto_12
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ld;->c()V

    move/from16 v6, p2

    move/from16 v7, v16

    goto/16 :goto_7

    .line 144
    :cond_24
    new-instance v6, Lcom/android/tools/r8/internal/Yu0;

    iget-object v7, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v12, v29

    invoke-direct {v6, v7, v2, v12}, Lcom/android/tools/r8/internal/Yu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;)V

    .line 145
    iget-object v7, v6, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    if-eqz v7, :cond_25

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 146
    const-string v7, "Undo constructor inlining"

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 147
    invoke-virtual {v6, v0, v4}, Lcom/android/tools/r8/internal/Yu0;->a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 149
    :cond_25
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, v17

    :goto_13
    if-ge v7, v6, :cond_26

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/ld;

    .line 151
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    new-instance v9, Lcom/android/tools/r8/internal/nd;

    iget-object v10, v8, Lcom/android/tools/r8/internal/ld;->a:Lcom/android/tools/r8/graph/y;

    iget-object v14, v8, Lcom/android/tools/r8/internal/ld;->b:Lcom/android/tools/r8/internal/AA;

    iget-object v8, v8, Lcom/android/tools/r8/internal/ld;->c:Ljava/util/List;

    invoke-direct {v9, v10, v11, v14, v8}, Lcom/android/tools/r8/internal/nd;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/AA;Ljava/util/List;)V

    .line 153
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 154
    :cond_26
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 155
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 156
    invoke-static {v5}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v14

    .line 157
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 158
    new-instance v15, Lcom/android/tools/r8/internal/nr0;

    invoke-direct {v15, v5}, Lcom/android/tools/r8/internal/nr0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 159
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v9, Lcom/android/tools/r8/internal/Uv1;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/Uv1;-><init>(Ljava/util/List;)V

    .line 161
    new-instance v8, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v8}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 162
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v5

    .line 163
    iput-object v5, v8, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 164
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v5, v17

    :goto_14
    if-ge v5, v7, :cond_27

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v16, v5, 0x1

    move-object v5, v6

    check-cast v5, Lcom/android/tools/r8/internal/nd;

    move-object v6, v2

    move/from16 v17, v7

    move-object v7, v14

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move-object v9, v15

    move-object/from16 p2, v13

    move-object v13, v10

    move-object/from16 v10, v21

    .line 165
    invoke-virtual/range {v5 .. v10}, Lcom/android/tools/r8/internal/nd;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/M5;Lcom/android/tools/r8/internal/nr0;Ljava/util/function/Consumer;)V

    move-object v10, v13

    move/from16 v5, v16

    move/from16 v7, v17

    move-object/from16 v9, v21

    move-object/from16 v13, p2

    goto :goto_14

    :cond_27
    move-object/from16 v19, v8

    move-object v13, v10

    .line 166
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 167
    invoke-virtual/range {v19 .. v19}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v5

    .line 168
    new-instance v6, Lcom/android/tools/r8/internal/or0;

    iget-object v7, v15, Lcom/android/tools/r8/internal/nr0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v8, v15, Lcom/android/tools/r8/internal/nr0;->b:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/or0;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V

    .line 169
    sget-boolean v7, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez v7, :cond_29

    .line 170
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_29

    .line 171
    iget-object v8, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_15

    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_29
    :goto_15
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/or0;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 173
    sget-boolean v6, Lcom/android/tools/r8/internal/CA;->b:Z

    .line 174
    new-instance v6, Lcom/android/tools/r8/internal/BA;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/BA;-><init>()V

    .line 175
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/BA;->a(Ljava/util/LinkedList;)Lcom/android/tools/r8/internal/BA;

    move-result-object v6

    .line 176
    new-instance v8, Lcom/android/tools/r8/internal/CA;

    iget-object v6, v6, Lcom/android/tools/r8/internal/BA;->a:Lcom/android/tools/r8/internal/n6;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/CA;-><init>(Lcom/android/tools/r8/internal/o6;)V

    .line 177
    iget-object v6, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/CA;)V

    .line 178
    new-instance v6, Lcom/android/tools/r8/internal/zA;

    iget-object v9, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v22, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v26, v8

    move-object/from16 v27, v11

    invoke-direct/range {v22 .. v27}, Lcom/android/tools/r8/internal/zA;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/CA;Lcom/android/tools/r8/internal/wA;)V

    .line 179
    invoke-virtual {v6, v4, v3}, Lcom/android/tools/r8/internal/sd;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/pd;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xA;

    .line 180
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/tools/r8/internal/Vv1;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/Vv1;-><init>(Lcom/android/tools/r8/internal/xA;)V

    .line 181
    invoke-virtual {v14, v6}, Lcom/android/tools/r8/internal/M70;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/M70;

    move-result-object v6

    if-nez v7, :cond_2a

    .line 182
    iget-object v9, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v9, v0}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/graph/y;Ljava/util/LinkedList;)V

    .line 183
    :cond_2a
    iget-object v9, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 184
    invoke-static {v0}, Lcom/android/tools/r8/internal/vA;->a(Ljava/util/LinkedList;)Lcom/android/tools/r8/shaking/O0;

    move-result-object v20

    :cond_2b
    :goto_16
    move-object/from16 v9, v20

    goto :goto_17

    :cond_2c
    if-nez v7, :cond_2b

    .line 185
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/tools/r8/internal/Wv1;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Wv1;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_2d

    goto :goto_16

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :goto_17
    iget-object v10, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 187
    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/internal/CA;)Lcom/android/tools/r8/graph/x0;

    move-result-object v8

    .line 188
    iget-object v10, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 189
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/tools/r8/internal/vA;->a(Ljava/util/LinkedList;Lcom/android/tools/r8/internal/xA;Ljava/util/concurrent/ExecutorService;)V

    .line 190
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 191
    iget-object v7, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v7

    .line 192
    new-instance v10, Lcom/android/tools/r8/internal/Xv1;

    invoke-direct {v10, v5}, Lcom/android/tools/r8/internal/Xv1;-><init>(Lcom/android/tools/r8/graph/O5;)V

    check-cast v7, Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    invoke-interface {v10, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    iget-object v7, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 195
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v10

    .line 196
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v10

    invoke-virtual {v7, v2, v10, v4, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 197
    new-instance v7, Lcom/android/tools/r8/naming/D;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/naming/D;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 198
    invoke-virtual {v7, v4}, Lcom/android/tools/r8/naming/D;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 199
    invoke-static {v0, v3, v4}, Lcom/android/tools/r8/internal/ZS;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 200
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    goto :goto_19

    .line 201
    :cond_2e
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    if-nez v7, :cond_30

    .line 202
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_18

    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_30
    :goto_18
    iget-object v7, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 204
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v7

    iget-object v10, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 205
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v10

    .line 206
    invoke-virtual {v0, v8, v2, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v0

    .line 207
    invoke-virtual {v10, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 208
    invoke-virtual {v7, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 209
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/lZ;Lcom/android/tools/r8/internal/ns0;)V

    .line 210
    :goto_19
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 211
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 212
    invoke-virtual {v6, v0}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/internal/l4;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    iget-object v6, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 213
    iget-object v6, v6, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 214
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/internal/M70;

    move-result-object v0

    iget-object v6, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 215
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    if-eqz v9, :cond_31

    .line 216
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/tools/r8/shaking/O0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 217
    :cond_31
    iget-object v0, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 218
    new-instance v6, Lcom/android/tools/r8/graph/M5;

    .line 219
    invoke-direct {v6}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 220
    sget-boolean v7, Lcom/android/tools/r8/graph/M5;->h:Z

    if-nez v7, :cond_33

    .line 221
    iget-object v7, v5, Lcom/android/tools/r8/graph/O5;->c:Ljava/util/Map;

    .line 222
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_1a

    :cond_32
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 223
    :cond_33
    :goto_1a
    iget-object v7, v6, Lcom/android/tools/r8/graph/M5;->b:Ljava/util/Set;

    .line 224
    iget-object v8, v5, Lcom/android/tools/r8/graph/O5;->b:Ljava/util/Set;

    .line 225
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v7, v6, Lcom/android/tools/r8/graph/M5;->d:Ljava/util/Set;

    .line 227
    iget-object v8, v5, Lcom/android/tools/r8/graph/O5;->d:Ljava/util/Set;

    .line 228
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object v7, v5, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    .line 230
    iput-object v7, v6, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 231
    iget-object v7, v6, Lcom/android/tools/r8/graph/M5;->e:Ljava/util/Set;

    .line 232
    iget-object v8, v5, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 233
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v7, v6, Lcom/android/tools/r8/graph/M5;->f:Ljava/util/Set;

    .line 235
    iget-object v8, v5, Lcom/android/tools/r8/graph/O5;->f:Ljava/util/Set;

    .line 236
    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v7, v6, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 238
    iget-object v5, v5, Lcom/android/tools/r8/graph/O5;->g:Ljava/util/Set;

    .line 239
    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v5, v1, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v5

    .line 241
    iput-object v5, v6, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 242
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v5

    .line 243
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 244
    invoke-virtual {v1, v2, v13}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/internal/xA;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/xA;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 288
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fD;

    .line 289
    iget-object v1, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 290
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/tools/r8/internal/fD;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xA;)Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    .line 292
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xA;Lcom/android/tools/r8/internal/AA;)V
    .locals 2

    .line 245
    iget-object p2, p2, Lcom/android/tools/r8/internal/AA;->d:Lcom/android/tools/r8/graph/H2;

    .line 246
    new-instance v0, Lcom/android/tools/r8/internal/Qv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qv1;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Yv1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Yv1;-><init>(Lcom/android/tools/r8/internal/vA;Lcom/android/tools/r8/internal/xA;)V

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xA;Ljava/util/ArrayList;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    sget-boolean p1, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 251
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/aw1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/aw1;-><init>(Lcom/android/tools/r8/internal/vA;Ljava/util/List;Lcom/android/tools/r8/internal/xA;)V

    .line 252
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/y1;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/shaking/x1;

    return-void
.end method

.method public final a(Ljava/util/LinkedList;Lcom/android/tools/r8/internal/xA;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 282
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    sget-boolean p2, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/vA;->a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void

    .line 285
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/cw1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/cw1;-><init>(Lcom/android/tools/r8/internal/vA;Lcom/android/tools/r8/internal/xA;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 286
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 287
    invoke-static {p1, v0, p2, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 293
    new-instance v0, Lcom/android/tools/r8/internal/Sv1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sv1;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 294
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    .line 295
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/xA;Lcom/android/tools/r8/shaking/x1;)V
    .locals 3

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xx0;

    .line 254
    iget-object v1, v0, Lcom/android/tools/r8/internal/xx0;->a:Lcom/android/tools/r8/graph/A2;

    .line 255
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/xA;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 257
    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 259
    new-instance v2, Lcom/android/tools/r8/internal/bw1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/bw1;-><init>(Lcom/android/tools/r8/internal/xx0;)V

    invoke-virtual {p3, v2, v1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 260
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/vA;->c:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/L4;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    const-string v0, "HorizontalClassMerger"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->b:Lcom/android/tools/r8/internal/nJ$g;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    iget v1, v1, Lcom/android/tools/r8/graph/y;->V:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ$g;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/L4;Ljava/util/concurrent/ExecutorService;)V

    .line 8
    sget-boolean p2, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    new-array p3, v1, [Lcom/android/tools/r8/internal/m4;

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 10
    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    new-instance p3, Lcom/android/tools/r8/internal/CA;

    new-instance v0, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/CA;-><init>(Lcom/android/tools/r8/internal/o6;)V

    .line 13
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/CA;)V

    .line 14
    :goto_0
    sget-boolean p2, Lcom/android/tools/r8/internal/vA;->c:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/internal/vA;->a:Lcom/android/tools/r8/graph/y;

    new-array p3, v1, [Lcom/android/tools/r8/internal/m4;

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
