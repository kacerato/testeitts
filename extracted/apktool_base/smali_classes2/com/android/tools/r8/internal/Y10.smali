.class public final Lcom/android/tools/r8/internal/Y10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;
.implements Lcom/android/tools/r8/internal/xy;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public transient c:[Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/t30;->a:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    sget-object v0, Lcom/android/tools/r8/internal/T6;->a:[Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean p1, p1, v2

    return p1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Z)Z
    .locals 4

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v1, p1, v0

    .line 5
    aput-boolean p2, p1, v0

    return v1

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x2

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 7
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 8
    :goto_1
    new-array v1, v1, [Z

    :goto_2
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v0, v2, v3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v0, v0, v3

    aput-boolean v0, v1, v3

    move v0, v3

    goto :goto_2

    .line 11
    :cond_3
    iput-object v2, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    aput-object p1, v0, v1

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aput-boolean p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 15
    iput v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v0, v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    invoke-static {v2, v3, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    return v0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Y10;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->b(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v1, v1, v2

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    new-instance v2, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/s30;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    instance-of p1, p1, Lcom/android/tools/r8/internal/Y10;

    if-eqz p1, :cond_0

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/W0;->c:Z

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    move v0, p1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    move v0, p1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Y10;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/internal/X10;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/X10;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    new-instance v2, Lcom/android/tools/r8/internal/W10;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/W10;-><init>(Lcom/android/tools/r8/internal/X10;)V

    iget v1, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W10;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W0;

    iget-object v5, v1, Lcom/android/tools/r8/internal/W0;->b:Ljava/lang/Object;

    if-ne p0, v5, :cond_1

    const-string v5, "(this map)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v5, "=>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/W0;->c:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/S6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    iget v2, p0, Lcom/android/tools/r8/internal/Y10;->d:I

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/S6;-><init>([ZI)V

    new-instance v1, Lcom/android/tools/r8/internal/X6;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/X6;-><init>(Lcom/android/tools/r8/internal/S6;)V

    return-object v1
.end method
