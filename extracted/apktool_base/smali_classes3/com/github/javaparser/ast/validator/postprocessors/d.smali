.class public final synthetic Lcom/github/javaparser/ast/validator/postprocessors/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParseResult;

.field public final synthetic c:Lcom/github/javaparser/ParserConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/postprocessors/d;->b:Lcom/github/javaparser/ParseResult;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/postprocessors/d;->c:Lcom/github/javaparser/ParserConfiguration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/d;->b:Lcom/github/javaparser/ParseResult;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/postprocessors/d;->c:Lcom/github/javaparser/ParserConfiguration;

    check-cast p1, Lcom/github/javaparser/Processor;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->a(Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/Processor;)V

    return-void
.end method
