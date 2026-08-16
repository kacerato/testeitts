.class public final synthetic Lh0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/github/javaparser/resolution/TypeSolver;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/a;->b:Ljava/util/List;

    iput-object p2, p0, Lh0/a;->c:Lcom/github/javaparser/resolution/TypeSolver;

    iput-boolean p3, p0, Lh0/a;->d:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lh0/a;->b:Ljava/util/List;

    iget-object v1, p0, Lh0/a;->c:Lcom/github/javaparser/resolution/TypeSolver;

    iget-boolean v2, p0, Lh0/a;->d:Z

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->a(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;)Z

    move-result p1

    return p1
.end method
