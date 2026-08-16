.class public Lcom/android/tools/r8/ir/optimize/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/ir/optimize/q;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/tools/r8/ir/optimize/q;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Ljava/util/Map;
    .locals 0

    .line 339
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;)Ljava/util/Map;
    .locals 0

    .line 270
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/internal/W5;)Ljava/util/Set;
    .locals 1

    .line 269
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Ljava/util/Map;)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    .line 274
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 276
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Lcom/android/tools/r8/internal/Iv1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Iv1;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/TH;)V
    .locals 2

    .line 332
    invoke-interface {p2}, Lcom/android/tools/r8/internal/TH;->iterator()Lcom/android/tools/r8/internal/UH;

    move-result-object p2

    .line 333
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    invoke-interface {p2}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v0

    .line 335
    iget-object v1, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    if-eq v0, p0, :cond_0

    .line 337
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/internal/xF0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/xF0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 338
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/k;)V
    .locals 1

    .line 181
    new-instance v0, Lv/a1;

    invoke-direct {v0, p0}, Lv/a1;-><init>(Lcom/android/tools/r8/ir/optimize/k;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/ir/optimize/k;->a(Lcom/android/tools/r8/internal/ht0;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 1

    .line 340
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Lv/e1;

    invoke-direct {v0, p0}, Lv/e1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

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

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 2
    if-eq p2, p0, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/i;)Z
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    instance-of p0, p0, Lcom/android/tools/r8/ir/optimize/l;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/ir/optimize/k;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Z
    .locals 2

    .line 341
    iget-object v0, p3, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    .line 342
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 344
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 345
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-ne v0, p1, :cond_4

    return v1

    .line 346
    :cond_4
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/k;->a:Ljava/util/LinkedHashMap;

    .line 347
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_5

    .line 348
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/ir/optimize/i;

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_6

    return v1

    .line 349
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result p1

    if-nez p1, :cond_7

    .line 350
    iget-object p1, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p1

    if-nez p1, :cond_7

    .line 352
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    .line 353
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object p0

    .line 354
    invoke-virtual {p3, p0}, Lcom/android/tools/r8/ir/optimize/i;->a(Lcom/android/tools/r8/internal/xt;)V

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/zE;)Ljava/util/List;
    .locals 0

    .line 15
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {p0, p1}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/ir/optimize/i;)Z
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    instance-of p0, p0, Lcom/android/tools/r8/ir/optimize/l;

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/tR;Ljava/util/Map;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Lcom/android/tools/r8/ir/optimize/h;
    .locals 6

    .line 186
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 187
    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/optimize/i;

    if-eqz v0, :cond_4

    .line 188
    iget-object v1, p6, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p6, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    sget-object p1, Lcom/android/tools/r8/ir/optimize/p;->a:Lcom/android/tools/r8/ir/optimize/p;

    return-object p1

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p6}, Lcom/android/tools/r8/ir/optimize/i;->b()V

    .line 193
    :cond_2
    iget-object v1, p6, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p6, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 194
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    iget-object v0, v0, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    .line 196
    iget-object v1, p6, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;

    move-result-object v0

    invoke-virtual {p6, v0}, Lcom/android/tools/r8/ir/optimize/i;->a(Lcom/android/tools/r8/internal/xt;)V

    .line 198
    :cond_4
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p5, v0, :cond_5

    .line 199
    sget-object p1, Lcom/android/tools/r8/ir/optimize/l;->a:Lcom/android/tools/r8/ir/optimize/l;

    return-object p1

    .line 200
    :cond_5
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 201
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v1, v0, :cond_9

    .line 202
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 203
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-nez v1, :cond_9

    .line 204
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v1

    .line 205
    invoke-interface {p5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-nez v2, :cond_6

    .line 206
    new-instance v2, Lv/k1;

    invoke-direct {v2, p5}, Lv/k1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 207
    invoke-interface {v1}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    .line 208
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-ne v2, p4, :cond_7

    goto :goto_2

    .line 210
    :cond_7
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 212
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 213
    :cond_8
    :goto_2
    sget-object p1, Lcom/android/tools/r8/ir/optimize/m;->a:Lcom/android/tools/r8/ir/optimize/m;

    return-object p1

    .line 214
    :cond_9
    :goto_3
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 215
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->w2()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 217
    sget-boolean v2, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    const/4 v2, 0x1

    .line 218
    invoke-static {v2}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_5

    .line 219
    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->z2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_5

    .line 220
    :cond_d
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 222
    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 223
    :cond_e
    :goto_5
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v2, :cond_10

    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-nez v2, :cond_10

    .line 224
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lv/l1;

    invoke-direct {v3, p4}, Lv/l1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 225
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_6

    .line 226
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 227
    :cond_10
    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tR;->c()Lcom/android/tools/r8/internal/dt;

    move-result-object p2

    .line 228
    new-instance v2, Lv/m1;

    invoke-direct {v2, p2}, Lv/m1;-><init>(Lcom/android/tools/r8/internal/dt;)V

    .line 229
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 230
    new-instance p3, Lcom/android/tools/r8/ir/optimize/g;

    invoke-direct {p3, p5}, Lcom/android/tools/r8/ir/optimize/g;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 231
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-eq v3, p4, :cond_11

    .line 232
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 233
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-ne v4, v1, :cond_14

    if-ne v1, v0, :cond_14

    .line 234
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v4

    new-instance v5, Lv/Y0;

    invoke-direct {v5, p4, v3}, Lv/Y0;-><init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 235
    sget-boolean v5, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v5, :cond_13

    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_13
    :goto_8
    if-ne v4, v3, :cond_14

    goto :goto_7

    .line 236
    :cond_14
    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/g;->d:Z

    if-nez v4, :cond_16

    iget-object v5, p3, Lcom/android/tools/r8/ir/optimize/g;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_9

    :cond_15
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_16
    :goto_9
    if-nez v4, :cond_18

    .line 237
    iget-object v4, p3, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_18
    :goto_a
    iget-object v4, p3, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v4, Lv/Z0;

    invoke-direct {v4}, Lv/Z0;-><init>()V

    .line 240
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 241
    invoke-interface {v3, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 242
    :cond_19
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/f60;

    .line 243
    sget-boolean p6, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez p6, :cond_1c

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 244
    :cond_1c
    :goto_c
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    .line 245
    iget-object v1, p4, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 246
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v1

    if-nez p6, :cond_1e

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne p6, v2, :cond_1d

    goto :goto_d

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 248
    :cond_1e
    :goto_d
    new-instance p6, Lcom/android/tools/r8/internal/CH;

    const/16 v2, 0x10

    .line 249
    invoke-direct {p6, v2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 252
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    if-ne v3, p5, :cond_1f

    .line 255
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    invoke-virtual {p6, v2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 257
    :cond_20
    invoke-virtual {p6}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 258
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/g;->d:Z

    if-nez v0, :cond_22

    iget-object v1, p3, Lcom/android/tools/r8/ir/optimize/g;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_f

    :cond_21
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_22
    :goto_f
    if-nez v0, :cond_24

    .line 259
    iget-object v0, p3, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_10

    :cond_23
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 260
    :cond_24
    :goto_10
    iget-object v0, p3, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p4, p6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 261
    :cond_25
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 262
    sget-object p1, Lcom/android/tools/r8/ir/optimize/n;->a:Lcom/android/tools/r8/ir/optimize/n;

    return-object p1

    .line 263
    :cond_26
    sget-boolean p1, Lcom/android/tools/r8/ir/optimize/g;->d:Z

    if-nez p1, :cond_28

    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object p2, p3, Lcom/android/tools/r8/ir/optimize/g;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lt p1, p2, :cond_28

    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    .line 264
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->size()I

    move-result p1

    iget-object p2, p3, Lcom/android/tools/r8/ir/optimize/g;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ge p1, p2, :cond_27

    goto :goto_11

    .line 265
    :cond_27
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 266
    :cond_28
    :goto_11
    iget-object p1, p3, Lcom/android/tools/r8/ir/optimize/g;->b:Ljava/util/Set;

    iget-object p2, p3, Lcom/android/tools/r8/ir/optimize/g;->c:Ljava/util/IdentityHashMap;

    .line 267
    new-instance p3, Lcom/android/tools/r8/ir/optimize/o;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/ir/optimize/o;-><init>(Ljava/util/Set;Ljava/util/IdentityHashMap;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;)Ljava/util/IdentityHashMap;
    .locals 3

    .line 182
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 183
    new-instance v1, Lcom/android/tools/r8/internal/tR;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/tR;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 184
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 185
    new-instance v2, Lv/f1;

    invoke-direct {v2, p0, v0, v1, p1}, Lv/f1;-><init>(Lcom/android/tools/r8/ir/optimize/q;Ljava/util/Map;Lcom/android/tools/r8/internal/tR;Ljava/util/Map;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/ir/optimize/k;->a(Lcom/android/tools/r8/internal/gt0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/j;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 32
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v4

    .line 33
    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 34
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 35
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->t2()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 36
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->Z0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 37
    iget-object v9, v3, Lcom/android/tools/r8/ir/optimize/j;->b:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 38
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    instance-of v9, v9, Lcom/android/tools/r8/internal/Zd0;

    if-nez v9, :cond_1

    .line 40
    invoke-static {v5, v8}, Lcom/android/tools/r8/ir/optimize/q;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 41
    invoke-virtual {v3, v5, v8}, Lcom/android/tools/r8/ir/optimize/j;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 42
    :goto_0
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 43
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v10

    if-nez v10, :cond_2

    .line 45
    iget-object v10, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_7

    .line 47
    :cond_2
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v10

    .line 48
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 49
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v11, v11, Lcom/android/tools/r8/graph/u1$c;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 50
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 51
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/xw0;->A()Z

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_7

    .line 52
    :cond_3
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v11, v13, v12}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    .line 54
    invoke-static {v12, v11}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v11

    .line 55
    invoke-virtual {v3, v9, v10, v11}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V

    const/4 v12, 0x1

    goto/16 :goto_8

    .line 56
    :cond_4
    iget-object v10, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 57
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/j;

    .line 58
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v10

    .line 59
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v10

    if-nez v10, :cond_5

    goto/16 :goto_7

    .line 60
    :cond_5
    iget-object v11, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v12

    invoke-virtual {v10, v11, v9, v12}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/h3;

    move-result-object v11

    .line 62
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/h3;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v11

    .line 63
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 64
    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    invoke-static {v12, v10, v11}, Lcom/android/tools/r8/internal/G4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/F4;

    move-result-object v12

    .line 66
    iget-object v12, v12, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 67
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 68
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    .line 69
    :cond_6
    iget-object v12, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 70
    invoke-virtual {v10, v12, v9, v11}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;

    move-result-object v10

    .line 71
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    instance-of v12, v10, Lcom/android/tools/r8/internal/Fj;

    if-eqz v12, :cond_7

    goto/16 :goto_7

    .line 73
    :cond_7
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 74
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v12

    .line 75
    invoke-virtual {v0, v9, v12, v3}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/ir/optimize/j;)Z

    move-result v12

    goto :goto_1

    :cond_8
    const/4 v12, 0x0

    .line 76
    :goto_1
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->r()Ljava/util/BitSet;

    move-result-object v13

    const/4 v14, 0x0

    .line 77
    :goto_2
    iget-object v15, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_19

    .line 79
    invoke-virtual {v9, v14}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v15

    .line 80
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v16

    if-eqz v16, :cond_9

    if-eqz v14, :cond_a

    :cond_9
    if-eqz v13, :cond_b

    .line 81
    invoke-virtual {v13, v14}, Ljava/util/BitSet;->get(I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 82
    :cond_a
    iget-object v6, v3, Lcom/android/tools/r8/ir/optimize/j;->b:Ljava/util/Set;

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 83
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    instance-of v6, v6, Lcom/android/tools/r8/internal/Zd0;

    if-nez v6, :cond_b

    .line 85
    invoke-static {v9, v15}, Lcom/android/tools/r8/ir/optimize/q;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 86
    invoke-virtual {v3, v9, v15}, Lcom/android/tools/r8/ir/optimize/j;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    const/4 v12, 0x1

    .line 87
    :cond_b
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result v6

    if-ne v14, v6, :cond_12

    .line 88
    invoke-static {v9, v15}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 89
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xt;->h()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 90
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v6

    goto :goto_3

    .line 91
    :cond_c
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v6

    :goto_3
    if-eqz v11, :cond_d

    .line 92
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v17

    check-cast v17, Lcom/android/tools/r8/graph/j1;

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v17

    if-nez v17, :cond_d

    .line 94
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/TW;->t()I

    move-result v17

    if-nez v17, :cond_d

    .line 95
    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    move-object/from16 v18, v10

    .line 96
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v19, v11

    iget-object v11, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    move/from16 v20, v12

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {v10, v12, v11}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    .line 98
    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v7

    .line 99
    iget-object v10, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v10, v6}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object v6, v7

    goto :goto_4

    :cond_d
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    .line 100
    :cond_e
    :goto_4
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zt;->l()Z

    move-result v7

    if-nez v7, :cond_13

    .line 101
    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v7

    .line 102
    iget-object v10, v7, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    .line 103
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v10

    .line 104
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object v10

    iget-object v11, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 105
    invoke-virtual {v10, v11, v7}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 106
    iget-object v10, v6, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v10

    iget-object v7, v7, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    .line 107
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v11, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne v10, v11, :cond_f

    move-object v10, v7

    goto :goto_5

    :cond_f
    if-ne v7, v11, :cond_10

    goto :goto_5

    :cond_10
    if-ne v10, v7, :cond_11

    goto :goto_5

    .line 109
    :cond_11
    sget-object v10, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    .line 110
    :goto_5
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object v6

    .line 111
    invoke-virtual {v3, v9, v15, v6}, Lcom/android/tools/r8/ir/optimize/j;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V

    const/4 v12, 0x1

    goto :goto_6

    :cond_12
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    :cond_13
    move/from16 v12, v20

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_2

    .line 112
    :cond_14
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 113
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->S()Lcom/android/tools/r8/internal/hw;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_7

    .line 115
    :cond_15
    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 116
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v7

    if-nez v7, :cond_17

    :cond_16
    :goto_7
    const/4 v12, 0x0

    goto :goto_8

    .line 117
    :cond_17
    iget-object v9, v7, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v7, v7, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v9, v7}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object v7

    .line 118
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 119
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 120
    iget-object v9, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 121
    iget-object v9, v9, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 122
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/internal/F4;

    move-result-object v9

    .line 124
    iget-object v9, v9, Lcom/android/tools/r8/internal/F4;->a:Lcom/android/tools/r8/internal/xt;

    .line 125
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 126
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    .line 127
    :cond_18
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/g1;

    .line 128
    iget-object v7, v7, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 129
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/vw;->g()Lcom/android/tools/r8/internal/xt;

    move-result-object v7

    .line 130
    invoke-virtual {v0, v6, v7, v3}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/ir/optimize/j;)Z

    move-result v12

    :cond_19
    :goto_8
    or-int/2addr v8, v12

    .line 131
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v8, :cond_21

    .line 132
    invoke-interface {v4, v1, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 133
    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v6, :cond_1c

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_9

    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1c
    :goto_9
    if-nez v6, :cond_1e

    .line 134
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1e
    :goto_a
    if-nez v6, :cond_20

    .line 135
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-static/range {p2 .. p2}, Lcom/android/tools/r8/internal/xK;->b(Ljava/util/ListIterator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    if-ne v4, v5, :cond_1f

    goto :goto_b

    .line 137
    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 138
    :cond_20
    :goto_b
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/j;)V

    return-void

    .line 139
    :cond_21
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    :cond_22
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 141
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 142
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->w2()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 143
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Y()Lcom/android/tools/r8/internal/mE;

    move-result-object v2

    .line 144
    iget-object v5, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 146
    iget-object v5, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 147
    iget-object v6, v2, Lcom/android/tools/r8/internal/mE;->k:Lcom/android/tools/r8/graph/M2;

    .line 148
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-static {v6, v7, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 150
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v5

    .line 151
    iget-object v6, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v6

    .line 152
    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v7, v6}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 153
    invoke-static {v2, v4}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 154
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/tools/r8/ir/optimize/j;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V

    return-void

    .line 155
    :cond_23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 156
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 157
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 158
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 159
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 160
    iget-object v4, v3, Lcom/android/tools/r8/ir/optimize/j;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 161
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    instance-of v4, v4, Lcom/android/tools/r8/internal/Zd0;

    if-nez v4, :cond_24

    .line 163
    invoke-static {v1, v2}, Lcom/android/tools/r8/ir/optimize/q;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 164
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->z2()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 165
    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/ir/optimize/j;->b(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    :cond_24
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 6
    const-string v0, "Insert assume instructions"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 7
    const-string v0, "Part 1: Compute assumed values"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 8
    new-instance v0, Lcom/android/tools/r8/ir/optimize/j;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/j;-><init>()V

    .line 9
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 10
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, p2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 12
    invoke-interface {p3, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/j;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p2, Lcom/android/tools/r8/ir/optimize/k;

    iget-object p3, v0, Lcom/android/tools/r8/ir/optimize/j;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/ir/optimize/k;-><init>(Ljava/util/LinkedHashMap;)V

    .line 15
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 16
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    const-string v0, "Part 2: Remove redundant assume instructions"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 18
    invoke-static {p2}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/ir/optimize/k;)V

    .line 19
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 20
    const-string v0, "Part 3: Compute dominated users"

    invoke-virtual {p4, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;)Ljava/util/IdentityHashMap;

    move-result-object v0

    .line 22
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 23
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    const-string v1, "Part 4: Remove redundant dominated assume instructions"

    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 25
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/ir/optimize/k;->a(Ljava/util/IdentityHashMap;)V

    .line 26
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 27
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    const-string p3, "Part 5: Materialize assume instructions"

    invoke-virtual {p4, p3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/q;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;)V

    .line 30
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 31
    :goto_1
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/ns0;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 5
    sget-boolean p2, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

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
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;Ljava/util/Set;Ljava/util/IdentityHashMap;Ljava/util/function/Predicate;)V
    .locals 7

    .line 278
    new-instance v6, Lv/X0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lv/X0;-><init>(Lcom/android/tools/r8/ir/optimize/q;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Map;)V

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/ir/optimize/k;->a(Lcom/android/tools/r8/internal/ht0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/ir/optimize/j;)Z
    .locals 5

    .line 166
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 168
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    return v3

    .line 170
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object p2

    .line 171
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    .line 172
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v4, v1}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    .line 173
    :cond_2
    iget-object v2, p2, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/zt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/q;->c:Z

    if-nez v1, :cond_4

    .line 177
    iget-object p2, p2, Lcom/android/tools/r8/internal/zt;->b:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    .line 178
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 179
    :cond_4
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual {p3, p1, v0, p2}, Lcom/android/tools/r8/ir/optimize/j;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zt;)V

    :goto_1
    return v3
.end method

.method public final a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Z
    .locals 13

    move-object v0, p2

    move-object/from16 v6, p5

    move-object/from16 v2, p6

    move-object v1, p1

    move-object/from16 v3, p7

    .line 279
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 280
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 281
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_5

    .line 282
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->w2()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    sget-boolean v4, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_2
    :goto_0
    invoke-static {v8}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    :cond_3
    :goto_1
    move-object v9, v1

    goto :goto_2

    .line 286
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->z2()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 289
    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    goto :goto_1

    .line 290
    :goto_2
    iget-object v1, v3, Lcom/android/tools/r8/ir/optimize/i;->a:Lcom/android/tools/r8/ir/optimize/h;

    .line 291
    iget-object v4, v3, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 293
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v4

    .line 294
    invoke-interface {p2, v4, v5}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    goto :goto_4

    .line 295
    :cond_6
    invoke-virtual/range {p7 .. p7}, Lcom/android/tools/r8/ir/optimize/i;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 296
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    goto :goto_3

    .line 297
    :cond_7
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 298
    :goto_3
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v10

    .line 299
    invoke-virtual {p2, v4, v10}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 300
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    instance-of v10, v1, Lcom/android/tools/r8/ir/optimize/l;

    if-eqz v10, :cond_8

    .line 302
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_7

    .line 303
    :cond_8
    instance-of v10, v1, Lcom/android/tools/r8/ir/optimize/m;

    if-eqz v10, :cond_c

    .line 304
    new-instance v1, Lv/g1;

    invoke-direct {v1, v6}, Lv/g1;-><init>(Lcom/android/tools/r8/internal/zE;)V

    if-ne v2, v4, :cond_9

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    .line 305
    :cond_9
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v10

    .line 306
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 307
    invoke-interface {v1, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 308
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/xw0;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 309
    invoke-virtual {v11, v2, v4, v5}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto :goto_5

    .line 310
    :cond_b
    :goto_6
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/xw0;->e(Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_7

    .line 311
    :cond_c
    instance-of v10, v1, Lcom/android/tools/r8/ir/optimize/o;

    if-eqz v10, :cond_d

    .line 312
    invoke-virtual {v1}, Lcom/android/tools/r8/ir/optimize/h;->a()Lcom/android/tools/r8/ir/optimize/o;

    move-result-object v1

    .line 313
    iget-object v10, v1, Lcom/android/tools/r8/ir/optimize/o;->b:Ljava/util/IdentityHashMap;

    .line 314
    new-instance v11, Lv/h1;

    invoke-direct {v11, v2}, Lv/h1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 315
    invoke-virtual {v10, v11}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 316
    iget-object v10, v1, Lcom/android/tools/r8/ir/optimize/o;->a:Ljava/util/Set;

    .line 317
    iget-object v1, v1, Lcom/android/tools/r8/ir/optimize/o;->b:Ljava/util/IdentityHashMap;

    .line 318
    invoke-virtual {v2, v4, v10, v1, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 319
    :cond_d
    :goto_7
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v1

    move-object/from16 v5, p3

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 320
    iget-object v1, v3, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 322
    new-instance v0, Lcom/android/tools/r8/internal/qh;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v4, v1, v2}, Lcom/android/tools/r8/internal/qh;-><init>(Lcom/android/tools/r8/internal/xw0;J)V

    move-object v10, p0

    goto :goto_8

    .line 323
    :cond_e
    iget-object v1, v3, Lcom/android/tools/r8/ir/optimize/i;->b:Lcom/android/tools/r8/internal/xt;

    move-object v10, p0

    iget-object v5, v10, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    .line 324
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    move-object v0, v1

    move-object v1, v4

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object v4, v5

    move-object v5, v11

    .line 325
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v0

    .line 326
    :goto_8
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    if-eq v9, v7, :cond_f

    .line 327
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_9

    .line 328
    :cond_f
    new-instance v1, Lv/i1;

    invoke-direct {v1}, Lv/i1;-><init>()V

    move-object/from16 v2, p4

    .line 329
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Lv/j1;

    invoke-direct {v2}, Lv/j1;-><init>()V

    .line 330
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 331
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    return v8
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 3
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    new-instance v5, Lv/b1;

    invoke-direct {v5}, Lv/b1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;Ljava/util/Set;Ljava/util/IdentityHashMap;Ljava/util/function/Predicate;)V

    .line 5
    new-instance v5, Lv/c1;

    invoke-direct {v5}, Lv/c1;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/q;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/ir/optimize/k;Ljava/util/Set;Ljava/util/IdentityHashMap;Ljava/util/function/Predicate;)V

    .line 6
    new-instance p2, Lv/d1;

    invoke-direct {p2}, Lv/d1;-><init>()V

    invoke-virtual {v7, p2}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 7
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/android/tools/r8/internal/lu0;

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/q;->a:Lcom/android/tools/r8/graph/y;

    const/4 v1, 0x0

    .line 9
    invoke-direct {p2, v0, p1, v1}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    .line 10
    iget-boolean p1, p0, Lcom/android/tools/r8/ir/optimize/q;->b:Z

    .line 11
    iput-boolean p1, p2, Lcom/android/tools/r8/internal/lu0;->b:Z

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
