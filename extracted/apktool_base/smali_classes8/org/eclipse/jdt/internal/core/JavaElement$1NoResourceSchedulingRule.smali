.class Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/jobs/ISchedulingRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaElement;->getSchedulingRule()Lorg/eclipse/core/runtime/jobs/ISchedulingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoResourceSchedulingRule"
.end annotation


# instance fields
.field public path:Lorg/eclipse/core/runtime/IPath;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaElement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/core/runtime/IPath;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->this$0:Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    return-void
.end method


# virtual methods
.method public contains(Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isConflicting(Lorg/eclipse/core/runtime/jobs/ISchedulingRule;)Z
    .locals 2

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {v0, p1}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElement$1NoResourceSchedulingRule;->path:Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1, v0}, Lorg/eclipse/core/runtime/IPath;->isPrefixOf(Lorg/eclipse/core/runtime/IPath;)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
