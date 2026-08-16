.class public Lorg/openjdk/tools/javac/jvm/ModuleNameReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
    }
.end annotation


# static fields
.field private static final INITIAL_BUFFER_SIZE:I = 0xfff0


# instance fields
.field private bp:I

.field private buf:[B

.field private poolIdx:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xfff0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    return-void
.end method

.method private static ensureCapacity([BI)[B
    .locals 2

    array-length v0, p0

    if-gt v0, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    new-array p1, p1, [B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private static readInputStream([BLjava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->ensureCapacity([BI)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->ensureCapacity([BI)[B

    move-result-object p0

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method


# virtual methods
.method public checkZero(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for module: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChar(I)C
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    int-to-char p1, v1

    return p1
.end method

.method public getModuleName(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->poolIdx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->getChar(I)C

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->getUtf8Value(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad module name at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUtf8Value(IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->poolIdx:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->getChar(I)C

    move-result p1

    add-int/lit8 v0, v0, 0x3

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    invoke-static {v1, v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassFile;->internalize([BII)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    invoke-direct {p2, v1, v0, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p2

    :cond_1
    new-instance p2, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad name at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public indexPool()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->poolIdx:[I

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->poolIdx:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aput v3, v1, v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    const-string v1, "malformed constant pool"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    goto :goto_1

    :pswitch_2
    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    goto :goto_1

    :pswitch_3
    add-int/lit8 v3, v3, 0x9

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_4
    add-int/lit8 v3, v3, 0x5

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public nextChar()C
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    int-to-char v0, v3

    return v0
.end method

.method public nextInt()I
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    return v3
.end method

.method public readModuleName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    .line 12
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->readInputStream([BLjava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->buf:[B

    .line 13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextInt()I

    move-result p1

    const v1, -0x35014542    # -8346975.0f

    if-ne p1, v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    .line 15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const/16 v1, 0x35

    if-lt p1, v1, :cond_3

    .line 16
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->indexPool()V

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const v1, 0x8000

    if-ne p1, v1, :cond_2

    .line 18
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    .line 19
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const-string v1, "super_class"

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->checkZero(ILjava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const-string v1, "interface_count"

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->checkZero(ILjava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const-string v1, "fields_count"

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->checkZero(ILjava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    const-string v1, "methods_count"

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->checkZero(ILjava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 24
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result v2

    .line 25
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextInt()I

    move-result v3

    .line 26
    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->getUtf8Value(IZ)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Module"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-le v3, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->nextChar()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->getModuleName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    iget v2, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->bp:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    const-string v0, "no Module attribute"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid access flags for module: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_3
    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad major version number for module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_4
    new-instance p1, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;

    const-string v0, "illegal.start.of.class.file"

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->readModuleName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->openInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->readModuleName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
