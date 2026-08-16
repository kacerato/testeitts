.class public abstract Lcom/android/tools/r8/internal/I0;
.super Lcom/android/tools/r8/internal/N0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/eW;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/N0;-><init>()V

    return-void
.end method

.method public static newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/dv0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-static {p0, v2, v1}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/nW;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dv0;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/I0;->findInitializationErrors()Ljava/util/List;

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

.method public internalMergeFrom(Lcom/android/tools/r8/internal/P0;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/P0;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/fW;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic internalMergeFrom(Lcom/android/tools/r8/internal/P0;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->internalMergeFrom(Lcom/android/tools/r8/internal/P0;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public markClean()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/zv;->a()Lcom/android/tools/r8/internal/zv;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Be;->a(ILjava/io/InputStream;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/M0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/M0;-><init>(ILjava/io/InputStream;)V

    .line 4
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/I0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/Be;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/tools/r8/internal/vv;->e:Lcom/android/tools/r8/internal/vv;

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 8

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-interface {p0}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 71
    new-instance v1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    .line 72
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/kv0;->a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v6, Lcom/android/tools/r8/internal/oW;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/internal/oW;-><init>(Lcom/android/tools/r8/internal/I0;)V

    .line 75
    invoke-interface {p0}, Lcom/android/tools/r8/internal/eW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v5

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    .line 76
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/internal/rW;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;Lcom/android/tools/r8/internal/Cl;Lcom/android/tools/r8/internal/qW;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/eW;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;

    return-object p0
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 48
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/fW;Ljava/util/Map;)Lcom/android/tools/r8/internal/I0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/fW;",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/eW;->getDescriptorForType()Lcom/android/tools/r8/internal/Cl;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 50
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ol;

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-interface {p0, v1, v2}, Lcom/android/tools/r8/internal/eW;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    goto :goto_1

    .line 55
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    .line 56
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    .line 57
    sget-object v3, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v2, v3, :cond_3

    .line 58
    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/nW;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/fW;

    .line 59
    invoke-interface {v2}, Lcom/android/tools/r8/internal/nW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 60
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/android/tools/r8/internal/eW;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v2}, Lcom/android/tools/r8/internal/fW;->newBuilderForType()Lcom/android/tools/r8/internal/eW;

    move-result-object v3

    .line 62
    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object v2

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/android/tools/r8/internal/eW;->build()Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    .line 65
    invoke-interface {p0, v1, v0}, Lcom/android/tools/r8/internal/eW;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/android/tools/r8/internal/eW;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;

    goto :goto_0

    .line 67
    :cond_4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nW;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;

    return-object p0

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/m8;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/I0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/YI;->d:[B

    .line 2
    array-length v1, p1

    .line 3
    invoke-static {p1, v0, v1, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ye;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ye;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/N0;

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Be;->a(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/YI;->d:[B

    .line 8
    array-length v1, p1

    .line 9
    invoke-static {p1, v0, v1, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/ye;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ye;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Be;->a(I)V

    return-object p0
.end method

.method public mergeFrom([B)Lcom/android/tools/r8/internal/I0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BII)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public mergeFrom([BII)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/N0;->mergeFrom([BII)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/N0;->mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/tools/r8/internal/zv;",
            ")",
            "Lcom/android/tools/r8/internal/I0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/tools/r8/internal/I0;

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom([B)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BII)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom([B)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BII)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/eW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom([B)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BII)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/I0;->mergeFrom([BLcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
.end method

.method public toString()Ljava/lang/String;
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
