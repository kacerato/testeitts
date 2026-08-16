.class public final Lcom/android/tools/r8/kotlin/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:I

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->L0:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v2;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/tools/r8/kotlin/X;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/kotlin/X;->a:I

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Kl0;Lcom/android/tools/r8/graph/v2;)V
    .locals 3

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 21
    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 26
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/kotlin/X;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->u0()Ljava/lang/Iterable;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/kotlin/x1;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/kotlin/x1;-><init>(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;)V

    .line 28
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 29
    iget-object p2, p2, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->a5:Lcom/android/tools/r8/kotlin/g;

    iget-object p1, p1, Lcom/android/tools/r8/kotlin/g;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;)Z
    .locals 5

    .line 4
    iget v0, p0, Lcom/android/tools/r8/kotlin/X;->a:I

    iget v1, p1, Lcom/android/tools/r8/kotlin/X;->a:I

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    if-eqz v0, :cond_9

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/kotlin/X;->c:Z

    if-nez v1, :cond_2

    iget-object v2, p1, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    .line 9
    const-string v2, "set1"

    if-eqz v0, :cond_8

    .line 10
    const-string v3, "set2"

    if-eqz v1, :cond_7

    .line 11
    new-instance v4, Lcom/android/tools/r8/internal/El0;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/internal/El0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 13
    iget-object p1, p1, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/X;->b:Ljava/util/Set;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/El0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/El0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 15
    new-instance p1, Lcom/android/tools/r8/kotlin/y1;

    invoke-direct {p1, p0, p2, v1}, Lcom/android/tools/r8/kotlin/y1;-><init>(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Kl0;)V

    invoke-interface {v4, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    const/4 p1, 0x1

    return p1
.end method
