.class public abstract Lcom/android/tools/r8/internal/V0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/LY;


# instance fields
.field public transient b:Ljava/util/Set;

.field public transient c:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    const-string v1, "count"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 4
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x0

    if-lez v1, :cond_0

    .line 5
    invoke-interface {p0, p1, v1}, Lcom/android/tools/r8/internal/LY;->a(Ljava/lang/Object;I)I

    return v0

    :cond_0
    if-gez v1, :cond_1

    neg-int v1, v1

    .line 6
    invoke-interface {p0, v1, p1}, Lcom/android/tools/r8/internal/LY;->b(ILjava/lang/Object;)I

    :cond_1
    return v0
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a()Ljava/util/Set;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/T0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/T0;-><init>(Lcom/android/tools/r8/internal/V0;)V

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Z
    .locals 2

    .line 7
    const-string v0, "oldCount"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 8
    const-string v0, "newCount"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    .line 9
    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 10
    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/LY;->a(Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/V0;->a(Ljava/lang/Object;I)I

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/LY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/QY;->a(Lcom/android/tools/r8/internal/V0;Lcom/android/tools/r8/internal/LY;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/U0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/U0;-><init>(Lcom/android/tools/r8/internal/V0;)V

    return-object v0
.end method

.method public abstract c()I
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/LY;->b(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract d()Ljava/util/Iterator;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->b()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/V0;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/QY;->a(Lcom/android/tools/r8/internal/LY;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract g()Ljava/util/Iterator;
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/tools/r8/internal/LY;->b(ILjava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/LY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/LY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object p1

    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->w()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V0;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/V0;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
