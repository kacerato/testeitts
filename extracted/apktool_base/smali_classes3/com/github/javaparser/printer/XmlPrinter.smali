.class public Lcom/github/javaparser/printer/XmlPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TYPE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final outputNodeType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/github/javaparser/ast/type/Type;

    sput-object v0, Lcom/github/javaparser/printer/XmlPrinter;->TYPE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputNodeType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/javaparser/printer/XmlPrinter;->outputNodeType:Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$4(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$1(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$3(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$5(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/XmlPrinter;->lambda$outputNode$2(Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$outputNode$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "propertyMetaModel"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$outputNode$1(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "propertyMetaModel"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$outputNode$2(Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "propertyMetaModel"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/XmlPrinter;->TYPE_CLASS:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getType()Ljava/lang/Class;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$outputNode$3(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "xmlWriter",
            "attributeMetaModel"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/github/javaparser/printer/RuntimeXMLStreamException;

    invoke-direct {p1, p0}, Lcom/github/javaparser/printer/RuntimeXMLStreamException;-><init>(Ljavax/xml/stream/XMLStreamException;)V

    throw p1
.end method

.method private synthetic lambda$outputNode$4(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "xmlWriter",
            "subNodeMetaModel"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p3}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/github/javaparser/printer/XmlPrinter;->outputNode(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/github/javaparser/printer/RuntimeXMLStreamException;

    invoke-direct {p2, p1}, Lcom/github/javaparser/printer/RuntimeXMLStreamException;-><init>(Ljavax/xml/stream/XMLStreamException;)V

    throw p2
.end method

.method private synthetic lambda$outputNode$5(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "xmlWriter",
            "listMetaModel"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Lcom/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p0, p3, v1, p2}, Lcom/github/javaparser/printer/XmlPrinter;->outputNode(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Lcom/github/javaparser/printer/RuntimeXMLStreamException;

    invoke-direct {p2, p1}, Lcom/github/javaparser/printer/RuntimeXMLStreamException;-><init>(Ljavax/xml/stream/XMLStreamException;)V

    throw p2
.end method

.method public static print(Lcom/github/javaparser/ast/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lcom/github/javaparser/printer/XmlPrinter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/XmlPrinter;-><init>(Z)V

    invoke-virtual {v1, p0}, Lcom/github/javaparser/printer/XmlPrinter;->output(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 1
    const-string v0, "root"

    invoke-virtual {p0, p1, v0}, Lcom/github/javaparser/printer/XmlPrinter;->stringWriterOutput(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public output(Lcom/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "name",
            "level",
            "builder"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/printer/XmlPrinter;->stringWriterOutput(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public outputDocument(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "name",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p3}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p3

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/javaparser/printer/XmlPrinter;->outputDocument(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    .line 5
    throw p1
.end method

.method public outputDocument(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "name",
            "xmlWriter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 6
    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/javaparser/printer/XmlPrinter;->outputNode(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 8
    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    return-void
.end method

.method public outputNode(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "name",
            "xmlWriter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/b0;

    invoke-direct {v2, p1}, Lcom/github/javaparser/printer/b0;-><init>(Lcom/github/javaparser/ast/Node;)V

    new-instance v3, Lcom/github/javaparser/printer/d0;

    invoke-direct {v3, p1}, Lcom/github/javaparser/printer/d0;-><init>(Lcom/github/javaparser/ast/Node;)V

    new-instance v4, Lcom/github/javaparser/printer/e0;

    invoke-direct {v4}, Lcom/github/javaparser/printer/e0;-><init>()V

    invoke-interface {p3, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/github/javaparser/printer/XmlPrinter;->outputNodeType:Z

    if-eqz p2, :cond_0

    const-string p2, "type"

    invoke-virtual {v0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/E;

    invoke-direct {v0}, Lcom/github/javaparser/printer/E;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/F;

    invoke-direct {v0}, Lcom/github/javaparser/printer/F;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/f0;

    invoke-direct {v0, p1, p3}, Lcom/github/javaparser/printer/f0;-><init>(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/G;

    invoke-direct {v0}, Lcom/github/javaparser/printer/G;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/F;

    invoke-direct {v0}, Lcom/github/javaparser/printer/F;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/g0;

    invoke-direct {v0, p0, p1, p3}, Lcom/github/javaparser/printer/g0;-><init>(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/H;

    invoke-direct {v0}, Lcom/github/javaparser/printer/H;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {v3, v4}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/c0;

    invoke-direct {v0, p0, p1, p3}, Lcom/github/javaparser/printer/c0;-><init>(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/github/javaparser/printer/RuntimeXMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/RuntimeXMLStreamException;->getXMLStreamCause()Ljavax/xml/stream/XMLStreamException;

    move-result-object p1

    throw p1
.end method

.method public stringWriterOutput(Lcom/github/javaparser/ast/Node;Ljava/lang/String;)Ljava/io/StringWriter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "name"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/javaparser/printer/XmlPrinter;->outputDocument(Lcom/github/javaparser/ast/Node;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/github/javaparser/printer/RuntimeXMLStreamException;

    invoke-direct {p2, p1}, Lcom/github/javaparser/printer/RuntimeXMLStreamException;-><init>(Ljavax/xml/stream/XMLStreamException;)V

    throw p2
.end method
