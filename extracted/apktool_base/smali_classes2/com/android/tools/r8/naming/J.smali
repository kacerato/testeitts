.class public final Lcom/android/tools/r8/naming/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public final b:Ljava/util/HashSet;

.field public final c:Ljava/util/HashSet;

.field public final synthetic d:Lcom/android/tools/r8/naming/K;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/K;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/J;->b:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/tools/r8/naming/J;->a:Lcom/android/tools/r8/graph/E0;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/J;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v0, v0, Lcom/android/tools/r8/naming/K;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v0, v0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/naming/Z;->b:Lcom/android/tools/r8/naming/m0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/naming/W;->a(Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/J1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/naming/J1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/H0;)V

    .line 6
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->b(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Boolean;
    .locals 2

    .line 12
    iget-object p2, p2, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v1, v1, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/e0;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/naming/e0;->d(Lcom/android/tools/r8/graph/A2;)Ljava/util/Set;

    move-result-object v0

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/naming/J;->e:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v2, v2, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/J;

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 36
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/tools/r8/naming/I1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/naming/I1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v0, v0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 25
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object p3

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/naming/c0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/naming/a0;

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/naming/a0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V
    .locals 1

    .line 22
    iget-object p3, p3, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    new-instance v0, Lcom/android/tools/r8/naming/L1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/naming/L1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;)V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/tools/r8/naming/F1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/F1;-><init>(Ljava/util/function/Consumer;)V

    .line 29
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->b(Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)Ljava/lang/Boolean;
    .locals 2

    .line 11
    iget-object p3, p3, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v1, v1, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 13
    iget-object v1, v1, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 14
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/naming/Z;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/naming/b0;

    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/naming/b0;->b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 5

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 18
    iget-object v4, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v4, v4, Lcom/android/tools/r8/naming/K;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/J;

    if-eqz v3, :cond_1

    .line 19
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    .line 20
    :cond_0
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/naming/J;->b(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/J;->d:Lcom/android/tools/r8/naming/K;

    iget-object v0, v0, Lcom/android/tools/r8/naming/K;->c:Lcom/android/tools/r8/naming/Y;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/naming/Y;->a:Lcom/android/tools/r8/naming/Z;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/naming/Z;->e:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/eA;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/naming/e0;

    .line 4
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/naming/e0;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)Z
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/K1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/naming/K1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;)V

    .line 6
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->b(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/L2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/G1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/naming/G1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/naming/J;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V
    .locals 1

    .line 2
    iget-object p3, p3, Lcom/android/tools/r8/naming/J;->c:Ljava/util/HashSet;

    new-instance v0, Lcom/android/tools/r8/naming/H1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/naming/H1;-><init>(Lcom/android/tools/r8/naming/J;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/H0;)V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
