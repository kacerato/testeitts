.class public final synthetic Lcom/github/javaparser/printer/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

.field public final synthetic c:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/m;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    iput-object p2, p0, Lcom/github/javaparser/printer/m;->c:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/m;->b:Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;

    iget-object v1, p0, Lcom/github/javaparser/printer/m;->c:Ljava/lang/Void;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;->o(Lcom/github/javaparser/printer/DefaultPrettyPrinterVisitor;Ljava/lang/Void;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
