.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/comments/Comment;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/J;->b:Lcom/github/javaparser/ast/comments/Comment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/J;->b:Lcom/github/javaparser/ast/comments/Comment;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->j(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z

    move-result p1

    return p1
.end method
