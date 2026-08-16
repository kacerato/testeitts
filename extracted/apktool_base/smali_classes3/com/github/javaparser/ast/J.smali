.class public final synthetic Lcom/github/javaparser/ast/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Lcom/github/javaparser/ast/observer/ObservableProperty;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/J;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/ast/J;->c:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iput-object p3, p0, Lcom/github/javaparser/ast/J;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/github/javaparser/ast/J;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/ast/J;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/ast/J;->c:Lcom/github/javaparser/ast/observer/ObservableProperty;

    iget-object v2, p0, Lcom/github/javaparser/ast/J;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/javaparser/ast/J;->e:Ljava/lang/Object;

    check-cast p1, Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/github/javaparser/ast/Node;->X(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-void
.end method
