.class public final synthetic Lcom/github/javaparser/ast/validator/postprocessors/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/postprocessors/a;->b:Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/a;->b:Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;

    check-cast p1, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->a(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V

    return-void
.end method
