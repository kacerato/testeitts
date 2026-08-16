.class public final synthetic Lcom/github/javaparser/printer/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/o;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/o;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    check-cast p1, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->k(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-void
.end method
