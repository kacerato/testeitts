.class public final Lcom/android/tools/r8/internal/md0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/hd0;
.implements Ljava/util/Map$Entry;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qd0;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/md0;->b:I

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget-object v0, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v0, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getIntValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v1, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v1, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v1, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v2, v0, v1

    aput p1, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qd0;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/md0;->c:Lcom/android/tools/r8/internal/qd0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/qd0;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/md0;->b:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
