.class public final Lcom/android/tools/r8/internal/qg;
.super Lcom/android/tools/r8/internal/p;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/LQ;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/p;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/p;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/p;
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/qg;->b:Z

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Ot;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/p;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_1
    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p;->a()Lcom/android/tools/r8/internal/qg;

    move-result-object p1

    .line 12
    iget-object p2, p1, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/p;
    .locals 4

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/internal/qg;->b:Z

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/qg;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qg;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/g1;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3, v3}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    const/4 v3, 0x0

    .line 21
    invoke-virtual {p2, v3, v2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v3, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/l1;->c(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    if-nez v2, :cond_4

    .line 25
    sget-boolean v2, Lcom/android/tools/r8/internal/qg;->b:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_4
    iget-object v3, v0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/internal/qg;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/internal/LQ;
    .locals 0

    return-object p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/qg;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/qg;

    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qg;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
