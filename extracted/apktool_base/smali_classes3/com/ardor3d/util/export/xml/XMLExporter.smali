.class public Lcom/ardor3d/util/export/xml/XMLExporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Ardor3dExporter;


# static fields
.field public static final ATTRIBUTE_SIZE:Ljava/lang/String; = "size"

.field public static final ELEMENT_FLOATBUFFER:Ljava/lang/String; = "FloatBuffer"

.field public static final ELEMENT_KEY:Ljava/lang/String; = "Key"

.field public static final ELEMENT_MAPENTRY:Ljava/lang/String; = "MapEntry"

.field public static final ELEMENT_VALUE:Ljava/lang/String; = "Value"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ardor3d/util/export/xml/XMLExporter;
    .locals 1

    new-instance v0, Lcom/ardor3d/util/export/xml/XMLExporter;

    invoke-direct {v0}, Lcom/ardor3d/util/export/xml/XMLExporter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public save(Lcom/ardor3d/util/export/Savable;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/util/export/xml/XMLExporter;->save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public save(Lcom/ardor3d/util/export/Savable;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;-><init>(Lorg/w3c/dom/Document;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    .line 3
    invoke-virtual {v0}, Lcom/ardor3d/util/export/xml/DOMOutputCapsule;->getDoc()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ardor3d/util/export/xml/DOM_PrettyPrint;->serialize(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    throw p2
.end method
