.class public final synthetic Lcom/github/javaparser/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {p1}, Lcom/github/javaparser/ParserConfiguration$4;->a(Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
