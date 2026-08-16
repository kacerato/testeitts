.class public abstract Lcom/android/tools/r8/internal/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/kW;


# instance fields
.field protected memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return-void
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
    .locals 0
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
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/N0;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static checkByteStringIsUtf8(Lcom/android/tools/r8/internal/m8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getMemoizedSerializedSize()I
.end method

.method public getSerializedSize(Lcom/android/tools/r8/internal/hl0;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/P0;->getMemoizedSerializedSize()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public abstract newUninitializedMessageException()Lcom/android/tools/r8/internal/dv0;
.end method

.method public toByteArray()[B
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    sget-object v2, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    new-instance v2, Lcom/android/tools/r8/internal/De;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/De;-><init>(I[B)V

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

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

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Lcom/android/tools/r8/internal/m8;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    new-array v1, v0, [B

    sget-object v2, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    new-instance v2, Lcom/android/tools/r8/internal/De;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/De;-><init>(I[B)V

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/De;->a()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/i8;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Serializing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/Ge;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/Ge;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Ge;->g(I)V

    invoke-interface {p0, v2}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    iget p1, v2, Lcom/android/tools/r8/internal/Ge;->e:I

    if-lez p1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ge;->a()V

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    sget-object v1, Lcom/android/tools/r8/internal/Ie;->a:Ljava/util/logging/Logger;

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/Ge;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Ge;-><init>(Ljava/io/OutputStream;I)V

    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    iget p1, v1, Lcom/android/tools/r8/internal/Ge;->e:I

    if-lez p1, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ge;->a()V

    :cond_1
    return-void
.end method
