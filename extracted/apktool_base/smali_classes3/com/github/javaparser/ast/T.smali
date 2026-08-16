.class public final synthetic Lcom/github/javaparser/ast/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/NodeList;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/NodeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/T;->b:Lcom/github/javaparser/ast/NodeList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/T;->b:Lcom/github/javaparser/ast/NodeList;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    return-void
.end method
