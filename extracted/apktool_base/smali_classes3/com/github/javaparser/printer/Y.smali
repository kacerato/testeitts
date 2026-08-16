.class public final synthetic Lcom/github/javaparser/printer/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic c:Lcom/github/javaparser/ast/body/VariableDeclarator;

.field public final synthetic d:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/Y;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lcom/github/javaparser/printer/Y;->c:Lcom/github/javaparser/ast/body/VariableDeclarator;

    iput-object p3, p0, Lcom/github/javaparser/printer/Y;->d:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/Y;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lcom/github/javaparser/printer/Y;->c:Lcom/github/javaparser/ast/body/VariableDeclarator;

    iget-object v2, p0, Lcom/github/javaparser/printer/Y;->d:Ljava/lang/Void;

    check-cast p1, Lcom/github/javaparser/ast/type/Type;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->o(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lcom/github/javaparser/ast/type/Type;)V

    return-void
.end method
