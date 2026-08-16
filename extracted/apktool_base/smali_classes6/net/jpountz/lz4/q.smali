.class public final Lnet/jpountz/lz4/q;
.super Lnet/jpountz/lz4/j;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/lz4/q;

.field public static b:Lnet/jpountz/lz4/j;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/q;

    invoke-direct {v0}, Lnet/jpountz/lz4/q;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/q;->a:Lnet/jpountz/lz4/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/lz4/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI[BII)I
    .locals 7

    invoke-static {p1, p2}, Lnet/jpountz/util/c;->b([BI)V

    invoke-static {p3, p4, p5}, Lnet/jpountz/util/c;->c([BII)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_decompress_fast([BLjava/nio/ByteBuffer;I[BLjava/nio/ByteBuffer;II)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance p3, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error decoding offset "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of input buffer"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I
    .locals 9

    invoke-static {p3}, Lnet/jpountz/util/a;->a(Ljava/nio/ByteBuffer;)V

    invoke-static {p1, p2}, Lnet/jpountz/util/a;->b(Ljava/nio/ByteBuffer;I)V

    invoke-static {p3, p4, p5}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/jpountz/lz4/q;->b:Lnet/jpountz/lz4/j;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/jpountz/lz4/i;->m()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->d()Lnet/jpountz/lz4/j;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/q;->b:Lnet/jpountz/lz4/j;

    :cond_2
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/jpountz/lz4/j;->b(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p2, p1

    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v3, p1

    move-object v2, v1

    :goto_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p4, p3

    move-object v5, p1

    move v7, p4

    move-object v6, v1

    goto :goto_2

    :cond_5
    move-object v6, p3

    move v7, p4

    move-object v5, v1

    :goto_2
    move v4, p2

    move v8, p5

    invoke-static/range {v2 .. v8}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_decompress_fast([BLjava/nio/ByteBuffer;I[BLjava/nio/ByteBuffer;II)I

    move-result p1

    if-ltz p1, :cond_6

    return p1

    :cond_6
    new-instance p3, Lnet/jpountz/lz4/LZ4Exception;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error decoding offset "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of input buffer"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p3
.end method
