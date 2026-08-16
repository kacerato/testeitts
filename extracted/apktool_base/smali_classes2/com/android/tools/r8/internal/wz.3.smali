.class public abstract Lcom/android/tools/r8/internal/wz;
.super Lcom/android/tools/r8/internal/K0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/android/tools/r8/internal/pv0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/K0;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fz;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/K0;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fz;->getUnknownFields()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-void
.end method

.method private a(Z)Ljava/util/TreeMap;
    .locals 6

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Cl;->g:[Lcom/android/tools/r8/internal/Ol;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Ol;

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    if-eqz v4, :cond_1

    iget v3, v4, Lcom/android/tools/r8/internal/Sl;->g:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/wz;->hasOneof(Lcom/android/tools/r8/internal/Sl;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/wz;->getOneofFieldDescriptor(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/Ol;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/wz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/wz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object v4, v3, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v4, v4, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v5, Lcom/android/tools/r8/internal/Ml;->h:Lcom/android/tools/r8/internal/Ml;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/wz;->getFieldRaw(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/wz;->getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static access$500(Lcom/android/tools/r8/internal/sv;)Lcom/android/tools/r8/internal/rv;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic access$800(Lcom/android/tools/r8/internal/wz;Z)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;->a(Z)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public static canUseUnsafe()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/tools/r8/internal/bw0;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/tools/r8/internal/Ie;->a(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/m8;

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/m8;)I

    move-result p0

    return p0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->a(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/android/tools/r8/internal/m8;

    sget-object v0, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static emptyBooleanList()Lcom/android/tools/r8/internal/NI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Q6;->e:Lcom/android/tools/r8/internal/Q6;

    return-object v0
.end method

.method public static emptyDoubleList()Lcom/android/tools/r8/internal/OI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ft;->e:Lcom/android/tools/r8/internal/ft;

    return-object v0
.end method

.method public static emptyFloatList()Lcom/android/tools/r8/internal/SI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Bx;->e:Lcom/android/tools/r8/internal/Bx;

    return-object v0
.end method

.method public static emptyIntList()Lcom/android/tools/r8/internal/TI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/DH;->e:Lcom/android/tools/r8/internal/DH;

    return-object v0
.end method

.method public static emptyLongList()Lcom/android/tools/r8/internal/WI;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/hU;->e:Lcom/android/tools/r8/internal/hU;

    return-object v0
.end method

.method public static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->setAlwaysUseFieldBuildersForTesting(Z)V

    return-void
.end method

.method public static isStringEmpty(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static mutableCopy(Lcom/android/tools/r8/internal/NI;)Lcom/android/tools/r8/internal/NI;
    .locals 1

    .line 13
    check-cast p0, Lcom/android/tools/r8/internal/Q6;

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/Q6;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Q6;->j(I)Lcom/android/tools/r8/internal/Q6;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/android/tools/r8/internal/OI;)Lcom/android/tools/r8/internal/OI;
    .locals 1

    .line 10
    check-cast p0, Lcom/android/tools/r8/internal/ft;

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/ft;->j(I)Lcom/android/tools/r8/internal/ft;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/android/tools/r8/internal/SI;)Lcom/android/tools/r8/internal/SI;
    .locals 1

    .line 7
    check-cast p0, Lcom/android/tools/r8/internal/Bx;

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/Bx;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Bx;->j(I)Lcom/android/tools/r8/internal/Bx;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/android/tools/r8/internal/TI;)Lcom/android/tools/r8/internal/TI;
    .locals 1

    .line 1
    check-cast p0, Lcom/android/tools/r8/internal/DH;

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/DH;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/DH;->l(I)Lcom/android/tools/r8/internal/DH;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Lcom/android/tools/r8/internal/WI;)Lcom/android/tools/r8/internal/WI;
    .locals 1

    .line 4
    check-cast p0, Lcom/android/tools/r8/internal/hU;

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/hU;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/hU;->k(I)Lcom/android/tools/r8/internal/hU;

    move-result-object p0

    return-object p0
.end method

.method public static newBooleanList()Lcom/android/tools/r8/internal/NI;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Q6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Q6;-><init>()V

    return-object v0
.end method

.method public static newDoubleList()Lcom/android/tools/r8/internal/OI;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ft;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ft;-><init>()V

    return-object v0
.end method

.method public static newFloatList()Lcom/android/tools/r8/internal/SI;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Bx;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Bx;-><init>()V

    return-object v0
.end method

.method public static newIntList()Lcom/android/tools/r8/internal/TI;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/DH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DH;-><init>()V

    return-object v0
.end method

.method public static newLongList()Lcom/android/tools/r8/internal/WI;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/hU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hU;-><init>()V

    return-object v0
.end method

.method public static parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/z50;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseDelimitedWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Lcom/android/tools/r8/internal/Be;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/Be;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Lcom/android/tools/r8/internal/Be;",
            "Lcom/android/tools/r8/internal/zv;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parseFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static parseWithIOException(Lcom/android/tools/r8/internal/z50;Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/fW;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/android/tools/r8/internal/fW;",
            ">(",
            "Lcom/android/tools/r8/internal/z50;",
            "Ljava/io/InputStream;",
            "Lcom/android/tools/r8/internal/zv;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/z50;->parseFrom(Ljava/io/InputStream;Lcom/android/tools/r8/internal/zv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/fW;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static serializeBooleanMapTo(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/NU;Lcom/android/tools/r8/internal/MU;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/r8/internal/Ie;",
            "Lcom/android/tools/r8/internal/NU;",
            "Lcom/android/tools/r8/internal/MU;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static serializeIntegerMapTo(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/NU;Lcom/android/tools/r8/internal/MU;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/r8/internal/Ie;",
            "Lcom/android/tools/r8/internal/NU;",
            "Lcom/android/tools/r8/internal/MU;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static serializeLongMapTo(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/NU;Lcom/android/tools/r8/internal/MU;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/r8/internal/Ie;",
            "Lcom/android/tools/r8/internal/NU;",
            "Lcom/android/tools/r8/internal/MU;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static serializeStringMapTo(Lcom/android/tools/r8/internal/Ie;Lcom/android/tools/r8/internal/NU;Lcom/android/tools/r8/internal/MU;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/tools/r8/internal/Ie;",
            "Lcom/android/tools/r8/internal/NU;",
            "Lcom/android/tools/r8/internal/MU;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public static setAlwaysUseFieldBuildersForTesting(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method public static writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/m8;)V

    return-void
.end method

.method public static writeStringNoTag(Lcom/android/tools/r8/internal/Ie;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ie;->a(Lcom/android/tools/r8/internal/m8;)V

    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/wz;->a(Z)Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/tools/r8/internal/Ol;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/wz;->a(Z)Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/uz;->a:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldRaw(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->a(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/Ol;
    .locals 7

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/QI;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result v0

    if-lez v0, :cond_4

    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->a:Lcom/android/tools/r8/internal/Cl;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v3, p1

    sget-object v4, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    sget-object v4, Lcom/android/tools/r8/internal/Ul;->a:Ljava/util/logging/Logger;

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-gt v2, v3, :cond_4

    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    aget-object v5, p1, v4

    iget-object v6, v5, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v6, v6, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ge v0, v6, :cond_2

    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_2
    if-le v0, v6, :cond_3

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v5

    :cond_4
    return-object v1
.end method

.method public getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Lcom/android/tools/r8/internal/jz;->a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->c(Lcom/android/tools/r8/internal/wz;)I

    move-result p1

    return p1
.end method

.method public hasField(Lcom/android/tools/r8/internal/Ol;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Ol;)Lcom/android/tools/r8/internal/jz;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/jz;->b(Lcom/android/tools/r8/internal/wz;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/android/tools/r8/internal/Sl;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uz;->a(Lcom/android/tools/r8/internal/uz;Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/kz;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/kz;->e:Lcom/android/tools/r8/internal/Ol;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wz;->hasField(Lcom/android/tools/r8/internal/Ol;)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/kz;->b:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
.end method

.method public internalGetMapField(I)Lcom/android/tools/r8/internal/NU;
    .locals 2

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No map fields found in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeExtensionsImmutable()V
    .locals 0

    return-void
.end method

.method public mergeFromAndMakeImmutableInternal(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/internal/MJ;
        }
    .end annotation

    sget-object p2, Lcom/android/tools/r8/internal/Sa0;->c:Lcom/android/tools/r8/internal/Sa0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    iget-object v1, p2, Lcom/android/tools/r8/internal/Sa0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/hl0;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object p1, p2, Lcom/android/tools/r8/internal/Sa0;->a:Lcom/android/tools/r8/internal/JU;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/tools/r8/internal/il0;->a:Ljava/lang/Class;

    const-class v1, Lcom/android/tools/r8/internal/Uy;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/JU;->a:Lcom/android/tools/r8/internal/IU;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/IU;->a(Ljava/lang/Class;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object p2, p1, Lcom/android/tools/r8/internal/Be;->b:Lcom/android/tools/r8/internal/Ce;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/android/tools/r8/internal/Ce;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Ce;-><init>(Lcom/android/tools/r8/internal/Be;)V

    :goto_1
    throw v2
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_2
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p2

    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    throw p1
.end method

.method public newBuilderForType(Lcom/android/tools/r8/internal/J0;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/dz;-><init>(Lcom/android/tools/r8/internal/J0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/wz;->newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    return-object p1
.end method

.method public abstract newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
.end method

.method public parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p4, p1}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/Be;)Z

    move-result p1

    return p1
.end method

.method public parseUnknownFieldProto3(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result p1

    return p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/Xy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xy;-><init>(Lcom/android/tools/r8/internal/wz;)V

    return-object v0
.end method
