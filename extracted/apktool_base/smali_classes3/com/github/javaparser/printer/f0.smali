.class public final synthetic Lcom/github/javaparser/printer/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/f0;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/printer/f0;->c:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/f0;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/printer/f0;->c:Ljavax/xml/stream/XMLStreamWriter;

    check-cast p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/XmlPrinter;->c(Lcom/github/javaparser/ast/Node;Ljavax/xml/stream/XMLStreamWriter;Lcom/github/javaparser/metamodel/PropertyMetaModel;)V

    return-void
.end method
