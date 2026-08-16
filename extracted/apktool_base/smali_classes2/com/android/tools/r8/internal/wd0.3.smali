.class public final Lcom/android/tools/r8/internal/wd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/Ad0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ad0;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ad0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-object v0, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ad0;->c:[J

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-wide v2, v0, v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ad0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ad0;->c:[J

    iget v1, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ad0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ad0;->c:[J

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-wide v2, v1, v2

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long v1, v2, v4

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ad0;->c:[J

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-wide v3, p1, v2

    aput-wide v0, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ad0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wd0;->c:Lcom/android/tools/r8/internal/Ad0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ad0;->c:[J

    iget v2, p0, Lcom/android/tools/r8/internal/wd0;->b:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
