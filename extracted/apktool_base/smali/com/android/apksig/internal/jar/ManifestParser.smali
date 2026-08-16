.class public Lcom/android/apksig/internal/jar/ManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/jar/ManifestParser$Section;,
        Lcom/android/apksig/internal/jar/ManifestParser$Attribute;
    }
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private mBufferedLine:[B

.field private mEndOffset:I

.field private final mManifest:[B

.field private mOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/apksig/internal/jar/ManifestParser;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    .line 4
    iput p2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    add-int/2addr p2, p3

    .line 5
    iput p2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    return-void
.end method

.method private static concat([B[BII)[B
    .locals 3

    array-length v0, p0

    add-int/2addr v0, p3

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static parseAttr(Ljava/lang/String;)Lcom/android/apksig/internal/jar/ManifestParser$Attribute;
    .locals 3

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/android/apksig/internal/jar/ManifestParser$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private readAttribute()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttributeBytes()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private readAttributeBytes()[B
    .locals 7

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    sget-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readLine()[B

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    array-length v2, v0

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    return-object v0

    :cond_3
    sget-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    array-length v6, v0

    if-eqz v6, :cond_a

    aget-byte v6, v0, v4

    if-eq v6, v3, :cond_6

    goto :goto_1

    :cond_6
    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    array-length v1, v0

    sub-int/2addr v1, v5

    invoke-static {v2, v0, v5, v1}, Lcom/android/apksig/internal/jar/ManifestParser;->concat([B[BII)[B

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readLine()[B

    move-result-object v1

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    array-length v2, v1

    if-nez v2, :cond_8

    sget-object v1, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    return-object v0

    :cond_8
    aget-byte v2, v1, v4

    if-ne v2, v3, :cond_9

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-static {v0, v1, v5, v2}, Lcom/android/apksig/internal/jar/ManifestParser;->concat([B[BII)[B

    move-result-object v0

    goto :goto_0

    :cond_9
    iput-object v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    return-object v0

    :cond_a
    :goto_1
    iput-object v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mBufferedLine:[B

    return-object v2
.end method

.method private readLine()[B
    .locals 8

    iget v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    iget v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mEndOffset:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    aget-byte v5, v4, v1

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_4

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_4

    add-int/lit8 v5, v1, 0x2

    goto :goto_1

    :cond_1
    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    move v5, v1

    :cond_4
    :goto_1
    if-ne v1, v3, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    iput v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    if-ne v1, v0, :cond_6

    sget-object v0, Lcom/android/apksig/internal/jar/ManifestParser;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    :cond_6
    iget-object v2, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mManifest:[B

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readAllSections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/jar/ManifestParser$Section;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readSection()Lcom/android/apksig/internal/jar/ManifestParser$Section;
    .locals 4

    :cond_0
    iget v0, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/android/apksig/internal/jar/ManifestParser;->parseAttr(Ljava/lang/String;)Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/apksig/internal/jar/ManifestParser;->readAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/android/apksig/internal/jar/ManifestParser;->parseAttr(Ljava/lang/String;)Lcom/android/apksig/internal/jar/ManifestParser$Attribute;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/apksig/internal/jar/ManifestParser;->mOffset:I

    sub-int/2addr v1, v0

    new-instance v3, Lcom/android/apksig/internal/jar/ManifestParser$Section;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/apksig/internal/jar/ManifestParser$Section;-><init>(IILjava/util/List;)V

    return-object v3
.end method
