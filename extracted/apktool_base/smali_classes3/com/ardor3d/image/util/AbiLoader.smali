.class public final Lcom/ardor3d/image/util/AbiLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/image/util/ImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Z)Lcom/ardor3d/image/Image;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/ardor3d/util/export/binary/BinaryImporter;->getInstance()Lcom/ardor3d/util/export/binary/BinaryImporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ardor3d/util/export/binary/BinaryImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/image/Image;

    return-object p1
.end method
