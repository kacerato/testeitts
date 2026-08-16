.class public final synthetic Lcom/github/javaparser/ast/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/O;->b:Lcom/github/javaparser/ast/observer/AstObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/O;->b:Lcom/github/javaparser/ast/observer/AstObserver;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/Node;->e0(Lcom/github/javaparser/ast/observer/AstObserver;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
