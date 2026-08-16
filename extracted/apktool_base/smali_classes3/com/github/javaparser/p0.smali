.class public final synthetic Lcom/github/javaparser/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/p0;->b:Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/p0;->b:Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;->a(Lcom/github/javaparser/ParserConfiguration$UnicodeEscapeProcessor;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
