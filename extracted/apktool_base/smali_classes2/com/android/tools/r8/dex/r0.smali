.class public final Lcom/android/tools/r8/dex/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/internal/IH;

.field public e:Lcom/android/tools/r8/internal/zK;

.field public f:Lcom/android/tools/r8/internal/DK;

.field public final g:Lcom/android/tools/r8/FeatureSplit;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iput-object p4, p0, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/dex/t0;

    iget-object p2, p2, Lcom/android/tools/r8/dex/t0;->d:Lcom/android/tools/r8/FeatureSplit;

    iput-object p2, p0, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/r0;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/dex/t0;
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DK;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/dex/t0;

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/android/tools/r8/dex/t0;

    iget-object v1, p0, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v2

    iget-object v3, p0, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 8
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    sget-boolean v1, Lcom/android/tools/r8/dex/r0;->h:Z

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    iget-object v1, p0, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/DK;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/DK;-><init>(ILcom/android/tools/r8/internal/zK;)V

    .line 15
    iput-object v2, p0, Lcom/android/tools/r8/dex/r0;->f:Lcom/android/tools/r8/internal/DK;

    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
