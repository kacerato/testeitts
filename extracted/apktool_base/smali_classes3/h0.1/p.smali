.class public final synthetic Lh0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh0/p;->b:Ljava/util/Set;

    iput-object p2, p0, Lh0/p;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lh0/p;->b:Ljava/util/Set;

    iget-object v1, p0, Lh0/p;->c:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->b(Ljava/util/Set;Ljava/util/function/Function;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
