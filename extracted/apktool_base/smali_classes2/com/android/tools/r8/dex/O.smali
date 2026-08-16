.class public final Lcom/android/tools/r8/dex/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Ljava/util/HashSet;

.field public c:I

.field public d:I

.field public e:Z

.field public final synthetic f:Lcom/android/tools/r8/dex/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/Q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/dex/O;->f:Lcom/android/tools/r8/dex/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/android/tools/r8/dex/O;->c:I

    .line 3
    iput p1, p0, Lcom/android/tools/r8/dex/O;->d:I

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/tools/r8/dex/O;->e:Z

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/Q;Ljava/util/HashSet;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/dex/O;->f:Lcom/android/tools/r8/dex/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/tools/r8/dex/O;->c:I

    .line 8
    iput p1, p0, Lcom/android/tools/r8/dex/O;->d:I

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/tools/r8/dex/O;->e:Z

    .line 10
    iput-object p2, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/O;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v6, Lcom/android/tools/r8/dex/t0;

    iget-object v0, p0, Lcom/android/tools/r8/dex/O;->f:Lcom/android/tools/r8/dex/Q;

    iget-object v2, v0, Lcom/android/tools/r8/dex/Q;->g:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    :cond_0
    iget-object v0, v6, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/dex/O;->c:I

    iget-object v0, v6, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/dex/O;->d:I

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/tools/r8/dex/O;

    sget-boolean v0, Lcom/android/tools/r8/dex/O;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/tools/r8/dex/O;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/tools/r8/dex/O;->d:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-ne p0, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/dex/O;->d:I

    iget v2, p1, Lcom/android/tools/r8/dex/O;->d:I

    if-eq v1, v2, :cond_3

    sub-int/2addr v1, v2

    return v1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/dex/O;->c:I

    iget v2, p1, Lcom/android/tools/r8/dex/O;->c:I

    if-eq v1, v2, :cond_4

    sub-int/2addr v1, v2

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object p1, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_5
    sget-object v1, Lcom/android/tools/r8/dex/Q;->j:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    iget-object p1, p1, Lcom/android/tools/r8/dex/O;->b:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return p1
.end method
