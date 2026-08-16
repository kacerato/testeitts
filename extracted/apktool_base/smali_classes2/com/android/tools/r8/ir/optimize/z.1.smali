.class public final Lcom/android/tools/r8/ir/optimize/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/K7;

.field public final c:Lcom/android/tools/r8/graph/H5;

.field public final d:Lcom/android/tools/r8/internal/fB;

.field public e:Lcom/android/tools/r8/internal/t40;

.field public f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/K7;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/K7;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->b:Lcom/android/tools/r8/internal/K7;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/N20;Lcom/android/tools/r8/internal/N20;)I
    .locals 0

    .line 149
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 246
    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/zE;Ljava/util/IdentityHashMap;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 151
    invoke-static {v0}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 152
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/N20;)Z
    .locals 1

    .line 148
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/EE;
    .locals 4

    .line 221
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 222
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p2}, Lcom/android/tools/r8/internal/AE;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    if-ne v1, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 223
    :cond_3
    :goto_1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    goto :goto_2

    .line 225
    :cond_4
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 226
    :goto_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    sget-object v1, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 228
    :cond_5
    invoke-virtual {p4, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 229
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 230
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 231
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 232
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    .line 233
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    new-instance v3, Lv/b2;

    invoke-direct {v3, p3}, Lv/b2;-><init>(Lcom/android/tools/r8/internal/FE;)V

    .line 234
    invoke-interface {p2, v1, p1, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    .line 235
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_7

    .line 236
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 237
    :cond_7
    :goto_3
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/EE;->d(Lcom/android/tools/r8/internal/zE;)V

    if-nez v0, :cond_9

    .line 238
    invoke-interface {p2}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    return-object p2

    .line 239
    :cond_a
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    .line 240
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 241
    :cond_c
    :goto_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_7

    :cond_d
    if-nez v0, :cond_f

    .line 242
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 243
    :cond_f
    :goto_6
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/EE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 244
    :goto_7
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/EE;->c(Lcom/android/tools/r8/internal/zE;)V

    return-object p2

    .line 245
    :cond_10
    invoke-interface {p2, p4}, Lcom/android/tools/r8/internal/EE;->e(Lcom/android/tools/r8/internal/zE;)V

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/FE;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/EE;
    .locals 4

    .line 153
    invoke-virtual {p4, p3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 155
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p2

    .line 156
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 157
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 158
    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 160
    invoke-virtual {p4, v0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    goto :goto_2

    .line 161
    :cond_2
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 162
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/EE;

    move-result-object p2

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 165
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/M20;

    new-instance v2, Lcom/android/tools/r8/ir/optimize/y;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/y;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/M20;-><init>(Lcom/android/tools/r8/internal/Sz;)V

    .line 32
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 33
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    .line 35
    iget-object v4, v4, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v5, 0x2a

    .line 36
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    .line 38
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->a0()Lcom/android/tools/r8/internal/NJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/NJ;->y2()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_2

    goto :goto_0

    .line 39
    :cond_3
    new-instance v4, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    .line 40
    invoke-static {v4}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 41
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M20;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 43
    sget-object v1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 44
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    .line 45
    iput-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    return-void

    .line 46
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 47
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    if-nez v2, :cond_8

    new-instance v2, Lcom/android/tools/r8/internal/J20;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/J20;-><init>(Lcom/android/tools/r8/internal/M20;)V

    iput-object v2, v1, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    .line 48
    :cond_8
    iget-object v1, v1, Lcom/android/tools/r8/internal/M20;->m:Lcom/android/tools/r8/internal/J20;

    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/Y1;

    invoke-direct {v2}, Lv/Y1;-><init>()V

    .line 50
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lv/Z1;

    invoke-direct {v2}, Lv/Z1;-><init>()V

    .line 51
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    const-wide/16 v4, 0x16

    .line 52
    invoke-interface {v1, v4, v5}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 55
    sget-object v1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 56
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    .line 57
    iput-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    return-void

    .line 58
    :cond_9
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v4, 0x0

    .line 59
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/N20;

    .line 60
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 61
    sget-boolean v7, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->g1()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 62
    :cond_b
    :goto_3
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    .line 63
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    .line 64
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_a

    .line 65
    :cond_c
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v8

    const/16 v9, 0x10

    const/16 v10, 0xf

    const/16 v11, 0x47

    const/16 v12, 0x3b

    const/16 v13, 0x1c

    const/16 v14, 0x14

    const/16 v15, 0xc

    if-eq v8, v15, :cond_13

    if-eq v8, v14, :cond_12

    if-eq v8, v13, :cond_11

    if-eq v8, v12, :cond_10

    if-eq v8, v11, :cond_f

    if-eq v8, v10, :cond_e

    if-ne v8, v9, :cond_d

    .line 66
    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v6

    sget-boolean v16, Lcom/android/tools/r8/internal/vh;->m:Z

    .line 67
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 68
    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/vh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/vh;)Lcom/android/tools/r8/internal/vh;

    move-result-object v3

    :goto_4
    move-object v6, v3

    goto/16 :goto_5

    .line 69
    :cond_d
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    .line 70
    :cond_e
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v6

    sget-boolean v8, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 71
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 72
    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/qh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    goto :goto_4

    .line 73
    :cond_f
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object v6

    sget-boolean v8, Lcom/android/tools/r8/internal/Pf0;->m:Z

    .line 74
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 75
    new-instance v8, Lcom/android/tools/r8/internal/Pf0;

    .line 76
    iget v6, v6, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 77
    invoke-direct {v8, v3, v6}, Lcom/android/tools/r8/internal/Pf0;-><init>(Lcom/android/tools/r8/internal/xw0;I)V

    move-object v6, v8

    goto :goto_5

    .line 78
    :cond_10
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Mo0;)Lcom/android/tools/r8/internal/Mo0;

    move-result-object v3

    goto :goto_4

    .line 79
    :cond_11
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/bE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/bE;)Lcom/android/tools/r8/internal/bE;

    move-result-object v3

    goto :goto_4

    .line 80
    :cond_12
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    .line 81
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v6

    .line 82
    sget-boolean v8, Lcom/android/tools/r8/internal/uq;->n:Z

    .line 83
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 84
    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/uq;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/uq;)Lcom/android/tools/r8/internal/uq;

    move-result-object v3

    goto :goto_4

    .line 85
    :cond_13
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v6

    sget-boolean v8, Lcom/android/tools/r8/internal/jh;->n:Z

    .line 86
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 87
    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/jh;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/jh;)Lcom/android/tools/r8/internal/jh;

    move-result-object v3

    goto/16 :goto_4

    .line 88
    :goto_5
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v3

    if-eq v3, v15, :cond_1e

    if-eq v3, v14, :cond_1e

    if-eq v3, v13, :cond_15

    if-eq v3, v12, :cond_1e

    if-eq v3, v11, :cond_1e

    if-eq v3, v10, :cond_1e

    const/16 v7, 0x10

    if-ne v3, v7, :cond_14

    goto/16 :goto_8

    .line 89
    :cond_14
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    .line 90
    :cond_15
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 92
    iget-boolean v8, v3, Lcom/android/tools/r8/internal/xw0;->j:Z

    if-eqz v8, :cond_16

    goto/16 :goto_8

    .line 93
    :cond_16
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 94
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    goto :goto_9

    .line 95
    :cond_17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 97
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    .line 98
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v7

    .line 99
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->l()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/internal/CE;->j(I)Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v7

    .line 101
    sget-boolean v8, Lcom/android/tools/r8/internal/fB;->k:Z

    if-nez v8, :cond_19

    if-eqz v7, :cond_18

    goto :goto_6

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_19
    :goto_6
    if-nez v8, :cond_1b

    .line 102
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_7

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1b
    :goto_7
    move-object v3, v7

    goto :goto_9

    .line 103
    :cond_1c
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 104
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v3

    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    .line 105
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 106
    invoke-static {v8, v3}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    if-nez v7, :cond_1f

    if-eqz v3, :cond_1d

    goto :goto_9

    .line 107
    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1e
    :goto_8
    const/4 v3, 0x0

    :cond_1f
    :goto_9
    if-nez v3, :cond_22

    .line 108
    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    .line 110
    :cond_20
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 111
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 112
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v7

    if-nez v7, :cond_20

    .line 113
    iget-object v7, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    .line 114
    iget-object v7, v7, Lcom/android/tools/r8/internal/fB;->c:Lcom/android/tools/r8/internal/B60;

    .line 115
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 116
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 117
    :cond_21
    invoke-interface {v3, v6}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_a

    .line 118
    :cond_22
    invoke-static {v3, v6, v2}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/zE;Ljava/util/IdentityHashMap;)V

    .line 119
    :goto_a
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    if-eq v5, v6, :cond_23

    .line 120
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 121
    iget-object v7, v5, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 122
    invoke-virtual {v2, v5}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_24

    goto :goto_b

    .line 123
    :cond_24
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 124
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 125
    invoke-static {v6, v7, v2}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/zE;Ljava/util/IdentityHashMap;)V

    goto :goto_c

    .line 126
    :cond_25
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    new-instance v5, Lv/a2;

    invoke-direct {v5}, Lv/a2;-><init>()V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/xw0;->c(Ljava/util/function/Predicate;)Z

    move-result v3

    or-int/2addr v4, v3

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 128
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    .line 129
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 130
    :cond_26
    iget-object v3, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 131
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 132
    iget-object v3, v1, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    iput-object v3, v1, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 133
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 134
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    .line 135
    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/FE;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/EE;

    move-result-object v5

    goto :goto_d

    .line 136
    :cond_27
    :goto_e
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 137
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 138
    invoke-virtual {v0, v1, v5, v3, v2}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/FE;Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/internal/EE;

    move-result-object v5

    goto :goto_e

    .line 139
    :cond_28
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v1, :cond_2a

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_f

    :cond_29
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 140
    :cond_2a
    :goto_f
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v2, v3, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    move-result v2

    or-int/2addr v2, v4

    if-eqz v2, :cond_2b

    .line 142
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->b:Lcom/android/tools/r8/internal/K7;

    iget-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/K7;->c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/F7;

    .line 143
    :cond_2b
    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/fB;->x()V

    if-nez v1, :cond_2d

    .line 144
    iget-object v1, v0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v2, v0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_10

    :cond_2c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 145
    :cond_2d
    :goto_10
    sget-object v1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    .line 146
    iput-object v1, v0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    const/4 v3, 0x0

    .line 147
    iput-object v3, v0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    return-void

    :cond_2e
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public final a(Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/tZ;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/z;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->e:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ew;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 9
    :cond_2
    instance-of v3, v2, Lcom/android/tools/r8/graph/F3;

    if-nez v3, :cond_3

    return v1

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    .line 12
    sget-boolean v5, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v5, :cond_5

    const/16 v5, 0x40

    .line 13
    iget v4, v4, Lcom/android/tools/r8/graph/g;->c:I

    .line 14
    invoke-static {v4, v5}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/graph/F0;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    .line 17
    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz p2, :cond_7

    return v1

    .line 18
    :cond_7
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p2

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_8

    return v1

    .line 19
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 21
    instance-of v4, p1, Lcom/android/tools/r8/internal/Mo0;

    if-ne p2, v4, :cond_a

    .line 22
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-ne p2, v4, :cond_9

    return v1

    .line 23
    :cond_9
    instance-of p1, p1, Lcom/android/tools/r8/internal/bE;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    .line 26
    :cond_a
    iget-object p1, v2, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 8

    .line 166
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_14

    const/16 v1, 0x14

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1c

    const/4 v4, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x47

    if-eq v0, v1, :cond_15

    const/16 v1, 0xf

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    .line 167
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/z;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return v3

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    .line 171
    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    .line 172
    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/tools/r8/internal/Mo0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    .line 173
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    .line 174
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    .line 175
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_1
    move v1, v2

    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v1

    .line 180
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_7

    return v3

    .line 181
    :cond_7
    invoke-virtual {p0, v0, v4}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/tZ;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 182
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    .line 183
    sget-object v5, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 184
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->f0()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 186
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->N()Lcom/android/tools/r8/internal/Fm0;

    move-result-object v0

    .line 187
    iget-object v1, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 188
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 189
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    .line 190
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    if-ne v4, v1, :cond_9

    goto :goto_3

    .line 191
    :cond_9
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 192
    iget-object v0, v0, Lcom/android/tools/r8/internal/Fm0;->c:Lcom/android/tools/r8/graph/l1;

    .line 193
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v0

    if-eqz v0, :cond_a

    goto/16 :goto_6

    :cond_a
    :goto_3
    return v3

    .line 194
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    .line 197
    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    .line 198
    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/android/tools/r8/internal/hw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v3

    .line 199
    :cond_c
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v5, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    .line 200
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    .line 201
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    .line 203
    :cond_d
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_5

    .line 204
    :cond_e
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v6

    if-nez v6, :cond_f

    :goto_4
    move v1, v2

    goto :goto_5

    .line 205
    :cond_f
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v1

    .line 206
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    :goto_5
    if-nez v1, :cond_10

    return v3

    .line 207
    :cond_10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    new-instance v5, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 208
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v4

    .line 209
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 210
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 211
    invoke-static {v1, v5}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v1

    if-nez v1, :cond_11

    return v3

    .line 212
    :cond_11
    invoke-virtual {p0, v0, v4}, Lcom/android/tools/r8/ir/optimize/z;->a(Lcom/android/tools/r8/internal/ew;Lcom/android/tools/r8/internal/tZ;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 213
    :cond_12
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    if-nez v1, :cond_13

    .line 214
    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/z;->c()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    .line 215
    :cond_13
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->f:Ljava/util/Set;

    .line 216
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v3

    .line 217
    :cond_14
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->c:Lcom/android/tools/r8/graph/H5;

    .line 218
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    .line 219
    sget-object v5, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v3

    .line 220
    :cond_15
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-eqz p1, :cond_16

    return v3

    :cond_16
    return v2
.end method

.method public final b()Ljava/util/Set;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    iget-object v1, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    new-instance v2, Lv/X1;

    invoke-direct {v2, v0}, Lv/X1;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 6

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/ir/optimize/z;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    new-instance v3, Lv/V1;

    invoke-direct {v3}, Lv/V1;-><init>()V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/qK;->a(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/bE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->x()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final d()Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/z;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/z;->d:Lcom/android/tools/r8/internal/fB;

    new-instance v3, Lv/W1;

    invoke-direct {v3}, Lv/W1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/hw;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v3

    const/16 v4, 0x40

    iget v3, v3, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
