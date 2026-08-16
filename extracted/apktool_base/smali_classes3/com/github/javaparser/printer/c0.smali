.class public final synthetic Lcom/github/javaparser/printer/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/XmlPrinter;

.field public final synthetic c:Lcom/github/javaparser/ast/Node;

.field public final synthetic d:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/c0;->b:Lcom/github/javaparser/printer/XmlPrinter;

    iput-object p2, p0, Lcom/github/javaparser/printer/c0;->c:Lcom/github/javaparser/ast/Node;

    iput-object p3, p0, Lcom/github/javaparser/printer/c0;->d:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/c0;->b:Lcom/github/javaparser/printer/XmlPrinter;

    iget-object v1, p0, Lcom/github/javaparser/printer/c0;->c:Lcom/github/javaparser/ast/Node;

    iget-object v2, p0, Lcom/github/javaparser/printer/c0;->d:Ljavax/xml/stream/XMLStreamWriter;

    check-cast p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/printer/XmlPrinter;->d(Lcom/github/javaparser/printer/XmlPrinter;Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V

    return-void
.end method
