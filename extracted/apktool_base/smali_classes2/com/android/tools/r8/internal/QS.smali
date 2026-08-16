.class public final Lcom/android/tools/r8/internal/QS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nC;

.field public final c:Lcom/android/tools/r8/internal/dH;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lcom/android/tools/r8/internal/dH;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/QS;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dH;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/dH;

    iget v0, p2, Lcom/android/tools/r8/internal/dH;->h:I

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/graph/j0;)I
    .locals 0

    .line 18
    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;Ljava/lang/Integer;[I)V
    .locals 0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/IH;->c(I)V

    .line 38
    invoke-static {p3}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/IH;->c(I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/dH;Ljava/lang/Object;Lcom/android/tools/r8/graph/j0;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/android/tools/r8/graph/j0;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/dH;Ljava/lang/Object;Lcom/android/tools/r8/graph/j0;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/QS;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/QS;->a(Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/pf;)I
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 4
    iget-object v1, p1, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-object v5, p1, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    if-eq v4, v2, :cond_4

    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v3

    :cond_4
    if-eqz v1, :cond_7

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/QS;->d:Z

    if-nez v2, :cond_6

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_6
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/kT0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/kT0;-><init>()V

    .line 8
    invoke-static {v1, v5, v2}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/Comparator;)I

    move-result v1

    if-eqz v1, :cond_7

    return v1

    .line 9
    :cond_7
    sget-boolean v1, Lcom/android/tools/r8/internal/QS;->d:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    instance-of v1, v1, Lcom/android/tools/r8/internal/SG;

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_9
    :goto_2
    new-instance v1, Lcom/android/tools/r8/internal/dH;

    .line 11
    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 12
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    .line 13
    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    new-instance v3, Lcom/android/tools/r8/internal/lT0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/lT0;-><init>(Lcom/android/tools/r8/internal/dH;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    new-instance v0, Lcom/android/tools/r8/internal/mT0;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/mT0;-><init>(Lcom/android/tools/r8/internal/dH;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/nT0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/nT0;-><init>(Lcom/android/tools/r8/internal/pf;)V

    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 7

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 20
    iget-object v2, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 21
    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    new-instance v3, Lcom/android/tools/r8/internal/iT0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/iT0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 24
    new-instance v2, Lcom/android/tools/r8/internal/iQ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/iQ0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 26
    iget-object v6, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v6, v5}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 27
    iget-object v5, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j0;

    invoke-interface {v4, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    if-eqz p1, :cond_1

    .line 29
    new-instance p1, Lcom/android/tools/r8/internal/IH;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IH;-><init>()V

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/internal/QS;->c:Lcom/android/tools/r8/internal/dH;

    new-instance v3, Lcom/android/tools/r8/internal/jT0;

    invoke-direct {v3, p1, v0}, Lcom/android/tools/r8/internal/jT0;-><init>(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/IH;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p1

    .line 33
    iget-object v2, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IH;->a()I

    move-result p1

    .line 35
    iget-object v0, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nA;->a(I)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/QS;->b:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
