.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/B;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/B;->c:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/B;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/B;->c:Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->e(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
