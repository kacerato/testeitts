.class public final Lcom/android/tools/r8/internal/pv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/kW;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/pv0;


# instance fields
.field public final b:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/pv0;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/pv0;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    new-instance v0, Lcom/android/tools/r8/internal/nv0;

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/pv0;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    check-cast p1, Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 10

    iget-object v0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/mv0;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v4, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v9

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/Ie;->a(J)I

    move-result v7

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    goto :goto_1

    :cond_0
    iget-object v5, v4, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    goto :goto_2

    :cond_1
    iget-object v5, v4, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    goto :goto_3

    :cond_2
    iget-object v5, v4, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/m8;

    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/m8;)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_4

    :cond_3
    iget-object v4, v4, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/pv0;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v5

    add-int/2addr v5, v7

    add-int/2addr v6, v5

    goto :goto_5

    :cond_4
    add-int/2addr v2, v6

    goto/16 :goto_0

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    new-instance v2, Lcom/android/tools/r8/internal/De;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/De;-><init>(I[B)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/De;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    sget-object v0, Lcom/android/tools/r8/internal/Ar0;->b:Lcom/android/tools/r8/internal/Ar0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Br0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Br0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/pv0;Lcom/android/tools/r8/internal/Br0;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/mv0;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/tools/r8/internal/Ie;->b(IJ)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/android/tools/r8/internal/Ie;->b(II)V

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/tools/r8/internal/Ie;->a(IJ)V

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p1, v1, v4}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/m8;)V

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/pv0;

    const/4 v4, 0x3

    invoke-virtual {p1, v1, v4}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/internal/Ie;->d(II)V

    goto :goto_4

    :cond_5
    return-void
.end method
