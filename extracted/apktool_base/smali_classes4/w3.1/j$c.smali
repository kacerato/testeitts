.class public final Lw3/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final d:I = 0x100


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "flags",
            "chunkSize",
            "strings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/j$c;->a:I

    iput p2, p0, Lw3/j$c;->b:I

    iput-object p3, p0, Lw3/j$c;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lw3/j$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw3/j$c;->c:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lw3/j$c;)I
    .locals 0

    iget p0, p0, Lw3/j$c;->b:I

    return p0
.end method

.method public static c([BI)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset"
        }
    .end annotation

    invoke-static {p0, p1}, Lw3/j;->a([BI)I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x2

    if-nez v1, :cond_0

    filled-new-array {v0, v2}, [I

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr p1, v2

    invoke-static {p0, p1}, Lw3/j;->a([BI)I

    move-result p0

    and-int/lit16 p1, v0, 0x7fff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    const/4 p1, 0x4

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static d([BI)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset"
        }
    .end annotation

    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-nez v2, :cond_0

    filled-new-array {v1, v3}, [I

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 p1, v0, 0x7f

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    const/4 p1, 0x2

    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Lw3/j$c;->f(I)[B

    move-result-object p0

    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v2, v0

    invoke-static {v0, v3, v1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static f(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x7fff

    if-gt p0, v3, :cond_0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    new-array v2, v2, [B

    aput-byte v3, v2, v1

    aput-byte p0, v2, v0

    return-object v2

    :cond_0
    ushr-int/lit8 v4, p0, 0x10

    and-int/2addr v3, v4

    const v4, 0x8000

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v4, p0

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x4

    new-array v6, v6, [B

    aput-byte v5, v6, v1

    aput-byte v3, v6, v0

    aput-byte p0, v6, v2

    const/4 p0, 0x3

    aput-byte v4, v6, p0

    return-object v6
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Lw3/j$c;->h(I)[B

    move-result-object p0

    array-length v1, v0

    invoke-static {v1}, Lw3/j$c;->h(I)[B

    move-result-object v1

    array-length v2, p0

    array-length v3, v1

    add-int/2addr v2, v3

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v3, v1

    invoke-static {v1, v4, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p0, v1

    array-length v1, v0

    invoke-static {v0, v4, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static h(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_0

    int-to-byte p0, p0

    new-array v1, v1, [B

    aput-byte p0, v1, v0

    return-object v1

    :cond_0
    ushr-int/lit8 v3, p0, 0x8

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x2

    new-array v3, v3, [B

    aput-byte v2, v3, v0

    aput-byte p0, v3, v1

    return-object v3
.end method

.method public static k([BI)Lw3/j$c;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0}, Lw3/j;->a([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lw3/j;->b([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lw3/j;->b([BI)I

    move-result v2

    add-int/lit8 v3, p1, 0xc

    invoke-static {p0, v3}, Lw3/j;->b([BI)I

    move-result v3

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lw3/j;->b([BI)I

    move-result v4

    add-int/lit8 v5, p1, 0x14

    invoke-static {p0, v5}, Lw3/j;->b([BI)I

    move-result v5

    const/16 v6, 0x1c

    if-ne v0, v6, :cond_3

    if-nez v3, :cond_2

    and-int/lit16 v3, v4, 0x100

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    add-int/2addr v0, p1

    add-int/2addr p1, v5

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    :goto_1
    if-ge v6, v2, :cond_1

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v0

    invoke-static {p0, v7}, Lw3/j;->b([BI)I

    move-result v7

    add-int/2addr v7, p1

    invoke-static {p0, v7, v3}, Lw3/j$c;->l([BIZ)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lw3/j$c;

    invoke-direct {p0, v4, v1, v5}, Lw3/j$c;-><init>(IILjava/util/List;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported styled string pool in AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported string pool header size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([BIZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "utf8"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lw3/j$c;->d([BI)[I

    move-result-object p2

    aget v2, p2, v1

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lw3/j$c;->d([BI)[I

    move-result-object v2

    aget p2, p2, v1

    add-int/2addr p1, p2

    aget p2, v2, v1

    add-int/2addr p1, p2

    new-instance p2, Ljava/lang/String;

    aget v0, v2, v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p2

    :cond_0
    invoke-static {p0, p1}, Lw3/j$c;->c([BI)[I

    move-result-object p2

    aget v1, p2, v1

    add-int/2addr p1, v1

    new-instance v1, Ljava/lang/String;

    aget p2, p2, v0

    mul-int/lit8 p2, p2, 0x2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method


# virtual methods
.method public i(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw3/j$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/j$c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lw3/j$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lw3/j$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public m(Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lw3/j$c;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lw3/j$c;->a:I

    and-int/lit16 p1, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {v6}, Lw3/j$c;->g(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-static {v6}, Lw3/j$c;->e(Ljava/lang/String;)[B

    move-result-object v6

    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_2
    rem-int/lit8 p1, v5, 0x4

    const/4 v4, 0x4

    rsub-int/lit8 p1, p1, 0x4

    rem-int/2addr p1, v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v6, v4

    const/16 v7, 0x1c

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, p1

    new-array p1, v5, [B

    invoke-static {p1, v2, v1}, Lw3/j;->c([BII)V

    const/4 v1, 0x2

    invoke-static {p1, v1, v7}, Lw3/j;->c([BII)V

    invoke-static {p1, v4, v5}, Lw3/j;->d([BII)V

    const/16 v1, 0x8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v1, v0}, Lw3/j;->d([BII)V

    const/16 v0, 0xc

    invoke-static {p1, v0, v2}, Lw3/j;->d([BII)V

    const/16 v0, 0x10

    iget v1, p0, Lw3/j$c;->a:I

    invoke-static {p1, v0, v1}, Lw3/j;->d([BII)V

    const/16 v0, 0x14

    invoke-static {p1, v0, v6}, Lw3/j;->d([BII)V

    const/16 v0, 0x18

    invoke-static {p1, v0, v2}, Lw3/j;->d([BII)V

    move v0, v2

    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v7

    invoke-static {p1, v5, v1}, Lw3/j;->d([BII)V

    add-int v5, v6, v1

    array-length v8, v4

    invoke-static {v4, v2, p1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-object p1
.end method
