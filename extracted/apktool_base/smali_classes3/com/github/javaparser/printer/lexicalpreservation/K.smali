.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/Optional;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/K;->b:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/K;->b:Ljava/util/Optional;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->a(Ljava/util/Optional;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p1

    return-object p1
.end method
