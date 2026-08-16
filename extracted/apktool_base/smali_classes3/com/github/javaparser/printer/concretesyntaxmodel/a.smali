.class public final synthetic Lcom/github/javaparser/printer/concretesyntaxmodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/SourcePrinter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/a;->b:Lcom/github/javaparser/printer/SourcePrinter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/a;->b:Lcom/github/javaparser/printer/SourcePrinter;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmComment;->a(Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
