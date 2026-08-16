.class public abstract Lcom/android/tools/r8/graph/z3;
.super Lcom/android/tools/r8/graph/D3;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/D3$a;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/D3$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/graph/D3;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/z3;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

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

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/Xh;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/Xh;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should have been a single or failed result"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    iput-object p2, p0, Lcom/android/tools/r8/graph/z3;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/tools/r8/graph/z3;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-string p2, "Should not be called on MultipleFieldResolutionResult"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/z3;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/graph/z3;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bridge synthetic g()Lcom/android/tools/r8/graph/Z5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/z3;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
