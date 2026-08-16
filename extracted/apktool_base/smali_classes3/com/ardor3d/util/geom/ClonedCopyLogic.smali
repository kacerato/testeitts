.class public Lcom/ardor3d/util/geom/ClonedCopyLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/geom/CopyLogic;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/ardor3d/scenegraph/Spatial;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/binary/BinaryExporter;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/util/export/binary/BinaryExporter;->save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Lcom/ardor3d/util/export/binary/BinaryImporter;

    invoke-direct {p2}, Lcom/ardor3d/util/export/binary/BinaryImporter;-><init>()V

    invoke-virtual {p2, p1}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
