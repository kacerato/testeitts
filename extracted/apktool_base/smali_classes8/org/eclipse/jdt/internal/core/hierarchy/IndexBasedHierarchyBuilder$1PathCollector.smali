.class Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/IPathRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->determinePossibleSubTypes(Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PathCollector"
.end annotation


# instance fields
.field paths:Ljava/util/HashSet;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;

.field private final synthetic val$localTypes:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->this$0:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->val$localTypes:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->paths:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public acceptPath(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->paths:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1PathCollector;->val$localTypes:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
