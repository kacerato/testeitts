.class public final Lcom/android/tools/r8/internal/G00;
.super Lcom/android/tools/r8/internal/l4;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/c4;)Lcom/android/tools/r8/internal/c4;
    .locals 0

    .line 5
    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/c4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/c4;)Lcom/android/tools/r8/internal/c4;
    .locals 0

    .line 33
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/c4;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/c4;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/c4;)V
    .locals 0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/graph/O5;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/G00;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/G00;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G00;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/G00;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/G00;->b(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/G00;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/G00;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/G00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 8

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    .line 7
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/s4;->c:Z

    if-eqz v1, :cond_4

    .line 8
    sget-boolean v1, Lcom/android/tools/r8/internal/G00;->d:Z

    if-nez v1, :cond_1

    .line 9
    sget-boolean v2, Lcom/android/tools/r8/internal/s4;->h:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 12
    invoke-static {v1}, Lcom/android/tools/r8/internal/s4;->a(Lcom/android/tools/r8/graph/h;)Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-boolean v2, Lcom/android/tools/r8/internal/s4;->h:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    invoke-static {v1}, Lcom/android/tools/r8/internal/s4;->a(Lcom/android/tools/r8/graph/h;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/s4;->g:Ljava/lang/String;

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s4;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/G00;->d:Z

    if-nez v0, :cond_5

    new-array v0, v1, [Lcom/android/tools/r8/internal/m4;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    .line 21
    iput-object v0, p1, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    return-void

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/android/tools/r8/internal/s4;->a:Ljava/util/List;

    .line 25
    sget-boolean v3, Lcom/android/tools/r8/internal/G00;->d:Z

    if-nez v3, :cond_8

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_2
    if-nez v3, :cond_a

    .line 26
    iget-object v3, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/c4;

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/p4;

    .line 30
    invoke-interface {v5, p1}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/c4;

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/c4;

    move-result-object v5

    .line 32
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/p4;->b()Lcom/android/tools/r8/profile/art/ArtProfileConsumer;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/profile/art/ArtProfileConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/G00;
    .locals 1

    .line 18
    const-string v0, "Prune NonEmptyArtProfileCollection"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/aF0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/aF0;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/G00;
    .locals 4

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/cF0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/cF0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/c4;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/c4;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/G00;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/G00;-><init>(Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/G00;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dF0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/dF0;-><init>(Lcom/android/tools/r8/internal/G00;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    const-string p1, "Rewrite NonEmptyArtProfileCollection"

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/G00;

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v0

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/internal/G00;->d:Z

    if-nez v1, :cond_1

    .line 10
    iget-boolean v2, v0, Lcom/android/tools/r8/internal/s4;->c:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/s4;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lcom/android/tools/r8/internal/m4;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    sget-object p1, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    return-object p1

    :cond_3
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/bF0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bF0;-><init>(Lcom/android/tools/r8/graph/y;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/c4;

    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/c4;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/G00;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/G00;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/G00;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
