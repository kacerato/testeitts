.class public final synthetic Lcom/github/javaparser/ast/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/S;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/github/javaparser/ast/S;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/S;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/javaparser/ast/S;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/Node;->T(Ljava/lang/Class;Ljava/util/function/Consumer;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
