.class public final Lnet/jpountz/lz4/p;
.super Lnet/jpountz/lz4/d;
.source "SourceFile"


# static fields
.field public static final a:Lnet/jpountz/lz4/d;

.field public static b:Lnet/jpountz/lz4/d;

.field public static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/p;

    invoke-direct {v0}, Lnet/jpountz/lz4/p;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/p;->a:Lnet/jpountz/lz4/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/jpountz/lz4/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
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
    sget-object v0, Lnet/jpountz/lz4/p;->b:Lnet/jpountz/lz4/d;

    if-nez v0, :cond_2

    invoke-static {}, Lnet/jpountz/lz4/i;->m()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->c()Lnet/jpountz/lz4/d;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/p;->b:Lnet/jpountz/lz4/d;

    :cond_2
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lnet/jpountz/lz4/d;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

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

    move v5, v2

    goto :goto_1

    :cond_4
    move-object v4, p1

    move v5, p2

    move-object v3, v1

    :goto_1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v2, p5, v2

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    goto :goto_2

    :cond_5
    move-object v8, p4

    move/from16 v9, p5

    move-object v7, v1

    :goto_2
    move v6, p3

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_compress_limitedOutput([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

    move-result v0

    if-lez v0, :cond_6

    return v0

    :cond_6
    new-instance v0, Lnet/jpountz/lz4/LZ4Exception;

    const-string v1, "maxDestLen is too small"

    invoke-direct {v0, v1}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c([BII[BII)I
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

    invoke-static/range {v0 .. v7}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_compress_limitedOutput([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;II)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    const-string p2, "maxDestLen is too small"

    invoke-direct {p1, p2}, Lnet/jpountz/lz4/LZ4Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
