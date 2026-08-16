.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public final E:Ljava/lang/Object;

.field public volatile F:Z

.field public volatile G:J

.field public volatile H:Z

.field public final I:Ljava/lang/Object;

.field public J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/net/Uri;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:I

.field public l:Landroid/media/MediaExtractor;

.field public m:Landroid/media/MediaCodec;

.field public n:Landroid/media/ImageReader;

.field public final o:Ljava/lang/Object;

.field public volatile p:Z

.field public volatile q:Z

.field public volatile r:Z

.field public volatile s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/Thread;

.field public final w:Ljava/lang/Object;

.field public x:LB9/c;

.field public volatile y:J

.field public volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-video-frame-pull-decoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "videoUri"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;IIIZIIIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;III)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "videoUri",
            "outputWidth",
            "outputHeight",
            "ringSize"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 2
    invoke-direct/range {v0 .. v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;-><init>(Landroid/content/Context;Landroid/net/Uri;IIIZIIIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;IIIZIIIF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "context",
            "videoUri",
            "outputWidth",
            "outputHeight",
            "ringSize",
            "chromaKeyEnabled",
            "chromaKeyRed",
            "chromaKeyGreen",
            "chromaKeyBlue",
            "chromaKeyTolerance"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s:Z

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t:Z

    .line 10
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->y:J

    .line 13
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    .line 14
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->E:Ljava/lang/Object;

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    .line 16
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->G:J

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->I:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->b:Landroid/net/Uri;

    .line 22
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->c:I

    .line 23
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->d:I

    const/4 p1, 0x2

    .line 24
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->e:I

    .line 25
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->f:Z

    .line 26
    iput p7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->g:I

    .line 27
    iput p8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->h:I

    .line 28
    iput p9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->i:I

    .line 29
    iput p10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->j:F

    if-eqz p6, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 30
    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->k:I

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->e()V

    return-void
.end method

.method private static native nativeConvertYuv420888ToRgb(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIIJIIZIIIFI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            "yBuffer",
            "uBuffer",
            "vBuffer",
            "yRowStride",
            "yPixelStride",
            "uRowStride",
            "uPixelStride",
            "vRowStride",
            "vPixelStride",
            "srcWidth",
            "srcHeight",
            "outBufferPointer",
            "outWidth",
            "outHeight",
            "chromaKeyEnabled",
            "chromaKeyRed",
            "chromaKeyGreen",
            "chromaKeyBlue",
            "chromaKeyTolerance",
            "outputChannels"
        }
    .end annotation
.end method


# virtual methods
.method public final A(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->y:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v0, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    return-void

    :cond_1
    div-long v4, v0, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    :try_start_0
    invoke-static {v4, v5, v0}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;->b:Z

    if-nez v6, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;->b:Z

    monitor-exit v0

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, LB9/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d(Landroid/media/Image;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "outBuffer",
            "outWidth",
            "outHeight"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v3, v14

    const/4 v9, 0x1

    aget-object v4, v1, v9

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    move-object v4, v15

    const/4 v11, 0x2

    aget-object v5, v1, v11

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v5, v10

    aget-object v6, v1, v2

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v6

    aget-object v7, v1, v2

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v8, v1, v9

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aget-object v9, v1, v9

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    aget-object v16, v1, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    move-object/from16 v24, v10

    move/from16 v10, v16

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v1, v24

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    move-object/from16 v14, p2

    invoke-static {v14, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;J)J

    move-result-wide v14

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->f:Z

    move/from16 v18, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->g:I

    move/from16 v19, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->h:I

    move/from16 v20, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->i:I

    move/from16 v21, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->j:F

    move/from16 v22, v1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->k:I

    move/from16 v23, v1

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-static/range {v3 .. v23}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->nativeConvertYuv420888ToRgb(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIIJIIZIIIFI)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Formato inv\u00e1lido: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e()V
    .locals 3

    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w(J)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->f()LB9/c;

    move-result-object v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w(J)V

    goto :goto_0

    :cond_2
    iget-wide v1, v0, LB9/c;->d:J

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->A(J)V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->g(LB9/c;)V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, v0, LB9/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    goto :goto_0

    :cond_5
    :goto_2
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w(J)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final f()LB9/c;
    .locals 14

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p(J)V

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t:Z

    const-wide/16 v3, 0x2710

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ltz v8, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v2, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v2, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-gez v10, :cond_5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t:Z

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, -0x2

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    if-ltz v2, :cond_3

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_9

    move v3, v5

    goto :goto_3

    :cond_9
    move v3, v6

    :goto_3
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    if-nez v3, :cond_a

    return-object v1

    :cond_a
    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    if-eqz v2, :cond_c

    return-object v1

    :cond_c
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    if-eqz v2, :cond_3

    return-object v1

    :cond_d
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    return-object v1

    :cond_e
    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    invoke-virtual {p0, v2, v8, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->d(Landroid/media/Image;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;II)V

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    invoke-virtual {v8, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    new-instance v0, LB9/c;

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    iget-wide v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, LB9/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIJ)V

    return-object v0

    :cond_f
    :goto_5
    return-object v1
.end method

.method public final g(LB9/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, LB9/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LB9/d;

    invoke-direct {v1, p0}, LB9/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;)V

    const-string v2, "VideoFramePullDecoder"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mime"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "c2.android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public j()LB9/c;
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->x:LB9/c;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Voc\u00ea precisa chamar start() antes de getAvailableFrame()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final n()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->k:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->e:I

    new-array v1, v1, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->e:I

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    invoke-direct {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;-><init>(I)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    return-void
.end method

.method public final p(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeUs"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->c()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z(J)V

    return-void
.end method

.method public final q()Z
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->G:J

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p(J)V

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    return v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p(J)V

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    return v0

    :cond_1
    return v5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->v:Ljava/lang/Thread;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->c()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_2
    :try_start_5
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    :try_start_7
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n:Landroid/media/ImageReader;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_4
    :try_start_9
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n:Landroid/media/ImageReader;

    :cond_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->I:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    return-void

    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0

    :goto_1
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    :goto_2
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v1
.end method

.method public s(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->J:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-ne v6, p1, :cond_2

    iput-boolean v3, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder$a;->b:Z

    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->E:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->G:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Decoder not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(Landroid/media/MediaExtractor;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractor"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

.method public v(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looping"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->s:Z

    return-void
.end method

.method public final w(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public x()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z(J)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->h()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u(Landroid/media/MediaExtractor;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->l:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v3, "width"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->A:I

    const-string v3, "height"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->B:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->c:I

    if-lez v4, :cond_2

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->d:I

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->A:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->d:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->B:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->A:I

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->C:I

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->D:I

    :goto_1
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->A:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->B:I

    const/16 v6, 0x23

    const/4 v7, 0x1

    invoke-static {v3, v4, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n:Landroid/media/ImageReader;

    const-string v3, "mime"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    goto :goto_2

    :cond_3
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->m:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->n()V

    iput-boolean v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->r:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->t:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->u:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z:J

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->c()V

    invoke-virtual {p0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->z(J)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->E:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->h()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Nenhuma track de v\u00eddeo encontrada"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public y()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->q:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->H:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->F:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeUs"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VideoPlayer/VideoFramePullDecoder;->y:J

    return-void
.end method
