.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/changes/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;

.field public final synthetic c:Lcom/github/javaparser/ast/NodeList;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;Lcom/github/javaparser/ast/NodeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;->b:Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;->c:Lcom/github/javaparser/ast/NodeList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;->b:Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/changes/b;->c:Lcom/github/javaparser/ast/NodeList;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;->c(Lcom/github/javaparser/printer/lexicalpreservation/changes/ListRemovalChange;Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method
