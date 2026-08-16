.class public final synthetic Lcom/github/javaparser/printer/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/b0;->b:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/b0;->b:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/metamodel/PropertyMetaModel;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/XmlPrinter;->e(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/metamodel/PropertyMetaModel;)Z

    move-result p1

    return p1
.end method
