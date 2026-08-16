.class Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;->buildForProject(Lorg/eclipse/jdt/internal/core/JavaProject;Ljava/util/ArrayList;[Lorg/eclipse/jdt/core/ICompilationUnit;Ljava/util/HashSet;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;

.field private final synthetic val$indexes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;->this$0:Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;->val$indexes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;->val$indexes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/IndexBasedHierarchyBuilder$1;->val$indexes:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    check-cast p2, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
