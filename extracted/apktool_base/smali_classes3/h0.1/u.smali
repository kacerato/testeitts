.class public final synthetic Lh0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/github/javaparser/resolution/TypeSolver;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/u;->b:Ljava/lang/String;

    iput-object p2, p0, Lh0/u;->c:Ljava/util/List;

    iput-object p3, p0, Lh0/u;->d:Lcom/github/javaparser/resolution/TypeSolver;

    iput-boolean p4, p0, Lh0/u;->e:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lh0/u;->b:Ljava/lang/String;

    iget-object v1, p0, Lh0/u;->c:Ljava/util/List;

    iget-object v2, p0, Lh0/u;->d:Lcom/github/javaparser/resolution/TypeSolver;

    iget-boolean v3, p0, Lh0/u;->e:Z

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->c(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z

    move-result p1

    return p1
.end method
