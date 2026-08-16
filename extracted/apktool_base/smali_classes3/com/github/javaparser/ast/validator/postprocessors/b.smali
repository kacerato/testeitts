.class public final synthetic Lcom/github/javaparser/ast/validator/postprocessors/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/postprocessors/b;->b:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/b;->b:Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    check-cast p1, Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;->c(Lcom/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
