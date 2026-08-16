.class public final synthetic Lcom/github/javaparser/ast/body/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/TypeDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/B;->b:Lcom/github/javaparser/ast/body/TypeDeclaration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/B;->b:Lcom/github/javaparser/ast/body/TypeDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/body/TypeDeclaration;->j0(Lcom/github/javaparser/ast/body/TypeDeclaration;Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
