.class public final synthetic Lcom/github/javaparser/ast/body/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/TypeDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/TypeDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/body/v;->b:Lcom/github/javaparser/ast/body/TypeDeclaration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/body/v;->b:Lcom/github/javaparser/ast/body/TypeDeclaration;

    invoke-static {v0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->r0(Lcom/github/javaparser/ast/body/TypeDeclaration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
