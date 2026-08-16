.class public final Lcom/android/tools/r8/internal/k30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/o30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/o30;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/k30;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v0, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v2, v2, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v2, v0, v1

    aput-object p1, v0, v1

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/o30;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/k30;->c:Lcom/android/tools/r8/internal/o30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/o30;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/k30;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
