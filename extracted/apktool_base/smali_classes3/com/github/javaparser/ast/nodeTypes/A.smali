.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Modifier$Keyword;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/nodeTypes/A;->b:Lcom/github/javaparser/ast/Modifier$Keyword;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/nodeTypes/A;->b:Lcom/github/javaparser/ast/Modifier$Keyword;

    check-cast p1, Lcom/github/javaparser/ast/Modifier;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->L(Lcom/github/javaparser/ast/Modifier$Keyword;Lcom/github/javaparser/ast/Modifier;)Z

    move-result p1

    return p1
.end method
