.class public final Lw3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/j$c;,
        Lw3/j$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x1

.field public static final c:I = 0x102

.field public static final d:I = 0x3

.field public static final e:I = 0x1c

.field public static final f:Ljava/lang/String; = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

.field public static final g:Ljava/lang/String; = ".androidx-startup"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([BI)I
    .locals 0

    invoke-static {p0, p1}, Lw3/j;->l([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic b([BI)I
    .locals 0

    invoke-static {p0, p1}, Lw3/j;->m([BI)I

    move-result p0

    return p0
.end method

.method public static synthetic c([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw3/j;->n([BII)V

    return-void
.end method

.method public static synthetic d([BII)V
    .locals 0

    invoke-static {p0, p1, p2}, Lw3/j;->o([BII)V

    return-void
.end method

.method public static e([BILw3/j$c;Ljava/lang/String;)Lw3/j$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "stringPoolOffset",
            "stringPool",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p3}, Lw3/j$c;->j(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    new-instance p1, Lw3/j$b;

    invoke-direct {p1, p0, p2, v0, v1}, Lw3/j$b;-><init>([BLw3/j$c;ILw3/j$a;)V

    return-object p1

    :cond_0
    invoke-static {p2}, Lw3/j$c;->a(Lw3/j$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, p3}, Lw3/j$c;->m(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p2}, Lw3/j$c;->b(Lw3/j$c;)I

    move-result p2

    invoke-static {p0, p1, p2, p3}, Lw3/j;->h([BII[B)[B

    move-result-object p0

    array-length p2, p0

    const/4 p3, 0x4

    invoke-static {p0, p3, p2}, Lw3/j;->o([BII)V

    new-instance p2, Lw3/j$b;

    invoke-static {p0, p1}, Lw3/j$c;->k([BI)Lw3/j$c;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0, v1}, Lw3/j$b;-><init>([BLw3/j$c;ILw3/j$a;)V

    return-object p2
.end method

.method public static f([BLw3/j$c;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "stringPool"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lw3/j;->l([BI)I

    move-result v0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    invoke-static {p0, v0}, Lw3/j;->l([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x4

    invoke-static {p0, v2}, Lw3/j;->m([BI)I

    move-result v2

    if-lez v2, :cond_2

    const/16 v3, 0x102

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, 0x14

    invoke-static {p0, v1}, Lw3/j;->m([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "manifest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x18

    invoke-static {p0, v1}, Lw3/j;->l([BI)I

    move-result v1

    add-int/lit8 v2, v0, 0x1a

    invoke-static {p0, v2}, Lw3/j;->l([BI)I

    move-result v2

    add-int/lit8 v3, v0, 0x1c

    invoke-static {p0, v3}, Lw3/j;->l([BI)I

    move-result v3

    add-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    mul-int v4, v1, v2

    add-int/2addr v4, v0

    add-int/lit8 v5, v4, 0x4

    invoke-static {p0, v5}, Lw3/j;->m([BI)I

    move-result v5

    invoke-virtual {p1, v5}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x10

    invoke-static {p0, v4}, Lw3/j;->m([BI)I

    move-result p0

    invoke-virtual {p1, p0}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

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

    const-string p1, "Unable to locate manifest package id"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g([BLw3/j$c;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "stringPool",
            "oldPackageId",
            "newPackageIndex",
            "oldPermission",
            "newPermissionIndex",
            "oldStartupAuthority",
            "newStartupAuthorityIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lw3/j;->l([BI)I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_a

    invoke-static {v0, v2}, Lw3/j;->l([BI)I

    move-result v5

    add-int/lit8 v6, v2, 0x4

    invoke-static {v0, v6}, Lw3/j;->m([BI)I

    move-result v6

    if-lez v6, :cond_9

    const/16 v7, 0x102

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v2, 0x14

    invoke-static {v0, v5}, Lw3/j;->m([BI)I

    move-result v5

    invoke-virtual {v1, v5}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v2, 0x18

    invoke-static {v0, v7}, Lw3/j;->l([BI)I

    move-result v7

    add-int/lit8 v8, v2, 0x1a

    invoke-static {v0, v8}, Lw3/j;->l([BI)I

    move-result v8

    add-int/lit8 v9, v2, 0x1c

    invoke-static {v0, v9}, Lw3/j;->l([BI)I

    move-result v9

    add-int/lit8 v10, v2, 0x10

    add-int/2addr v10, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_8

    mul-int v11, v7, v8

    add-int/2addr v11, v10

    add-int/lit8 v12, v11, 0x4

    invoke-static {v0, v12}, Lw3/j;->m([BI)I

    move-result v12

    invoke-virtual {v1, v12}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v11, 0x10

    invoke-static {v0, v13}, Lw3/j;->m([BI)I

    move-result v13

    invoke-virtual {v1, v13}, Lw3/j$c;->i(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "manifest"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v14, p2

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move/from16 v15, p3

    invoke-static {v0, v11, v15}, Lw3/j;->k([BII)V

    const/4 v4, 0x1

    move-object/from16 v3, p4

    :cond_0
    :goto_2
    move-object/from16 v1, p6

    :cond_1
    move/from16 v12, p7

    goto :goto_7

    :cond_2
    :goto_3
    move/from16 v15, p3

    goto :goto_4

    :cond_3
    move-object/from16 v14, p2

    goto :goto_3

    :goto_4
    const-string v3, "permission"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "uses-permission"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v3, p4

    goto :goto_6

    :cond_5
    :goto_5
    const-string v3, "name"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, p4

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v1, p5

    if-eqz v16, :cond_7

    invoke-static {v0, v11, v1}, Lw3/j;->k([BII)V

    goto :goto_2

    :cond_6
    move-object/from16 v3, p4

    move/from16 v1, p5

    :cond_7
    :goto_6
    const-string v1, "provider"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "authorities"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, p6

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move/from16 v12, p7

    invoke-static {v0, v11, v12}, Lw3/j;->k([BII)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v3, p4

    move-object/from16 v1, p6

    move/from16 v12, p7

    add-int/2addr v2, v6

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid chunk size in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v4, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to patch manifest package id"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method public static i(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manifestFile",
            "newPackageId"
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

    invoke-static {v0, p1}, Lw3/j;->j([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    return-void
.end method

.method public static j([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "newPackageId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lw3/j;->l([BI)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lw3/j;->l([BI)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lw3/j;->m([BI)I

    move-result v1

    array-length v2, p0

    if-ne v1, v2, :cond_5

    invoke-static {p0, v0}, Lw3/j;->l([BI)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {p0, v0}, Lw3/j$c;->k([BI)Lw3/j$c;

    move-result-object v1

    invoke-static {p0, v1}, Lw3/j;->f([BLw3/j$c;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".androidx-startup"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v1, p1}, Lw3/j;->e([BILw3/j$c;Ljava/lang/String;)Lw3/j$b;

    move-result-object p0

    invoke-static {p0}, Lw3/j$b;->a(Lw3/j$b;)[B

    move-result-object p1

    invoke-static {p0}, Lw3/j$b;->b(Lw3/j$b;)Lw3/j$c;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lw3/j;->e([BILw3/j$c;Ljava/lang/String;)Lw3/j$b;

    move-result-object p1

    invoke-static {p1}, Lw3/j$b;->a(Lw3/j$b;)[B

    move-result-object v1

    invoke-static {p1}, Lw3/j$b;->b(Lw3/j$b;)Lw3/j$c;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lw3/j;->e([BILw3/j$c;Ljava/lang/String;)Lw3/j$b;

    move-result-object v0

    invoke-static {v0}, Lw3/j$b;->a(Lw3/j$b;)[B

    move-result-object v1

    invoke-static {v0}, Lw3/j$b;->b(Lw3/j$b;)Lw3/j$c;

    move-result-object v3

    invoke-static {p0}, Lw3/j$b;->c(Lw3/j$b;)I

    move-result v5

    invoke-static {p1}, Lw3/j$b;->c(Lw3/j$b;)I

    move-result v7

    invoke-static {v0}, Lw3/j$b;->c(Lw3/j$b;)I

    move-result v9

    move-object v2, v1

    invoke-static/range {v2 .. v9}, Lw3/j;->g([BLw3/j$c;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    return-object v1

    :cond_3
    :goto_1
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
    :goto_2
    return-object p0
.end method

.method public static k([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xmlBytes",
            "attributeOffset",
            "stringIndex"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p2}, Lw3/j;->o([BII)V

    add-int/lit8 v0, p1, 0xc

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lw3/j;->n([BII)V

    add-int/lit8 v0, p1, 0xe

    const/4 v1, 0x0

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/4 v1, 0x3

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x10

    invoke-static {p0, p1, p2}, Lw3/j;->o([BII)V

    return-void
.end method

.method public static l([BI)I
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

.method public static m([BI)I
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

.method public static n([BII)V
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

.method public static o([BII)V
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
