.class public final synthetic Lh0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/github/javaparser/resolution/TypeSolver;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/q;->b:Ljava/lang/String;

    iput-object p2, p0, Lh0/q;->c:Ljava/util/List;

    iput-object p3, p0, Lh0/q;->d:Lcom/github/javaparser/resolution/TypeSolver;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lh0/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lh0/q;->c:Ljava/util/List;

    iget-object v2, p0, Lh0/q;->d:Lcom/github/javaparser/resolution/TypeSolver;

    check-cast p1, Lcom/github/javaparser/resolution/MethodUsage;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->a(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p1

    return p1
.end method
