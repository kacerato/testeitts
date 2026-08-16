.class public Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v4/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfos"
.end annotation


# instance fields
.field public final signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

.field public final signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    const/4 p1, 0x0

    .line 3
    new-array p1, p1, [Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    return-void
.end method

.method public varargs constructor <init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    .line 6
    iput-object p2, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    return-void
.end method

.method public static fromByteArray([B)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->fromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    invoke-direct {p0, v0, v1}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;-><init>(Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;)V

    return-object p0
.end method


# virtual methods
.method public toByteArray()[B
    .locals 8

    iget-object v0, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfo:Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfo;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    array-length v1, v1

    iget-object v3, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    array-length v3, v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v5

    array-length v4, v4

    add-int/2addr v1, v4

    move v4, v5

    goto :goto_0

    :cond_0
    const/16 v3, 0x1c00

    if-gt v1, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    aget-object v3, v0, v2

    array-length v3, v3

    iget-object v4, p0, Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfos;->signingInfoBlocks:[Lcom/android/apksig/internal/apk/v4/V4Signature$SigningInfoBlock;

    array-length v4, v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v0, v5

    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v6, v0, v5

    array-length v6, v6

    add-int/2addr v3, v6

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Combined SigningInfos length exceeded limit of 7K: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
