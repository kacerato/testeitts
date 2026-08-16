.class public final synthetic Lcom/github/javaparser/printer/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/PrettyPrintVisitor;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/U;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/U;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    check-cast p1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->e(Lcom/github/javaparser/printer/PrettyPrintVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method
