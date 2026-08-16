.class public final synthetic Lcom/github/javaparser/printer/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic c:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/X;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lcom/github/javaparser/printer/X;->c:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/X;->b:Lcom/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lcom/github/javaparser/printer/X;->c:Ljava/lang/Void;

    check-cast p1, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/PrettyPrintVisitor;->a(Lcom/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/modules/ModuleDeclaration;)V

    return-void
.end method
