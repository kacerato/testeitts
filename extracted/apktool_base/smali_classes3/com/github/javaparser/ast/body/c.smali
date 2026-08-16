.class public final synthetic Lcom/github/javaparser/ast/body/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/CallableDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/CallableDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/c;->b:Lcom/github/javaparser/ast/body/CallableDeclaration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/c;->b:Lcom/github/javaparser/ast/body/CallableDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/type/Type;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/body/CallableDeclaration;->l0(Lcom/github/javaparser/ast/body/CallableDeclaration;Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p1

    return-object p1
.end method
