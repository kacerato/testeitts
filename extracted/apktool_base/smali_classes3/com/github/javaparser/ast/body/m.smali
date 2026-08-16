.class public final synthetic Lcom/github/javaparser/ast/body/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/MethodDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/m;->b:Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/m;->b:Lcom/github/javaparser/ast/body/MethodDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/Modifier$Keyword;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->m0(Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/Modifier$Keyword;)Z

    move-result p1

    return p1
.end method
