.class public final synthetic Lcom/github/javaparser/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/GeneratedJavaParserBase;

.field public final synthetic c:Lcom/github/javaparser/ast/Node;

.field public final synthetic d:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/GeneratedJavaParserBase;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/i;->b:Lcom/github/javaparser/GeneratedJavaParserBase;

    iput-object p2, p0, Lcom/github/javaparser/i;->c:Lcom/github/javaparser/ast/Node;

    iput-object p3, p0, Lcom/github/javaparser/i;->d:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/i;->b:Lcom/github/javaparser/GeneratedJavaParserBase;

    iget-object v1, p0, Lcom/github/javaparser/i;->c:Lcom/github/javaparser/ast/Node;

    iget-object v2, p0, Lcom/github/javaparser/i;->d:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/GeneratedJavaParserBase;->a(Lcom/github/javaparser/GeneratedJavaParserBase;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
