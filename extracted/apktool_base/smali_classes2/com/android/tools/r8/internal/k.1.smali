.class public abstract Lcom/android/tools/r8/internal/k;
.super Lcom/android/tools/r8/internal/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/k;->d(Z)Z

    move-result p1

    return p1
.end method

.method public abstract d(Z)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/V6;->iterator()Lcom/android/tools/r8/internal/a7;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/a7;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_1

    :cond_0
    const/16 v0, 0x4d5

    :goto_1
    add-int/2addr v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    return v2
.end method
