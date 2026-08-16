.class public abstract Lcom/android/tools/r8/internal/K0;
.super Lcom/android/tools/r8/internal/P0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fW;


# instance fields
.field protected memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/P0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v2

    iget-object v3, v2, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v3

    instance-of v4, v3, Lcom/android/tools/r8/internal/Ol;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    iget-object v4, v2, Lcom/android/tools/r8/internal/Cl;->d:Lcom/android/tools/r8/internal/Pl;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/android/tools/r8/internal/Cl;->c:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".value"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/android/tools/r8/internal/El;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/Ql;

    move-result-object v2

    instance-of v4, v2, Lcom/android/tools/r8/internal/Ol;

    if-eqz v4, :cond_2

    move-object v6, v2

    check-cast v6, Lcom/android/tools/r8/internal/Ol;

    :cond_2
    invoke-interface {v1, v6}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/tools/r8/internal/Kl;

    if-eqz v4, :cond_3

    check-cast v2, Lcom/android/tools/r8/internal/Kl;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget v2, v2, Lcom/android/tools/r8/internal/tk;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v1, v6}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/tools/r8/internal/Kl;

    if-eqz v4, :cond_4

    check-cast v2, Lcom/android/tools/r8/internal/Kl;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget v2, v2, Lcom/android/tools/r8/internal/tk;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    invoke-interface {v1, v3}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public static compareFields(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    sget-object v6, Lcom/android/tools/r8/internal/Nl;->f:Lcom/android/tools/r8/internal/Nl;

    if-ne v5, v6, :cond_c

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    check-cast v3, Ljava/util/List;

    check-cast v4, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v5, [B

    if-eqz v7, :cond_4

    instance-of v8, v6, [B

    if-eqz v8, :cond_4

    check-cast v5, [B

    check-cast v6, [B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    check-cast v5, [B

    sget-object v7, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    array-length v7, v5

    array-length v8, v5

    invoke-static {v2, v7, v8}, Lcom/android/tools/r8/internal/m8;->a(III)I

    new-instance v8, Lcom/android/tools/r8/internal/i8;

    sget-object v9, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    invoke-interface {v9, v5, v2, v7}, Lcom/android/tools/r8/internal/g8;->a([BII)[B

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    goto :goto_1

    :cond_5
    move-object v8, v5

    check-cast v8, Lcom/android/tools/r8/internal/m8;

    :goto_1
    instance-of v5, v6, [B

    if-eqz v5, :cond_6

    check-cast v6, [B

    sget-object v5, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    array-length v5, v6

    array-length v7, v6

    invoke-static {v2, v5, v7}, Lcom/android/tools/r8/internal/m8;->a(III)I

    new-instance v7, Lcom/android/tools/r8/internal/i8;

    sget-object v9, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    invoke-interface {v9, v6, v2, v5}, Lcom/android/tools/r8/internal/g8;->a([BII)[B

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    goto :goto_2

    :cond_6
    move-object v7, v6

    check-cast v7, Lcom/android/tools/r8/internal/m8;

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/m8;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    if-nez v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    instance-of v1, v3, [B

    if-eqz v1, :cond_9

    instance-of v5, v4, [B

    if-eqz v5, :cond_9

    check-cast v3, [B

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    check-cast v3, [B

    sget-object v1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    array-length v1, v3

    array-length v5, v3

    invoke-static {v2, v1, v5}, Lcom/android/tools/r8/internal/m8;->a(III)I

    new-instance v5, Lcom/android/tools/r8/internal/i8;

    sget-object v6, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    invoke-interface {v6, v3, v2, v1}, Lcom/android/tools/r8/internal/g8;->a([BII)[B

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    goto :goto_4

    :cond_a
    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/internal/m8;

    :goto_4
    instance-of v1, v4, [B

    if-eqz v1, :cond_b

    check-cast v4, [B

    sget-object v1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    array-length v1, v4

    array-length v3, v4

    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/m8;->a(III)I

    new-instance v3, Lcom/android/tools/r8/internal/i8;

    sget-object v6, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    invoke-interface {v6, v4, v2, v1}, Lcom/android/tools/r8/internal/g8;->a([BII)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    goto :goto_5

    :cond_b
    move-object v3, v4

    check-cast v3, Lcom/android/tools/r8/internal/m8;

    :goto_5
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/m8;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_6
    if-nez v1, :cond_1

    return v2

    :cond_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/android/tools/r8/internal/K0;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/tools/r8/internal/K0;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/OU;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static hashBoolean(Z)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static hashEnum(Lcom/android/tools/r8/internal/QI;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p0

    return p0
.end method

.method public static hashEnumList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/r8/internal/QI;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/QI;

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/android/tools/r8/internal/K0;->hashEnum(Lcom/android/tools/r8/internal/QI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static hashFields(ILjava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ol;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p0, p0, 0x25

    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->d:I

    add-int/2addr p0, v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->i()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/android/tools/r8/internal/K0;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/android/tools/r8/internal/OU;->c:I

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, [B

    if-eqz v6, :cond_1

    check-cast v5, [B

    sget-object v6, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    array-length v6, v5

    move v7, v1

    move v8, v6

    :goto_2
    if-ge v7, v6, :cond_0

    mul-int/lit8 v8, v8, 0x1f

    aget-byte v9, v5, v7

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    if-nez v8, :cond_2

    move v8, v3

    goto :goto_3

    :cond_1
    instance-of v6, v5, Lcom/android/tools/r8/internal/QI;

    if-nez v6, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :cond_2
    :goto_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, [B

    if-eqz v5, :cond_4

    check-cast v4, [B

    sget-object v5, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    array-length v5, v4

    move v6, v1

    move v7, v5

    :goto_4
    if-ge v6, v5, :cond_3

    mul-int/lit8 v7, v7, 0x1f

    aget-byte v9, v4, v6

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-nez v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_4
    instance-of v5, v4, Lcom/android/tools/r8/internal/QI;

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_5
    :goto_5
    xor-int v4, v8, v7

    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_8
    add-int/2addr p0, v2

    goto/16 :goto_0

    :cond_9
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    sget-object v4, Lcom/android/tools/r8/internal/Nl;->g:Lcom/android/tools/r8/internal/Nl;

    if-eq v2, v4, :cond_a

    mul-int/lit8 p0, p0, 0x35

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr p0, v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_c

    check-cast v0, Ljava/util/List;

    mul-int/lit8 p0, p0, 0x35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/QI;

    mul-int/lit8 v3, v3, 0x1f

    invoke-interface {v1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_7

    :cond_b
    add-int/2addr p0, v3

    goto/16 :goto_0

    :cond_c
    mul-int/lit8 p0, p0, 0x35

    check-cast v0, Lcom/android/tools/r8/internal/QI;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result v0

    goto :goto_6

    :cond_d
    return p0
.end method

.method public static hashLong(J)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/fW;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/K0;->compareFields(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/nW;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/K0;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoizedSerializedSize()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/K0;->hashFields(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v1

    :cond_0
    return v0
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/J0;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder is not supported for this type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newUninitializedMessageException()Lcom/android/tools/r8/internal/dv0;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    return-object v0
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Cr0;->a:Ljava/util/logging/Logger;

    sget-object v0, Lcom/android/tools/r8/internal/Ar0;->b:Lcom/android/tools/r8/internal/Ar0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Br0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Br0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/tools/r8/internal/Ar0;->a(Lcom/android/tools/r8/internal/nW;Lcom/android/tools/r8/internal/Br0;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
