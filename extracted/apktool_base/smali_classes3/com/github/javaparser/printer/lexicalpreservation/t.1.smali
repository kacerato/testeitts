.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/t;->b:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/t;->b:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/TokenRange;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->b(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/TokenRange;)V

    return-void
.end method
