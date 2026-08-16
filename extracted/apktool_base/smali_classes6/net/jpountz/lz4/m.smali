.class public final Lnet/jpountz/lz4/m;
.super Lnet/jpountz/lz4/d;
.source "SourceFile"


# static fields
.field public static final b:Lnet/jpountz/lz4/m;

.field public static c:Lnet/jpountz/lz4/d;

.field public static final synthetic d:Z


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/jpountz/lz4/m;

    invoke-direct {v0}, Lnet/jpountz/lz4/m;-><init>()V

    sput-object v0, Lnet/jpountz/lz4/m;->b:Lnet/jpountz/lz4/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lnet/jpountz/lz4/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/jpountz/lz4/d;-><init>()V

    .line 3
    iput p1, p0, Lnet/jpountz/lz4/m;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .locals 13

    move-object v0, p0

    invoke-static/range {p4 .. p4}, Lnet/jpountz/util/a;->a(Ljava/nio/ByteBuffer;)V

    invoke-static/range {p1 .. p3}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-static/range {p4 .. p6}, Lnet/jpountz/util/a;->c(Ljava/nio/ByteBuffer;II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/jpountz/lz4/m;->c:Lnet/jpountz/lz4/d;

    if-nez v1, :cond_2

    invoke-static {}, Lnet/jpountz/lz4/i;->m()Lnet/jpountz/lz4/i;

    move-result-object v1

    iget v2, v0, Lnet/jpountz/lz4/m;->a:I

    invoke-virtual {v1, v2}, Lnet/jpountz/lz4/i;->h(I)Lnet/jpountz/lz4/d;

    move-result-object v1

    sput-object v1, Lnet/jpountz/lz4/m;->c:Lnet/jpountz/lz4/d;

    :cond_2
    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lnet/jpountz/lz4/d;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I

    move-result v1

    return v1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p2

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    goto :goto_1

    :cond_4
    move-object v5, p1

    move v6, p2

    move-object v4, v2

    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int v3, p5, v3

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    goto :goto_2

    :cond_5
    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object v8, v2

    :goto_2
    iget v12, v0, Lnet/jpountz/lz4/m;->a:I

    move/from16 v7, p3

    move/from16 v11, p6

    invoke-static/range {v4 .. v12}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_compressHC([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;III)I

    move-result v1

    if-lez v1, :cond_6

    return v1

    :cond_6
    new-instance v1, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {v1}, Lnet/jpountz/lz4/LZ4Exception;-><init>()V

    throw v1
.end method

.method public c([BII[BII)I
    .locals 9

    invoke-static {p1, p2, p3}, Lnet/jpountz/util/c;->c([BII)V

    invoke-static {p4, p5, p6}, Lnet/jpountz/util/c;->c([BII)V

    const/4 v5, 0x0

    iget v8, p0, Lnet/jpountz/lz4/m;->a:I

    const/4 v1, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lnet/jpountz/lz4/LZ4JNI;->LZ4_compressHC([BLjava/nio/ByteBuffer;II[BLjava/nio/ByteBuffer;III)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Lnet/jpountz/lz4/LZ4Exception;

    invoke-direct {p1}, Lnet/jpountz/lz4/LZ4Exception;-><init>()V

    throw p1
.end method
