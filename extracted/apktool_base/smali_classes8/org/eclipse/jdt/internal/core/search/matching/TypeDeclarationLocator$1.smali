.class Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;
.super Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->getModuleGraph(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/util/HashSet;)Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;

.field private final synthetic val$tmpGraph:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;->val$tmpGraph:Ljava/util/HashSet;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/search/JavaSearchParticipant;-><init>()V

    return-void
.end method

.method private addRequiredModules(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V
    .locals 6

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->matchBinding:Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;->val$tmpGraph:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getAllRequiredModules()[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    goto :goto_0

    :cond_3
    aget-object v3, v0, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    if-eqz v3, :cond_5

    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;->val$tmpGraph:Ljava/util/HashSet;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;

    invoke-direct {v0, p2, p4, p3, p5}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;-><init>(Lorg/eclipse/jdt/core/search/SearchPattern;Lorg/eclipse/jdt/core/search/SearchRequestor;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    if-eqz p5, :cond_1

    invoke-interface {p5}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;->locateMatches([Lorg/eclipse/jdt/core/search/SearchDocument;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$1;->addRequiredModules(Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;)V

    return-void
.end method
