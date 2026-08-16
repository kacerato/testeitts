.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/b;->b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/b;->b:Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DefaultLexicalPreservingPrinter;->a(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingVisitor;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method
