.class public final Lnet/jpountz/lz4/w;
.super Lnet/jpountz/lz4/j;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/lz4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/w;

    invoke-direct {v0}, Lnet/jpountz/lz4/w;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/w;->a:Lnet/jpountz/lz4/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/lz4/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BI[BII)I
    .locals 10

    invoke-static {p1, p2}, Lnet/jpountz/util/d;->b([BI)V

    invoke-static {p3, p4, p5}, Lnet/jpountz/util/d;->c([BII)V

    const/4 v0, 0x1

    const-string v1, "Malformed input at "

    if-nez p5, :cond_1

    invoke-static {p1, p2}, Lnet/jpountz/util/d;->d([BI)B

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr p5, p4

    move v2, p2

    move v3, p4

    :goto_0
    invoke-static {p1, v2}, Lnet/jpountz/util/d;->d([BI)B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    add-int/2addr v2, v0

    ushr-int/lit8 v5, v5, 0x4

    const/4 v6, -0x1

    const/16 v7, 0xf

    if-ne v5, v7, :cond_3

    :goto_1
    add-int/lit8 v8, v2, 0x1

    invoke-static {p1, v2}, Lnet/jpountz/util/d;->d([BI)B

    move-result v2

    if-ne v2, v6, :cond_2

    add-int/lit16 v5, v5, 0xff

    move v2, v8

    goto :goto_1

    :cond_2
    and-int/lit16 v2, v2, 0xff

    add-int/2addr v5, v2

    move v2, v8

    :cond_3
    add-int v8, v3, v5

    add-int/lit8 v9, p5, -0x8

    if-le v8, v9, :cond_5

    if-ne v8, p5, :cond_4

    invoke-static {p1, v2, p3, v3, v5}, Lnet/jpountz/lz4/B;->h([BI[BII)V

    add-int/2addr v2, v5

    sub-int/2addr v2, p2

    return v2

    :cond_4
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p1, v2, p3, v3, v5}, Lnet/jpountz/lz4/B;->j([BI[BII)V

    add-int/2addr v2, v5

    invoke-static {p1, v2}, Lnet/jpountz/util/d;->o([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    sub-int v3, v8, v3

    if-lt v3, p4, :cond_a

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v7, :cond_7

    :goto_2
    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v2}, Lnet/jpountz/util/d;->d([BI)B

    move-result v2

    if-ne v2, v6, :cond_6

    add-int/lit16 v4, v4, 0xff

    move v2, v5

    goto :goto_2

    :cond_6
    and-int/lit16 v2, v2, 0xff

    add-int/2addr v4, v2

    move v2, v5

    :cond_7
    add-int/lit8 v4, v4, 0x4

    add-int v5, v8, v4

    if-le v5, v9, :cond_9

    if-gt v5, p5, :cond_8

    invoke-static {p3, v3, v8, v4}, Lnet/jpountz/lz4/B;->i([BIII)V

    goto :goto_3

    :cond_8
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-static {p3, v3, v8, v5}, Lnet/jpountz/lz4/B;->k([BIII)V

    :goto_3
    move v3, v5

    goto/16 :goto_0

    :cond_a
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
    .locals 10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int v3, p2, p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int v5, p4, p1

    move-object v1, p0

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/w;->a([BI[BII)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lnet/jpountz/util/a;->e(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p3}, Lnet/jpountz/util/a;->e(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->b(Ljava/nio/ByteBuffer;I)V

    invoke-static {p3, p4, p5}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    const/4 v0, 0x1

    const-string v1, "Malformed input at "

    if-nez p5, :cond_2

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->g(Ljava/nio/ByteBuffer;I)B

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/2addr p5, p4

    move v2, p2

    move v3, p4

    :goto_0
    invoke-static {p1, v2}, Lnet/jpountz/util/a;->g(Ljava/nio/ByteBuffer;I)B

    move-result v4

    and-int/lit16 v5, v4, 0xff

    add-int/2addr v2, v0

    ushr-int/lit8 v5, v5, 0x4

    const/4 v6, -0x1

    const/16 v7, 0xf

    if-ne v5, v7, :cond_4

    :goto_1
    add-int/lit8 v8, v2, 0x1

    invoke-static {p1, v2}, Lnet/jpountz/util/a;->g(Ljava/nio/ByteBuffer;I)B

    move-result v2

    if-ne v2, v6, :cond_3

    add-int/lit16 v5, v5, 0xff

    move v2, v8

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v2, 0xff

    add-int/2addr v5, v2

    move v2, v8

    :cond_4
    add-int v8, v3, v5

    add-int/lit8 v9, p5, -0x8

    if-le v8, v9, :cond_6

    if-ne v8, p5, :cond_5

    invoke-static {p1, v2, p3, v3, v5}, Lnet/jpountz/lz4/c;->j(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v2, v5

    sub-int/2addr v2, p2

    return v2

    :cond_5
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p1, v2, p3, v3, v5}, Lnet/jpountz/lz4/c;->m(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v2, v5

    invoke-static {p1, v2}, Lnet/jpountz/util/a;->m(Ljava/nio/ByteBuffer;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    sub-int v3, v8, v3

    if-lt v3, p4, :cond_b

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v7, :cond_8

    :goto_2
    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v2}, Lnet/jpountz/util/a;->g(Ljava/nio/ByteBuffer;I)B

    move-result v2

    if-ne v2, v6, :cond_7

    add-int/lit16 v4, v4, 0xff

    move v2, v5

    goto :goto_2

    :cond_7
    and-int/lit16 v2, v2, 0xff

    add-int/2addr v4, v2

    move v2, v5

    :cond_8
    add-int/lit8 v4, v4, 0x4

    add-int v5, v8, v4

    if-le v5, v9, :cond_a

    if-gt v5, p5, :cond_9

    invoke-static {p3, v3, v8, v4}, Lnet/jpountz/lz4/c;->k(Ljava/nio/ByteBuffer;III)V

    goto :goto_3

    :cond_9
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p3, v3, v8, v5}, Lnet/jpountz/lz4/c;->o(Ljava/nio/ByteBuffer;III)V

    :goto_3
    move v3, v5

    goto/16 :goto_0

    :cond_b
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
