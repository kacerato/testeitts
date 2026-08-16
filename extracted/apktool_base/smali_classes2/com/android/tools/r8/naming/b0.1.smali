.class public final Lcom/android/tools/r8/naming/b0;
.super Lcom/android/tools/r8/naming/c0;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/naming/e0;

.field public final d:Lcom/android/tools/r8/naming/b0;

.field public final e:Lcom/android/tools/r8/naming/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/b0;Ljava/util/function/Function;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/e0;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/naming/c0;-><init>(Ljava/util/function/Function;)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/b0;->d:Lcom/android/tools/r8/naming/b0;

    iput-object p3, p0, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    iput-object p4, p0, Lcom/android/tools/r8/naming/b0;->c:Lcom/android/tools/r8/naming/e0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/R2;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/R2;-><init>(Lcom/android/tools/r8/naming/b0;)V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/b0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/b0;->c:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/naming/e0;->d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/naming/b0;->b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/a0;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/naming/b0;->e:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/a0;Ljava/util/function/BiPredicate;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/naming/b0;->f:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/naming/b0;->d:Lcom/android/tools/r8/naming/b0;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/a0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    new-instance v0, Lcom/android/tools/r8/naming/a0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/a0;-><init>(Lcom/android/tools/r8/naming/a0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;
    .locals 2

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/naming/c0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/a0;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/naming/a0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/naming/b0;->d:Lcom/android/tools/r8/naming/b0;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/naming/b0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/b0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/b0;->c:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/b0;->c:Lcom/android/tools/r8/naming/e0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/naming/e0;->d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/naming/c0;->b(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/a0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/naming/a0;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/android/tools/r8/internal/vX;->a:Lcom/android/tools/r8/internal/vX;

    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/naming/b0;->d:Lcom/android/tools/r8/naming/b0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/naming/b0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
