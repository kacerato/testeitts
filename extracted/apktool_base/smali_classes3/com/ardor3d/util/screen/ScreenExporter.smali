.class public Lcom/ardor3d/util/screen/ScreenExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static _scratch:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized exportCurrentScreen(Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/util/screen/ScreenExportable;)V
    .locals 10

    const-class v0, Lcom/ardor3d/util/screen/ScreenExporter;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lcom/ardor3d/util/screen/ScreenExportable;->getFormat()Lcom/ardor3d/image/ImageDataFormat;

    move-result-object v3

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v9

    mul-int v1, v8, v9

    sget-object v2, Lcom/ardor3d/image/ImageDataType;->UnsignedByte:Lcom/ardor3d/image/ImageDataType;

    invoke-static {v3, v2}, Lcom/ardor3d/image/util/ImageUtils;->getPixelByteSize(Lcom/ardor3d/image/ImageDataFormat;Lcom/ardor3d/image/ImageDataType;)I

    move-result v2

    mul-int/2addr v1, v2

    sget-object v2, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v1, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    sget-object v2, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, v8

    move v7, v9

    invoke-interface/range {v1 .. v7}, Lcom/ardor3d/renderer/Renderer;->grabScreenContents(Ljava/nio/ByteBuffer;Lcom/ardor3d/image/ImageDataFormat;IIII)V

    sget-object p0, Lcom/ardor3d/util/screen/ScreenExporter;->_scratch:Ljava/nio/ByteBuffer;

    invoke-interface {p1, p0, v8, v9}, Lcom/ardor3d/util/screen/ScreenExportable;->export(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
