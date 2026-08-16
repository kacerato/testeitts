.class public final Lcom/android/tools/r8/internal/Pd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/yI;

.field public final d:Lcom/android/tools/r8/internal/vX;

.field public final e:Z

.field public final f:Ljava/util/function/Predicate;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->d:Lcom/android/tools/r8/internal/vX;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/internal/yI;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yI;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xU;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pd;->f:Ljava/util/function/Predicate;

    iput p3, p0, Lcom/android/tools/r8/internal/Pd;->l:I

    return-void
.end method

.method public static a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 247
    :cond_0
    monitor-enter p1

    .line 248
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 250
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 251
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p1

    return-object p2

    .line 253
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Map;
    .locals 0

    .line 214
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;Ljava/util/Map;)V
    .locals 5

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Nd;

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nd;->a:Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Ljava/util/Collection;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/Nd;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v3, v2, Lcom/android/tools/r8/internal/Md;

    if-eqz v3, :cond_1

    .line 18
    iget-object v3, v2, Lcom/android/tools/r8/internal/Nd;->a:Lcom/android/tools/r8/graph/H5;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Nd;->a()Lcom/android/tools/r8/internal/Md;

    move-result-object v2

    .line 20
    iget-object v2, v2, Lcom/android/tools/r8/internal/Md;->b:Lcom/android/tools/r8/graph/H0;

    .line 21
    invoke-interface {p0, v3, v2}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Nd;->b()Lcom/android/tools/r8/internal/Od;

    move-result-object v3

    .line 23
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nd;->a:Lcom/android/tools/r8/graph/H5;

    .line 24
    iget-object v4, v3, Lcom/android/tools/r8/internal/Od;->b:Lcom/android/tools/r8/graph/M2;

    .line 25
    iget-object v3, v3, Lcom/android/tools/r8/internal/Od;->c:Lcom/android/tools/r8/graph/Z4$a;

    .line 26
    invoke-interface {p0, v2, v4, v3}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/U6;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)Ljava/util/Map;
    .locals 0

    .line 21
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Fd;
    .locals 10

    .line 254
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Kd;

    move-result-object p1

    .line 255
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v2, v0}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_2

    .line 258
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_1
    :goto_0
    move-object v2, v1

    :cond_2
    if-nez v2, :cond_3

    .line 259
    sget-object p2, Lcom/android/tools/r8/internal/Fd;->d:Lcom/android/tools/r8/internal/Fd;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Fd;

    move-result-object p2

    .line 260
    :goto_1
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 261
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    if-nez v2, :cond_4

    .line 262
    sget-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    .line 263
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 264
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 265
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_2
    move-object v0, v1

    :cond_7
    if-nez v0, :cond_8

    .line 266
    sget-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;

    move-result-object v0

    .line 267
    :goto_3
    sget-boolean v2, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    sget-object v2, Lcom/android/tools/r8/internal/Fd;->d:Lcom/android/tools/r8/internal/Fd;

    if-ne p2, v2, :cond_9

    goto :goto_4

    .line 269
    :cond_9
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 270
    iget-object v2, v2, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 271
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 272
    iget-object v2, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    .line 273
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 274
    :cond_b
    :goto_4
    iget-object v2, p2, Lcom/android/tools/r8/internal/Fd;->c:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 276
    :cond_c
    new-instance v3, Lcom/android/tools/r8/internal/Ld;

    iget-object v4, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 277
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Gd;->a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    move-object v0, v3

    .line 278
    :goto_5
    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_13

    aget-object v6, v2, v5

    if-eqz v6, :cond_e

    .line 279
    iget-object v7, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v6, v7, :cond_d

    goto :goto_7

    .line 280
    :cond_d
    iget-object v7, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v7, v6}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v7

    if-nez v7, :cond_f

    .line 281
    invoke-virtual {p1, v6}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_e
    :goto_7
    move-object v7, v1

    :cond_f
    if-nez v7, :cond_10

    .line 282
    sget-object v6, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_8

    :cond_10
    invoke-virtual {p0, p1, v7}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;

    move-result-object v6

    .line 283
    :goto_8
    iget-object v7, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 284
    iget-object v7, v7, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 285
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 286
    iget-object v7, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v7

    if-eqz v7, :cond_11

    move-object v0, v6

    goto :goto_9

    .line 287
    :cond_11
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 288
    iget-object v7, v7, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 289
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 290
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_9

    .line 291
    :cond_12
    new-instance v7, Lcom/android/tools/r8/internal/Ld;

    iget-object v8, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v9, v6, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 292
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/Jd;->a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;

    move-result-object v8

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 293
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/Gd;->a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    move-object v0, v7

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 294
    :cond_13
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 295
    new-instance p1, Lcom/android/tools/r8/internal/eC;

    .line 296
    invoke-direct {p1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 297
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 298
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_b

    .line 299
    :cond_14
    iget-object v1, v1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fv;

    .line 300
    iget-object v2, v2, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 301
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 302
    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_a

    .line 303
    :cond_15
    :goto_b
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 304
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v2

    .line 305
    iget-object v3, v1, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/fv;

    .line 306
    iget-object v6, v5, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 307
    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, p3, v6}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v6

    .line 308
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_c

    .line 309
    :cond_17
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v6

    .line 310
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v7

    if-nez v7, :cond_18

    iget-object v6, v6, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 311
    iget-object v7, v1, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    .line 312
    iget-object v7, v7, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 313
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_c

    .line 314
    :cond_18
    iget-object v5, v5, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 315
    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 316
    iget-object v6, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 317
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v6

    invoke-virtual {v6, p3, v5}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Ljava/util/ArrayList;

    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :cond_19
    if-ge v7, v6, :cond_16

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/E0;

    .line 320
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v8, v8, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 321
    iget-object v9, v1, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    .line 322
    iget-object v9, v9, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 323
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 324
    :goto_c
    iget-object v1, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Gd;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 326
    iget-object v2, v2, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v2, v1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v2, v4, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v1, Lcom/android/tools/r8/internal/Jd;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Jd;-><init>(Ljava/util/Set;)V

    .line 328
    :goto_d
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_f

    .line 329
    :cond_1b
    iget-object v1, v1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fv;

    .line 330
    iget-object v2, v2, Lcom/android/tools/r8/internal/fv;->c:Ljava/lang/Object;

    .line 331
    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 332
    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_e

    .line 333
    :cond_1c
    :goto_f
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Gd;->b:Lcom/android/tools/r8/internal/Hd;

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Hd;)V

    .line 334
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    sget-object p3, Lcom/android/tools/r8/internal/Gd;->c:Lcom/android/tools/r8/internal/Gd;

    .line 335
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_10

    .line 336
    :cond_1d
    new-instance v0, Lcom/android/tools/r8/internal/Fd;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/tools/r8/internal/Fd;-><init>(Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/Gd;)V

    return-object v0

    .line 337
    :cond_1e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    iget-object p3, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 338
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    :goto_10
    return-object p2

    .line 339
    :cond_1f
    new-instance v0, Lcom/android/tools/r8/internal/Fd;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/tools/r8/internal/Fd;-><init>(Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/Gd;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Jd;
    .locals 4

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 51
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/N4;->e()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 53
    new-instance v1, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->i(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 54
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->d:Lcom/android/tools/r8/internal/vX;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/Jd;->b:Lcom/android/tools/r8/internal/Jd;

    .line 59
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object p1

    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/Jd;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jd;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;
    .locals 2

    .line 340
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 343
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/lR0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/lR0;-><init>(Lcom/android/tools/r8/internal/Pd;)V

    .line 344
    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ld;

    return-object p1

    .line 345
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Ld;)Lcom/android/tools/r8/internal/Ld;
    .locals 3

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 34
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 36
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    if-eqz v0, :cond_6

    goto :goto_3

    .line 37
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_7
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/hR0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/hR0;-><init>(Lcom/android/tools/r8/internal/Pd;)V

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Jd;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/Gd;

    new-instance v2, Lcom/android/tools/r8/internal/Hd;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/Hd;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/Gd;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Hd;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    return-object p2

    .line 43
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/Ld;

    iget-object v0, p2, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 44
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/Gd;->a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u2;)Lcom/android/tools/r8/internal/Ld;
    .locals 8

    .line 346
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    .line 347
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 348
    sget-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 351
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    move-object v0, v2

    :cond_3
    if-nez v0, :cond_4

    .line 352
    sget-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;

    move-result-object v0

    .line 353
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_b

    aget-object v4, p1, v3

    .line 354
    sget-object v5, Lcom/android/tools/r8/internal/Id;->d:Lcom/android/tools/r8/internal/Id;

    if-eqz v4, :cond_6

    .line 355
    iget-object v6, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 356
    :cond_5
    iget-object v6, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v6, v4}, Lcom/android/tools/r8/internal/Id;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_6
    :goto_3
    move-object v4, v2

    :cond_7
    if-nez v4, :cond_8

    .line 357
    sget-object v4, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5, v4}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;

    move-result-object v4

    .line 358
    :goto_4
    iget-object v5, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 359
    iget-object v5, v5, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 360
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 361
    iget-object v5, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v0, v4

    goto :goto_5

    .line 362
    :cond_9
    iget-object v5, v4, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 363
    iget-object v5, v5, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 364
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 365
    iget-object v5, v4, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_5

    .line 366
    :cond_a
    new-instance v5, Lcom/android/tools/r8/internal/Ld;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v7, v4, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 367
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Jd;->a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;

    move-result-object v6

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 368
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Gd;->a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    move-object v0, v5

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;
    .locals 8

    .line 369
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Kd;

    move-result-object p1

    .line 370
    sget-object v0, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    .line 371
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 372
    iget-object v6, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v6, v6, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v6, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v6

    if-nez v6, :cond_1

    .line 374
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/internal/Kd;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_1

    :cond_1
    move-object v5, v6

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 375
    sget-object v4, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;

    move-result-object v4

    .line 376
    :goto_2
    iget-object v5, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 377
    iget-object v5, v5, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 378
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 379
    iget-object v5, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto :goto_3

    .line 380
    :cond_4
    iget-object v5, v4, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 381
    iget-object v5, v5, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 382
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 383
    iget-object v5, v4, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Gd;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 384
    :cond_5
    new-instance v5, Lcom/android/tools/r8/internal/Ld;

    iget-object v6, v0, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    iget-object v7, v4, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    .line 385
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Jd;->a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;

    move-result-object v6

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    .line 386
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Gd;->a(Lcom/android/tools/r8/internal/Gd;)Lcom/android/tools/r8/internal/Gd;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    move-object v0, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 387
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 388
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Ld;)Lcom/android/tools/r8/internal/Ld;

    move-result-object p1

    return-object p1

    .line 389
    :cond_7
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Ld;)Lcom/android/tools/r8/internal/Ld;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 220
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 221
    :cond_0
    sget-boolean v2, Lcom/android/tools/r8/graph/L4;->f:Z

    .line 222
    new-instance v2, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/K4;-><init>()V

    const/4 v3, 0x1

    .line 223
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v2

    .line 224
    check-cast v2, Lcom/android/tools/r8/graph/K4;

    .line 225
    iget-object v2, v2, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 226
    check-cast v2, Lcom/android/tools/r8/graph/L4;

    .line 227
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 228
    sget-object v5, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 229
    new-instance v5, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 230
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    .line 231
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    .line 232
    iget-object v7, v6, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/tools/r8/graph/M2;

    .line 233
    invoke-virtual {v6, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    iget-object v9, v6, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 234
    invoke-virtual {v6, v1, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 235
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    add-int v12, v2, v7

    .line 236
    new-instance v2, Lcom/android/tools/r8/graph/G;

    .line 237
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    new-instance v3, Lcom/android/tools/r8/internal/wa;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v4, Lcom/android/tools/r8/internal/kb;

    sget-object v7, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v7, Lcom/android/tools/r8/internal/ga;

    const/16 v9, 0xb7

    invoke-direct {v7, v9, v6, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 238
    invoke-static {v3, v4, v7, v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v13

    .line 239
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v11, 0x2

    move-object v9, v2

    move-object v14, v15

    .line 240
    invoke-direct/range {v9 .. v15}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 241
    invoke-virtual {v5, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 244
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    move-object/from16 v3, p4

    .line 245
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Fd;Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/graph/A2;)V
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->g()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1, p4}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->g()Lcom/android/tools/r8/graph/Z5;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/Z4$c;

    .line 137
    iget-object v2, v2, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 138
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 140
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object v4

    .line 142
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    new-instance v6, Lcom/android/tools/r8/internal/jR0;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/jR0;-><init>(Lcom/android/tools/r8/internal/U6;)V

    .line 143
    invoke-virtual {v4, v5, v6}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->g()Lcom/android/tools/r8/graph/Z5;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/Z4$c;

    .line 146
    iget-object v4, v4, Lcom/android/tools/r8/graph/Z4$c;->d:Lcom/android/tools/r8/graph/j1;

    .line 147
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v4

    .line 148
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    .line 149
    :cond_2
    :goto_0
    iget-boolean v4, v2, Lcom/android/tools/r8/internal/U6;->b:Z

    if-eqz v4, :cond_3

    .line 150
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    iget-object v1, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 152
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->u()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 154
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    .line 155
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->B3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void

    .line 156
    :cond_4
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 157
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    .line 158
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->D3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void

    .line 159
    :cond_5
    sget-boolean p2, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 160
    :cond_7
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    .line 161
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->y3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void

    .line 162
    :cond_8
    sget-boolean v2, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->j()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 163
    :cond_a
    :goto_2
    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/D4;

    move-result-object v0

    if-nez v0, :cond_c

    if-eqz v2, :cond_b

    .line 164
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 165
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 166
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p3

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The class processor was not able to look-up the default method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in the class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (Single resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "; resolution pair: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "). Please report this issue in the D8/R8 bug tracker at https://issuetracker.google.com/issues/237507594."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 168
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 169
    sget-object p2, Lcom/android/tools/r8/graph/Z4$b;->c:Lcom/android/tools/r8/graph/Z4$b;

    .line 170
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->D3:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p4, p1, p3, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void

    .line 171
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 172
    :cond_c
    invoke-interface {v0}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object p4

    if-nez v2, :cond_e

    if-eqz p4, :cond_d

    goto :goto_3

    .line 173
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 174
    :cond_e
    :goto_3
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    instance-of v0, p4, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_f

    .line 176
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->f:Ljava/util/function/Predicate;

    invoke-interface {p4}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    :cond_f
    move v1, v3

    :goto_4
    if-eqz v1, :cond_19

    .line 177
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/Fd;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_7

    .line 178
    :cond_10
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H0;->F()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_11

    .line 179
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 180
    sget-object v2, Lcom/android/tools/r8/internal/BI;->c:Lcom/android/tools/r8/internal/BI;

    .line 181
    invoke-virtual {p2, p4, v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto :goto_6

    .line 183
    :cond_11
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 184
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 185
    iget-object v4, p2, Lcom/android/tools/r8/internal/yI;->a:Lcom/android/tools/r8/graph/y;

    .line 186
    invoke-static {v4}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v4

    .line 187
    iget-object v4, v4, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 188
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CU;->i()Ljava/util/Map;

    move-result-object v4

    .line 189
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    if-eqz v4, :cond_12

    .line 190
    new-instance p2, Lcom/android/tools/r8/internal/Yj;

    invoke-direct {p2, v4}, Lcom/android/tools/r8/internal/Yj;-><init>(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_5

    .line 191
    :cond_12
    invoke-virtual {p2, v2, p4}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/cu;

    move-result-object p2

    if-nez p2, :cond_13

    move-object p2, v1

    goto :goto_5

    .line 192
    :cond_13
    iget-object p2, p2, Lcom/android/tools/r8/internal/cu;->c:Lcom/android/tools/r8/internal/Yj;

    :goto_5
    if-eqz p2, :cond_14

    .line 193
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 194
    sget-object v4, Lcom/android/tools/r8/internal/BI;->c:Lcom/android/tools/r8/internal/BI;

    .line 195
    invoke-virtual {v2, p2, v4}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/Yj;Lcom/android/tools/r8/internal/CI;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    goto :goto_6

    :cond_14
    move-object p2, v1

    :goto_6
    if-eqz p2, :cond_19

    .line 196
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 197
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p3

    if-nez p3, :cond_15

    goto :goto_7

    .line 198
    :cond_15
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    if-nez p3, :cond_18

    .line 199
    iget-object p3, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    .line 200
    invoke-static {p4, p1, p2, p3, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz v0, :cond_16

    .line 201
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p3

    if-eqz p3, :cond_17

    .line 202
    :cond_16
    sget-object p3, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 203
    :cond_17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    return-void

    .line 205
    :cond_18
    new-instance p2, Lcom/android/tools/r8/internal/If;

    .line 206
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 207
    new-instance p4, Lcom/android/tools/r8/position/MethodPosition;

    .line 208
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p3

    invoke-direct {p4, p3}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    const-string p3, "Attempt to add forwarding method that conflicts with existing method."

    invoke-direct {p2, p3, v1, p1, p4}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/If;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    throw p2

    :cond_19
    :goto_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Hd;)V
    .locals 6

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 62
    iget-object v1, p2, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 63
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 65
    iget-object v2, p2, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 66
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 67
    iget-object v4, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 68
    sget-boolean v4, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 69
    invoke-static {v4}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v4

    .line 70
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v4, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 73
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_2

    .line 78
    :cond_6
    iget-object p2, p2, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    .line 79
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 80
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 81
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    :cond_8
    :goto_3
    if-eqz v1, :cond_7

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v2, v3, :cond_7

    .line 83
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    goto :goto_3

    .line 85
    :cond_9
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 86
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/HashSet;Ljava/util/IdentityHashMap;)V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 91
    invoke-virtual {p2, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H3$c;

    .line 92
    sget-boolean v5, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v5, :cond_b

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 93
    :cond_b
    :goto_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 94
    :cond_c
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    new-instance v1, Lcom/android/tools/r8/internal/tR0;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/tools/r8/internal/tR0;-><init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/List;Lcom/android/tools/r8/graph/E0;)V

    .line 95
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Ljava/util/HashSet;Ljava/util/IdentityHashMap;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->B1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 106
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/pR0;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/tools/r8/internal/pR0;-><init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V

    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/BiConsumer;)V

    return-void

    .line 108
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/qR0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/tools/r8/internal/qR0;-><init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 211
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/sR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/sR0;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 212
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/Md;

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/internal/Md;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Nd;

    .line 213
    sget-boolean p2, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/rR0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/rR0;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 217
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/Od;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/tools/r8/internal/Od;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Nd;

    .line 219
    sget-boolean p2, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Kd;

    new-instance v1, Lcom/android/tools/r8/internal/eR0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/eR0;-><init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/FI;)V

    invoke-direct {v0, p2, p2, v1}, Lcom/android/tools/r8/internal/Kd;-><init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H2;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Pd;->b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Fd;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    invoke-interface {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/yI;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V
    .locals 3

    .line 27
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$c;

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$c;->q()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I0;

    move-result-object v1

    .line 31
    invoke-interface {p1, p2, v1}, Lcom/android/tools/r8/internal/FI;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/I0;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/mR0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/mR0;-><init>(Lcom/android/tools/r8/internal/FI;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Tr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/Pd;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/nR0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/nR0;-><init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/FI;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 98
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H3$c;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H3$c;->q()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v1, p3, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$e;->b:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 101
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    .line 102
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    .line 103
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code has already been library desugared. Interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is already implemented by "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->B1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/fR0;

    invoke-direct {v0, p0, p4, p2}, Lcom/android/tools/r8/internal/fR0;-><init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/E0;->b(Ljava/util/List;Ljava/util/function/BiConsumer;)V

    return-void

    .line 125
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 126
    :cond_5
    :goto_1
    new-instance p1, Lcom/android/tools/r8/internal/gR0;

    invoke-direct {p1, p0, p4, p2}, Lcom/android/tools/r8/internal/gR0;-><init>(Lcom/android/tools/r8/internal/Pd;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 116
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 118
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 119
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H3$c;)V
    .locals 5

    .line 109
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 111
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object v2

    .line 112
    sget-object v3, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    .line 113
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object p4

    .line 115
    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 4

    .line 127
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 129
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 130
    sget-object v2, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p4, v3, v2}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    .line 131
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->a:Lcom/android/tools/r8/graph/y;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xU;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/cu;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Fd;
    .locals 2

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    sget-object p1, Lcom/android/tools/r8/internal/Fd;->d:Lcom/android/tools/r8/internal/Fd;

    return-object p1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/kR0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/kR0;-><init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/internal/FI;)V

    invoke-static {v0, p3, v1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Fd;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Ld;)Lcom/android/tools/r8/internal/Ld;
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Pd;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/yI;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/internal/Pd;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    return-object p1

    .line 7
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    return-object p2

    .line 10
    :cond_8
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/iR0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iR0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Pd;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Jd;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p2

    .line 14
    :cond_9
    iget-object v0, p2, Lcom/android/tools/r8/internal/Ld;->a:Lcom/android/tools/r8/internal/Jd;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Jd;->a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;

    move-result-object p1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/Ld;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Ld;->b:Lcom/android/tools/r8/internal/Gd;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Ld;-><init>(Lcom/android/tools/r8/internal/Jd;Lcom/android/tools/r8/internal/Gd;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/Kd;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Ld;
    .locals 2

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Pd;->e:Z

    if-nez v0, :cond_0

    .line 28
    sget-object p1, Lcom/android/tools/r8/internal/Ld;->c:Lcom/android/tools/r8/internal/Ld;

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/oR0;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/oR0;-><init>(Lcom/android/tools/r8/internal/Pd;Lcom/android/tools/r8/internal/Kd;)V

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ld;

    return-object p1
.end method

.method public final synthetic b(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 16
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/android/tools/r8/graph/H3$c;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd;->c:Lcom/android/tools/r8/internal/yI;

    .line 18
    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 19
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/tools/r8/internal/Pd;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
