.class public final synthetic Lcom/github/javaparser/ast/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/NodeList;

.field public final synthetic c:I

.field public final synthetic d:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/a0;->b:Lcom/github/javaparser/ast/NodeList;

    iput p2, p0, Lcom/github/javaparser/ast/a0;->c:I

    iput-object p3, p0, Lcom/github/javaparser/ast/a0;->d:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/ast/a0;->b:Lcom/github/javaparser/ast/NodeList;

    iget v1, p0, Lcom/github/javaparser/ast/a0;->c:I

    iget-object v2, p0, Lcom/github/javaparser/ast/a0;->d:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/ast/NodeList;->a(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method
