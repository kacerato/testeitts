.class public abstract Lcom/android/tools/r8/internal/N0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jW;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/N0;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p0, Lcom/android/tools/r8/internal/zR;

    const-string v1, " is null."

    const-string v2, "Element at index "

    if-eqz v0, :cond_3

    .line 5
    check-cast p0, Lcom/android/tools/r8/internal/zR;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/zR;->f()Ljava/util/List;

    move-result-object p0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/zR;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lt v1, p1, :cond_0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    instance-of v4, v3, Lcom/android/tools/r8/internal/m8;

    if-eqz v4, :cond_2

    .line 14
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    invoke-interface {v0, v3}, Lcom/android/tools/r8/internal/zR;->a(Lcom/android/tools/r8/internal/m8;)V

    goto :goto_0

    .line 15
    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p0, Lcom/android/tools/r8/internal/B70;

    if-eqz v0, :cond_4

    .line 17
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 18
    :cond_4
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 19
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 20
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-lt v1, v0, :cond_6

    .line 24
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-void
.end method

.method public static newUninitializedMessageException(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/dv0;
    .locals 0

    new-instance p0, Lcom/android/tools/r8/internal/dv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dv0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract internalMergeFrom(Lcom/android/tools/r8/internal/P0;)Lcom/android/tools/r8/internal/N0;
.end method

.method public abstract mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/N0;
.end method

.method public abstract mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/N0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/kW;",
            ")",
            "Lcom/android/tools/r8/internal/N0;"
        }
    .end annotation

    .line 22
    invoke-interface {p0}, Lcom/android/tools/r8/internal/mW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lcom/android/tools/r8/internal/P0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N0;->internalMergeFrom(Lcom/android/tools/r8/internal/P0;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/m8;)Lcom/android/tools/r8/internal/N0;
    .locals 2

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->b()Lcom/android/tools/r8/internal/Be;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/N0;

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 15
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/N0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :goto_1
    throw p1
.end method

.method public mergeFrom(Lcom/android/tools/r8/internal/m8;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 1

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->b()Lcom/android/tools/r8/internal/Be;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Be;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 20
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "ByteString"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/N0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 21
    :goto_1
    throw p1
.end method

.method public mergeFrom([BII)Lcom/android/tools/r8/internal/N0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/N0;

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xe;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 4
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/N0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :goto_1
    throw p1
.end method

.method public mergeFrom([BIILcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/Be;->a([BIIZ)Lcom/android/tools/r8/internal/xe;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p4}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/xe;->a(I)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 9
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lcom/android/tools/r8/internal/N0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :goto_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/N0;->mergeFrom(Lcom/android/tools/r8/internal/kW;)Lcom/android/tools/r8/internal/N0;

    move-result-object p1

    return-object p1
.end method
