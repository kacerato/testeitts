.class public Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/Printer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;->lambda$print$0(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method

.method private static synthetic lambda$print$0(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "visitor",
            "element"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/PrintableTextElement;->accept(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V

    return-void
.end method


# virtual methods
.method public print(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;-><init>()V

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/b;

    invoke-direct {v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/b;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
