.class public final synthetic Lcom/github/javaparser/printer/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic c:Ljava/lang/Void;

.field public final synthetic d:Lcom/github/javaparser/ast/body/MethodDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/N;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lcom/github/javaparser/printer/N;->c:Ljava/lang/Void;

    iput-object p3, p0, Lcom/github/javaparser/printer/N;->d:Lcom/github/javaparser/ast/body/MethodDeclaration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/N;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lcom/github/javaparser/printer/N;->c:Ljava/lang/Void;

    iget-object v2, p0, Lcom/github/javaparser/printer/N;->d:Lcom/github/javaparser/ast/body/MethodDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->b(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/body/MethodDeclaration;Lcom/github/javaparser/ast/body/ReceiverParameter;)V

    return-void
.end method
