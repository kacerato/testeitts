.class public final Lnet/jpountz/lz4/r;
.super Lnet/jpountz/lz4/y;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/lz4/r;

.field public static b:Lnet/jpountz/lz4/y;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/r;

    invoke-direct {v0}, Lnet/jpountz/lz4/r;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/r;->a:Lnet/jpountz/lz4/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/lz4/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII[BII)I
    .locals 8

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/c;->c([BII)V

    invoke-static {p4, p5, p6}, Lnet/jpountz/util/c;->c([BII)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_decompress_safe([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

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

.method public c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 11

    invoke-static {p4}, Lnet/jpountz/util/a;->a(Ljava/nio/ByteBuffer;)V

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-static/range {p4 .. p6}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lnet/jpountz/lz4/r;->b:Lnet/jpountz/lz4/y;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/jpountz/lz4/i;->m()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->l()Lnet/jpountz/lz4/y;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/r;->b:Lnet/jpountz/lz4/y;

    :cond_2
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/y;->c(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p2

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, p1

    move v2, p2

    move-object v3, v1

    :goto_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int v5, p5, v5

    move-object v7, v0

    move-object v8, v1

    move v9, v5

    goto :goto_2

    :cond_5
    move-object v8, p4

    move/from16 v9, p5

    move-object v7, v1

    :goto_2
    move v5, v2

    move v6, p3

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_decompress_safe([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

    move-result v0

    if-ltz v0, :cond_6

    return v0

    :cond_6
    new-instance v1, Lnet/jpountz/lz4/LZ4Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error decoding offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of input buffer"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
