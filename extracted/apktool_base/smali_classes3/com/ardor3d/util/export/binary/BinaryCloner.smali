.class public Lcom/ardor3d/util/export/binary/BinaryCloner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/ardor3d/scenegraph/Spatial;)Lcom/ardor3d/scenegraph/Spatial;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-direct {v1}, Lcom/ardor3d/util/export/binary/BinaryExporter;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/ardor3d/util/export/binary/BinaryExporter;->save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Lcom/ardor3d/util/export/binary/BinaryImporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/binary/BinaryImporter;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/scenegraph/Spatial;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
