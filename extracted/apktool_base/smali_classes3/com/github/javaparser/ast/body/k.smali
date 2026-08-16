.class public final synthetic Lcom/github/javaparser/ast/body/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/k;->b:Ljava/lang/String;

    check-cast p1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/body/FieldDeclaration;->j0(Ljava/lang/String;Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method
