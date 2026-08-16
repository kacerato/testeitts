.class public final Lcom/android/tools/r8/internal/bC;
.super Lcom/android/tools/r8/internal/QC;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final transient d:Ljava/util/EnumSet;

.field public transient e:I


# direct methods
.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/QC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/bC;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/bC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/bC;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/bC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/bC;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/bC;->e:I

    :cond_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v1, v0, Lcom/android/tools/r8/internal/Av0;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/android/tools/r8/internal/Av0;

    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/yK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/yK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v1, v0, Lcom/android/tools/r8/internal/Av0;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/android/tools/r8/internal/Av0;

    return-object v0

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/yK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/yK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bC;->d:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
