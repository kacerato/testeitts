.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/lexicalpreservation/TextElementIteratorsFactory$CascadingIterator$Provider;


# instance fields
.field public final synthetic a:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/A;->a:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final provide()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/A;->a:Lcom/github/javaparser/ast/Node;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->c(Lcom/github/javaparser/ast/Node;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
