.class public final synthetic Lcom/github/javaparser/ast/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/U;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/U;->b:Ljava/util/Collection;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/NodeList;->e(Ljava/util/Collection;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method
