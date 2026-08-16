.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/VariableDeclarator;

.field public final synthetic c:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/E;->b:Lcom/github/javaparser/ast/body/VariableDeclarator;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/E;->c:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/E;->b:Lcom/github/javaparser/ast/body/VariableDeclarator;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/E;->c:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->f(Lcom/github/javaparser/ast/body/VariableDeclarator;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
