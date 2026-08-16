.class public final Lw3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/i$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x1

.field public static final c:I = 0x102

.field public static final d:I = 0x3

.field public static final e:I = -0x1

.field public static final f:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([BI)I
    .locals 0

    invoke-static {p0, p1}, Lw3/i;->i([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic b([BI)I
    .locals 0

    invoke-static {p0, p1}, Lw3/i;->j([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic c([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw3/i;->k([BII)V

    return-void
.end method

.method public static synthetic d([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw3/i;->l([BII)V

    return-void
.end method

.method public static e([BLw3/i$a;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "stringPool",
            "titleIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lw3/i;->i([BI)I

    move-result v0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    invoke-static {p0, v0}, Lw3/i;->i([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x4

    invoke-static {p0, v2}, Lw3/i;->j([BI)I

    move-result v2

    if-lez v2, :cond_2

    const/16 v3, 0x102

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x14

    invoke-static {p0, v1}, Lw3/i;->j([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lw3/i$a;->i(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x18

    invoke-static {p0, v1}, Lw3/i;->i([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x1a

    invoke-static {p0, v2}, Lw3/i;->i([BI)I

    move-result v2

    add-int/lit8 v3, v0, 0x1c

    invoke-static {p0, v3}, Lw3/i;->i([BI)I

    move-result v3

    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    mul-int v5, v4, v2

    add-int/2addr v5, v0

    add-int/lit8 v6, v5, 0x4

    invoke-static {p0, v6}, Lw3/i;->j([BI)I

    move-result v6

    invoke-virtual {p1, v6}, Lw3/i$a;->i(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 p1, v5, 0x8

    invoke-static {p0, p1, p2}, Lw3/i;->l([BII)V

    add-int/lit8 p1, v5, 0xc

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lw3/i;->k([BII)V

    add-int/lit8 p1, v5, 0xe

    aput-byte v1, p0, p1

    add-int/lit8 p1, v5, 0xf

    const/4 v0, 0x3

    aput-byte v0, p0, p1

    add-int/lit8 v5, v5, 0x10

    invoke-static {p0, v5, p2}, Lw3/i;->l([BII)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid chunk size in AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to patch application label on AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manifestFile",
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lw3/i;->g([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    return-void
.end method

.method public static g([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "title"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lw3/i;->i([BI)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lw3/i;->i([BI)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lw3/i;->j([BI)I

    move-result v3

    array-length v4, p0

    if-ne v3, v4, :cond_5

    invoke-static {p0, v1}, Lw3/i;->i([BI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-static {p0, v1}, Lw3/i$a;->k([BI)Lw3/i$a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lw3/i$a;->j(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_2

    invoke-static {v3}, Lw3/i$a;->a(Lw3/i$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, p1}, Lw3/i$a;->m(Ljava/lang/String;)[B

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v3}, Lw3/i$a;->b(Lw3/i$a;)I

    move-result p1

    invoke-static {p0, v1, p1, v0}, Lw3/i;->h([BII[B)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, v2, p1}, Lw3/i;->l([BII)V

    invoke-static {p0, v1}, Lw3/i$a;->k([BI)Lw3/i$a;

    move-result-object v3

    :cond_3
    invoke-static {p0, v3, v4}, Lw3/i;->e([BLw3/i$a;I)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing string pool on AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid binary AndroidManifest.xml size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid binary AndroidManifest.xml header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-object p0
.end method

.method public static h([BII[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "chunkOffset",
            "chunkLength",
            "replacement"
        }
    .end annotation

    array-length v0, p0

    sub-int/2addr v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p3

    invoke-static {p3, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p1, p2

    array-length p3, p3

    add-int/2addr p3, p1

    array-length v2, p0

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {p0, v1, v0, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static i([BI)I
    .locals 1
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

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static j([BI)I
    .locals 2
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

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static k([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "value"
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static l([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "value"
        }
    .end annotation

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method
