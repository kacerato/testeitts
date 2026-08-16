.class public Lcom/android/tools/r8/internal/W5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic q:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/dH;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/util/Set;

.field public e:Lcom/android/tools/r8/internal/N8;

.field public final f:Lcom/android/tools/r8/internal/CE;

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Z

.field public j:Z

.field public final k:Ljava/util/HashMap;

.field public l:I

.field public m:I

.field public n:I

.field public o:Ljava/util/HashMap;

.field public p:Lcom/android/tools/r8/internal/mB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/mB;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    sget-object v0, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    new-instance v0, Lcom/android/tools/r8/internal/CE;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/CE;-><init>(Lcom/android/tools/r8/internal/W5;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/W5;->j:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->l:I

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->m:I

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->n:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    return-void
.end method

.method public static a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;
    .locals 2

    .line 257
    new-instance v0, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 258
    new-instance v1, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    const/4 p2, 0x0

    .line 259
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 260
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 261
    iget-object p0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object p0

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    return-object v0
.end method

.method public static a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;
    .locals 0

    .line 255
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static a(Ljava/util/Set;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/android/tools/r8/internal/f01;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f01;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 8
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/sD;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-nez p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    :goto_2
    if-nez p1, :cond_8

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/internal/i01;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/i01;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_3
    return v0
.end method

.method public static synthetic e(Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/internal/W5;)Ljava/lang/String;
    .locals 0

    .line 4
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, v1

    move v2, v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    return v0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    :cond_3
    xor-int/lit8 v2, v2, 0x1

    if-ne v1, v3, :cond_0

    return v0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public H()Lcom/android/tools/r8/internal/AE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    return-object v0
.end method

.method public I()Lcom/android/tools/r8/internal/Y5;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Y5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    return-object v0
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/a01;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/a01;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/d01;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/d01;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final L()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final N()V
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    iget-object v3, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/CH;)V

    return-void
.end method

.method public final O()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/CH;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/CH;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    return-void
.end method

.method public final Q()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/W5;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pred-counts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/tools/r8/internal/W5;->m:I

    const-string v2, " ("

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unfilled)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", succ-count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", filled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/W5;->j:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", sealed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npredecessors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/m01;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/m01;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2d

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lez v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v9}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\nsuccessors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/tools/r8/internal/n01;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/n01;-><init>(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v7

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, " try/catch successors)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->e0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, " (incomplete)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    const-string v2, "no phis\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    const-string v3, ", "

    if-eqz v2, :cond_a

    const-string v2, "locals: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v2

    sget-object v4, Lcom/android/tools/r8/internal/zq0$a;->e:Lcom/android/tools/r8/internal/zq0$a;

    invoke-static {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    move v2, v7

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "???"

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    iget-object v6, v4, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v4, Lcom/android/tools/r8/internal/zE;->g:I

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    const-string v8, ": "

    if-lez v2, :cond_10

    iget-object v9, v6, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-nez v9, :cond_d

    move-object v9, v5

    goto :goto_7

    :cond_d
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/B60;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v4, v6, Lcom/android/tools/r8/internal/zE;->i:Lcom/android/tools/r8/internal/B60;

    if-nez v4, :cond_e

    move-object v4, v5

    goto :goto_8

    :cond_e
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    move-object v9, v4

    goto :goto_9

    :cond_f
    const-string v9, ""

    move-object v11, v9

    move-object v9, v4

    move-object v4, v11

    :goto_9
    add-int/lit8 v10, v2, 0x1

    invoke-static {v0, v4, v10}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v9

    :cond_10
    iget v9, v6, Lcom/android/tools/r8/internal/zE;->g:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-static {v0, v9, v10}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/tools/r8/graph/j0;->e:I

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    const-string v8, " [end: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v6

    sget-object v8, Lcom/android/tools/r8/internal/zq0$a;->e:Lcom/android/tools/r8/internal/zq0$a;

    invoke-static {v0, v6, v3, v8}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R()V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/W5;->i(Lcom/android/tools/r8/internal/W5;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final S()Lcom/android/tools/r8/internal/W5;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public final T()V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(IZLcom/android/tools/r8/internal/zE;)Lcom/android/tools/r8/internal/W5;
    .locals 6

    .line 265
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    .line 266
    new-instance v1, Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 267
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 268
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 270
    invoke-virtual {v2, p0, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 272
    iget-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    iput-object p1, v1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 273
    sget-object p1, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;)Ljava/util/ArrayList;

    move-result-object p2

    .line 275
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 276
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    sget-object v5, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v3, v1, p1, v4, v5}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_1

    .line 279
    :cond_1
    sget-object p2, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object p2, v1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 280
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 281
    new-instance p2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    if-eqz p3, :cond_4

    .line 282
    iget-object v0, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/CE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 283
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    goto :goto_2

    .line 285
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    .line 286
    :goto_2
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 287
    iget-object p3, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 288
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    goto :goto_3

    .line 289
    :cond_4
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 290
    iget-object p3, v1, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 291
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    :goto_3
    const/4 p1, 0x1

    .line 292
    iput-boolean p1, v1, Lcom/android/tools/r8/internal/W5;->i:Z

    .line 293
    iput-boolean p1, v1, Lcom/android/tools/r8/internal/W5;->j:Z

    return-object v1
.end method

.method public final a(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public final a(Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;
    .locals 1

    .line 105
    new-instance v0, Lcom/android/tools/r8/internal/e01;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/e01;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Ljava/util/ArrayList;
    .locals 13

    .line 346
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 347
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 348
    iget-object v1, v0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 349
    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 352
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 354
    iget-object v5, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 355
    iget-object v5, v5, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 356
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    iget-object v5, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 358
    iget-object v5, v5, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 359
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 360
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :cond_2
    :goto_1
    if-ge v7, v5, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 361
    iget-object v9, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    .line 362
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 363
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 365
    sget-boolean v10, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v10, :cond_2

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 366
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    .line 367
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 368
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 369
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/M2;

    .line 370
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    .line 371
    :cond_6
    iget-object v10, p1, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 372
    sget-boolean v10, Lcom/android/tools/r8/internal/W5;->q:Z

    const/4 v11, 0x1

    if-nez v10, :cond_8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v11, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    if-nez v10, :cond_a

    .line 373
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 374
    :cond_a
    :goto_4
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_b

    .line 375
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v10, v8, -0x1

    .line 377
    :cond_b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 379
    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v7, v6

    .line 383
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_12

    if-ge v7, v5, :cond_f

    .line 384
    sget-boolean v8, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v8, :cond_e

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 385
    :cond_e
    :goto_7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 386
    :cond_f
    sget-boolean v8, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v8, :cond_11

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_8

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 387
    :cond_11
    :goto_8
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    .line 388
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 389
    :cond_12
    new-instance v2, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_13
    :goto_a
    if-ge v6, v3, :cond_16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 392
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 393
    sget-boolean v5, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v5, :cond_15

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_b

    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 394
    :cond_15
    :goto_b
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 395
    :cond_16
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v2, :cond_18

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_c

    :cond_17
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_18
    :goto_c
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/dt;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/Set;
    .locals 3

    .line 159
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 161
    iget-object v1, p1, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 162
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 163
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 164
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 165
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/c01;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/c01;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p3, v1, v2}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_4

    .line 166
    :cond_8
    sget-boolean p2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p2, :cond_9

    invoke-static {p1}, Lcom/android/tools/r8/internal/W5;->a(Ljava/util/Set;)V

    :cond_9
    return-object p1
.end method

.method public final a(II)V
    .locals 3

    .line 39
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 42
    iget-object v2, v2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 43
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_3

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Swapping normal successor and catch handler"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 45
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_5

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/N8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 51
    iget-object v2, v2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 52
    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 55
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/xw0;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 247
    iget-object p3, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 248
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_3

    if-ltz p1, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 250
    sget-boolean v2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 251
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p3, :cond_4

    .line 252
    sget-object p3, Lcom/android/tools/r8/internal/xw0;->n:Lcom/android/tools/r8/internal/xw0;

    .line 253
    :cond_4
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_5
    sget-object p3, Lcom/android/tools/r8/internal/U5;->b:Lcom/android/tools/r8/internal/U5;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/W5;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/U5;)V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/U5;)V
    .locals 3

    .line 231
    sget-object v0, Lcom/android/tools/r8/internal/U5;->d:Lcom/android/tools/r8/internal/U5;

    if-ne p3, v0, :cond_0

    .line 232
    iget-object p3, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    add-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 233
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/xw0;

    .line 234
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 236
    iget-object v0, v0, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_6

    if-ltz p1, :cond_3

    goto :goto_2

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 240
    sget-boolean v2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 241
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_7

    .line 242
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 243
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 244
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    .line 245
    iget-object p1, p1, Lcom/android/tools/r8/internal/f60;->t:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 145
    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 148
    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    sget-boolean v1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v1, :cond_1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 151
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/N8;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 152
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p1

    .line 153
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/internal/g01;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/g01;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    .line 155
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    if-nez v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->c()V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V
    .locals 2

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/k01;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/internal/k01;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Vw0;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/CH;)V
    .locals 10

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 63
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 64
    iget v0, p1, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    .line 65
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/CH;->c(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 66
    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v3

    move v4, v2

    .line 72
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/X;

    .line 73
    invoke-interface {v5}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v5

    .line 74
    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 78
    iget-object v1, v0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 79
    iget-object v3, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v0

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 83
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 85
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/CH;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v7

    move v8, v2

    .line 86
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v7

    check-cast v9, Lcom/android/tools/r8/internal/X;

    .line 87
    invoke-interface {v9}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v9

    if-ne v6, v9, :cond_4

    goto :goto_5

    :cond_4
    if-ge v6, v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    sub-int/2addr v6, v8

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 91
    sget-object p1, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    return-void

    .line 92
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/N8;

    invoke-direct {p1, v4, v5}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    :cond_9
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/T5;)V
    .locals 1

    .line 25
    check-cast p1, Lcom/android/tools/r8/internal/dt;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/dt;->e:Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;)V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 200
    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 201
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 205
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v2

    if-lez v2, :cond_2

    sub-int/2addr v1, v2

    .line 206
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    move v0, v1

    goto :goto_2

    .line 207
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 208
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 211
    sget-boolean v1, Lcom/android/tools/r8/internal/N8;->g:Z

    if-nez v1, :cond_5

    .line 212
    iget-object v1, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 213
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 214
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    :goto_3
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 216
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 217
    iget-object v2, p1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 218
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 219
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 220
    iget-object p1, p1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 221
    new-instance v0, Lcom/android/tools/r8/internal/N8;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 222
    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    return-void

    .line 223
    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 224
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 225
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance p1, Lcom/android/tools/r8/internal/N8;

    .line 227
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 229
    new-instance v1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 230
    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 59
    sget-boolean p1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->J()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "replaceSuccessor did not find the predecessor to replace"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 28
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "removePredecessor did not find the predecessor to remove"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 32
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V

    goto :goto_1

    .line 33
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 8

    .line 119
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    .line 120
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 122
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    .line 124
    iget v2, p0, Lcom/android/tools/r8/internal/W5;->m:I

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/W5;->j:Z

    if-nez v0, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    if-nez v0, :cond_9

    .line 126
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    .line 129
    :cond_6
    sget-boolean v2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v2, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 130
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_3

    .line 131
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_a
    :goto_6
    if-ge v3, v2, :cond_11

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 132
    sget-boolean v5, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v5, :cond_c

    .line 133
    iget v6, v4, Lcom/android/tools/r8/internal/W5;->m:I

    if-lez v6, :cond_b

    goto :goto_7

    .line 134
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 135
    :cond_c
    :goto_7
    iget v6, v4, Lcom/android/tools/r8/internal/W5;->m:I

    sub-int/2addr v6, v1

    .line 136
    iput v6, v4, Lcom/android/tools/r8/internal/W5;->m:I

    if-nez v6, :cond_a

    if-nez v5, :cond_e

    .line 137
    iget v5, v4, Lcom/android/tools/r8/internal/W5;->l:I

    iget-object v6, v4, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_d

    goto :goto_8

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 138
    :cond_e
    :goto_8
    iget-object v5, v4, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_f

    add-int/lit8 v7, v7, 0x1

    neg-int v7, v7

    .line 140
    :cond_f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    invoke-virtual {v6, v7, p1}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/internal/aB;)V

    goto :goto_9

    .line 141
    :cond_10
    iput-boolean v1, v4, Lcom/android/tools/r8/internal/W5;->j:Z

    .line 142
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto :goto_6

    :cond_11
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dt;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to remove Phi "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " which is present in currentDefinitions"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p2, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 294
    iget-object v4, v0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    if-eqz v4, :cond_0

    iget-object v5, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    .line 295
    iget-object v6, v4, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 296
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 297
    iget-object v4, v4, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    move-object/from16 v4, p3

    .line 299
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;)Ljava/util/ArrayList;

    move-result-object v4

    .line 300
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_9

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object v10, v7

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 301
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v7

    .line 302
    iget-object v8, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    .line 303
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    instance-of v8, v8, Lcom/android/tools/r8/internal/bY;

    .line 305
    iget-object v9, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v9

    .line 306
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    if-eqz v8, :cond_3

    .line 307
    iget-object v12, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v12

    .line 308
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->q0()Lcom/android/tools/r8/internal/bY;

    move-result-object v12

    .line 309
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    .line 310
    iget-object v14, v12, Lcom/android/tools/r8/internal/bY;->k:Lcom/android/tools/r8/graph/M2;

    .line 311
    sget-boolean v15, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v15, :cond_2

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 312
    :cond_2
    :goto_1
    iget-object v15, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v15, v12}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    move-object/from16 v20, v14

    move-object v14, v12

    move-object/from16 v12, v20

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 313
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 316
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v16, v4

    .line 317
    new-instance v4, Lcom/android/tools/r8/internal/W5;

    move/from16 v18, v5

    iget-object v5, v10, Lcom/android/tools/r8/internal/W5;->p:Lcom/android/tools/r8/internal/mB;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 318
    iget-object v5, v1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    .line 319
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v5

    .line 320
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 321
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_4

    .line 322
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    invoke-virtual {v1, v13, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 323
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v6

    .line 324
    new-instance v6, Lcom/android/tools/r8/internal/bY;

    invoke-direct {v6, v5, v12, v3}, Lcom/android/tools/r8/internal/bY;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/nJ;)V

    .line 325
    iget-object v5, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    const/4 v3, 0x0

    .line 326
    invoke-virtual {v5, v6, v3}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 327
    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    goto :goto_4

    :cond_4
    move/from16 v19, v6

    const/4 v3, 0x0

    .line 328
    :goto_4
    new-instance v5, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 329
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 330
    iget-object v6, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 331
    invoke-virtual {v6, v5, v3}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 332
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 333
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v0, v10, v4}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    if-nez v2, :cond_5

    .line 336
    iget-object v0, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v3, p4

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_3

    .line 337
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_5

    .line 338
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Invalid block structure: catch block reachable via non-exceptional flow."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v16, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .line 339
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 340
    invoke-interface {v7, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v8, :cond_8

    .line 341
    new-instance v0, Lcom/android/tools/r8/internal/f60;

    iget-object v3, v1, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    .line 342
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v9

    .line 343
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v12

    sget-object v3, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    move-object v8, v0

    move-object v4, v11

    move-object v11, v13

    move-object v13, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 344
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/f60;->a(Ljava/util/List;)V

    .line 345
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, v16

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sL;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V
    .locals 1

    .line 114
    sget-boolean p2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p2, :cond_1

    .line 115
    iget-boolean p2, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 117
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V
    .locals 9

    .line 167
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 168
    invoke-virtual {v4, p0, p1, p2, p3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 171
    invoke-virtual {v4, p0}, Lcom/android/tools/r8/internal/W5;->i(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 174
    invoke-virtual {p1, p3, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/xw0;)V

    .line 175
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 176
    iget-object v6, v5, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 177
    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 178
    iput-object v3, v5, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_3

    .line 179
    :cond_2
    iget-object v3, p1, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 183
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 185
    invoke-virtual {p1, p3, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/xw0;)V

    .line 186
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->d()V

    .line 187
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    .line 188
    iget-object v5, p1, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 190
    :cond_5
    iget-object v4, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 192
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 193
    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 194
    iput-object v3, v7, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    goto :goto_4

    .line 195
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 196
    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 1

    .line 112
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 10

    .line 93
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/f60;

    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    iget-object v6, v4, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 99
    iget-object v9, v4, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    .line 101
    iget-object v9, v7, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 102
    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .line 103
    iput-object v9, v7, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    add-int/lit8 v7, v8, 0x1

    goto :goto_1

    .line 104
    :cond_1
    iget-object v4, v4, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 264
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 107
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/W5;->n:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(ILcom/android/tools/r8/internal/W5;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/android/tools/r8/internal/Y5;
    .locals 1

    .line 86
    new-instance v0, Lcom/android/tools/r8/internal/Y5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/Zs0;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Ys0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 3
    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->b()Lcom/android/tools/r8/internal/Ys0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ys0;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Zs0;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;
    .locals 1

    .line 81
    new-instance v0, Lcom/android/tools/r8/internal/h01;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/h01;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-object v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    new-instance v1, Lcom/android/tools/r8/internal/j01;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/j01;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/T5;)V
    .locals 1

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/dt;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lcom/android/tools/r8/internal/dt;->e:Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V
    .locals 9

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "attempt to replace non-existent successor"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 14
    iget-object v4, v4, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 15
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v4, v1

    .line 16
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_3

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_4
    new-instance v4, Lcom/android/tools/r8/internal/N8;

    iget-object v5, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 22
    iget-object v5, v5, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 23
    invoke-direct {v4, v5, v2}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-eq p2, v1, :cond_17

    sub-int/2addr v0, v3

    .line 26
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/W5;->a(II)V

    goto/16 :goto_7

    .line 27
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt p2, v2, :cond_f

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt v0, v2, :cond_f

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 31
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    const/4 v2, 0x0

    if-ltz v0, :cond_e

    .line 33
    iget-object v4, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/xw0;

    .line 35
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->Q()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 36
    invoke-interface {v4}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    instance-of v5, v5, Lcom/android/tools/r8/internal/JT;

    if-eqz v5, :cond_9

    .line 39
    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    if-ne v5, p0, :cond_9

    .line 40
    sget-boolean v5, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v5, :cond_8

    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    move-object v6, p0

    :goto_3
    if-eq v6, v5, :cond_8

    .line 41
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v3, :cond_7

    .line 42
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 44
    invoke-static {v7}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-ne v8, v6, :cond_7

    move-object v6, v7

    goto :goto_3

    .line 45
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_8
    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    iget-object v6, v4, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 47
    iget-object v5, v5, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 48
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_5

    .line 49
    :cond_9
    sget-boolean v5, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v5, :cond_b

    instance-of v5, v4, Lcom/android/tools/r8/internal/lo0;

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_b
    :goto_4
    new-instance v5, Lcom/android/tools/r8/internal/v60;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/v60;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 51
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    .line 53
    invoke-virtual {v6, v5, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 54
    :cond_c
    :goto_5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 55
    iget-object v5, v4, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    invoke-virtual {v5, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 56
    iput-object v2, v4, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    .line 57
    :cond_e
    new-instance v0, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 58
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    goto :goto_7

    .line 61
    :cond_f
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_17

    sub-int/2addr v0, v3

    .line 62
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/W5;->a(II)V

    goto :goto_7

    .line 63
    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->l2()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Q0()Lcom/android/tools/r8/internal/ar0;

    move-result-object v2

    .line 65
    iget v4, v2, Lcom/android/tools/r8/internal/ar0;->m:I

    if-ne v4, v0, :cond_11

    .line 66
    iput p2, v2, Lcom/android/tools/r8/internal/ar0;->m:I

    .line 67
    :cond_11
    iget v4, v2, Lcom/android/tools/r8/internal/ar0;->m:I

    if-le v4, v0, :cond_12

    sub-int/2addr v4, v3

    .line 68
    iput v4, v2, Lcom/android/tools/r8/internal/ar0;->m:I

    .line 69
    :cond_12
    iget-object v2, v2, Lcom/android/tools/r8/internal/ar0;->l:[I

    .line 70
    :goto_6
    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 71
    aget v3, v2, v1

    if-ne v3, v0, :cond_13

    .line 72
    aput p2, v2, v1

    .line 73
    :cond_13
    aget v3, v2, v1

    if-le v3, v0, :cond_14

    add-int/lit8 v3, v3, -0x1

    .line 74
    aput v3, v2, v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    :cond_15
    sget-boolean p2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p2, :cond_17

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_7

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 76
    :cond_17
    :goto_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 77
    sget-boolean p2, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p2, :cond_1b

    if-eqz p1, :cond_18

    goto :goto_9

    :cond_18
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_19
    :goto_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 79
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    :goto_9
    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/W5;)Z
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->L()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final c(Lcom/android/tools/r8/internal/zE;)Ljava/util/Iterator;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v1, Lcom/android/tools/r8/internal/Y5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Y5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-object v1
.end method

.method public final c()V
    .locals 8

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    if-nez v0, :cond_3

    .line 8
    iget-object v0, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 10
    iget-object v2, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 11
    invoke-static {v2}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    .line 15
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 16
    sget-boolean v6, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v6, :cond_5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Ljava/lang/Throwable;"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v5, v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 17
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 22
    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 24
    sget-boolean v3, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v3, :cond_8

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_4
    if-nez v3, :cond_a

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez v3, :cond_c

    if-eq v2, v1, :cond_c

    add-int/lit8 v0, v0, -0x2

    if-ne v2, v0, :cond_b

    goto :goto_6

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_6
    if-nez v3, :cond_e

    if-eq v2, v1, :cond_e

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_7
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/tools/r8/internal/W5;->n:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/tools/r8/internal/W5;->n:I

    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W5;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/W5;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 30
    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 31
    iget-object v2, p1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 32
    iget-object v2, v2, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    if-nez v3, :cond_2

    return v0

    .line 35
    :cond_2
    iget-object v4, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 36
    iget-object v4, v4, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 37
    iget-object v6, p1, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 38
    iget-object v6, v6, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_5

    .line 39
    iget-object v8, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    .line 40
    iget-object v9, p1, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    .line 41
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 42
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 43
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/M2;

    .line 44
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v5

    :cond_5
    return v0
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/zE;)Ljava/util/Iterator;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/S5;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/S5;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/W5;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->m:I

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/W5;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/W5;->l:I

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/W5;->g:I

    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/W5;)Z
    .locals 5

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 13
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final e()V
    .locals 7

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/V5;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/V5;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v0, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v6

    if-eq v4, v6, :cond_5

    .line 12
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    sget-boolean v4, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 18
    iget-object v6, v5, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 19
    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 20
    iput-object v6, v5, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    goto :goto_2

    .line 21
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final g()Lcom/android/tools/r8/internal/W5;
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->G()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v1}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v2}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final g(Lcom/android/tools/r8/internal/W5;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()Lcom/android/tools/r8/internal/zE;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Lcom/android/tools/r8/internal/W5;)Ljava/lang/String;
    .locals 4

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez p1, :cond_5

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_5
    :goto_2
    new-array p1, v2, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "\u0000"

    const-string v1, "*"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    const-string p1, ""

    return-object p1
.end method

.method public i()Lcom/android/tools/r8/internal/sL;
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/W5;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->l0()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/android/tools/r8/internal/W5;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "removeSuccessor did not find the successor to remove"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/CH;

    filled-new-array {p1}, [I

    move-result-object p1

    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    .line 5
    iget-object v2, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput v1, v0, Lcom/android/tools/r8/internal/CH;->c:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/CH;)V

    return-void
.end method

.method public final j()Lcom/android/tools/r8/internal/N8;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/N8;->f:Lcom/android/tools/r8/internal/N8;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    iget-object v0, v0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/l01;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/l01;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/N8;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    iget-object v2, v2, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/N8;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final k()Lcom/android/tools/r8/internal/W5;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/tools/r8/internal/bY;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Trampoline should not have catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->w()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/CE;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->J()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->K()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final o()Lcom/android/tools/r8/internal/hC;
    .locals 8

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v5, p0}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    array-length v7, v0

    if-ge v7, v6, :cond_1

    array-length v7, v0

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    aput-object v5, v0, v4

    move v4, v6

    goto :goto_0

    :cond_2
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/b01;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/b01;-><init>(Lcom/android/tools/r8/internal/eC;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/W5;->g:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/W5;->g:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/W5;->g:I

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/f60;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final t()Lcom/android/tools/r8/internal/B60;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/W5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    sget-boolean v1, Lcom/android/tools/r8/internal/AT;->a:Z

    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public w()Lcom/android/tools/r8/internal/W5;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->M()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/W5;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public final y()Lcom/android/tools/r8/internal/W5;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    return-object v0
.end method

.method public z()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
