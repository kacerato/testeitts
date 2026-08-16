.class public Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private writer:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;-><init>(Ljava/io/StringWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/StringWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;->writer:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;->writer:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->accept(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V

    return-void
.end method

.method public visit(Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;->writer:Ljava/io/StringWriter;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    return-void
.end method
