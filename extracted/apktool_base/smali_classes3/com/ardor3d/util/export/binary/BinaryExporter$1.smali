.class Lcom/ardor3d/util/export/binary/BinaryExporter$1;
.super Ljava/util/zip/GZIPOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/util/export/binary/BinaryExporter;->save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/util/export/binary/BinaryExporter;


# direct methods
.method public constructor <init>(Lcom/ardor3d/util/export/binary/BinaryExporter;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryExporter$1;->this$0:Lcom/ardor3d/util/export/binary/BinaryExporter;

    invoke-direct {p0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    iget p1, p1, Lcom/ardor3d/util/export/binary/BinaryExporter;->_compression:I

    invoke-virtual {p2, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method
