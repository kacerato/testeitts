.class public final synthetic Lcom/github/javaparser/ast/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/M;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/github/javaparser/ast/M;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/M;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/javaparser/ast/M;->c:Ljava/util/function/Predicate;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/Node;->Q(Ljava/lang/Class;Ljava/util/function/Predicate;Lcom/github/javaparser/ast/Node;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
