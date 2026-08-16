.class public Lcom/ardor3d/util/export/xml/XMLImporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Ardor3dImporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ardor3d/util/export/xml/XMLImporter;
    .locals 1

    new-instance v0, Lcom/ardor3d/util/export/xml/XMLImporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/xml/XMLImporter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public load(Ljava/io/File;)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/xml/XMLImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/ardor3d/util/export/xml/DOMInputCapsule;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;-><init>(Lorg/w3c/dom/Document;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, p1}, Lcom/ardor3d/util/export/xml/DOMInputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 3
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    throw v0

    .line 6
    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method public load(Ljava/net/URL;)Lcom/ardor3d/util/export/Savable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/export/xml/XMLImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/ardor3d/util/export/Savable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/util/export/xml/XMLImporter;->load(Ljava/io/InputStream;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    return-object p1
.end method
