.class public final Lcom/android/tools/r8/internal/Y50;
.super Lcom/android/tools/r8/internal/X50;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/X50;-><init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/Y50;->e:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/m31;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m31;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/shaking/N;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/D5;

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->asClass()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 4
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 5
    iget-object p2, p2, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->c()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 9
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 12
    iget-object p2, p2, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 13
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/Y50;->e:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/D5;->b()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 16
    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 18
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
