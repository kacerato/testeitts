.class public Lorg/eclipse/jdt/internal/core/ElementCache;
.super Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lorg/eclipse/jdt/core/IJavaElement;",
        ":",
        "Lorg/eclipse/jdt/core/IOpenable;",
        ">",
        "Lorg/eclipse/jdt/internal/core/OverflowingLRUCache<",
        "TK;",
        "Lorg/eclipse/jdt/internal/core/JavaElementInfo;",
        ">;"
    }
.end annotation


# instance fields
.field spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ElementCache;->spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;-><init>(II)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ElementCache;->spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method


# virtual methods
.method public close(Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry<",
            "TK;",
            "Lorg/eclipse/jdt/internal/core/JavaElementInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/util/LRUCache$LRUCacheEntry;->key:Ljava/lang/Object;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/Openable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/Openable;

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Openable;->canBeRemovedFromCache()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->close()V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public ensureSpaceLimit(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    array-length p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->loadFactor:D

    add-double/2addr v2, v0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->overflow:I

    add-int/2addr p1, v0

    int-to-double v0, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/LRUCache;->spaceLimit:I

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->shrink()Z

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->setSpaceLimit(I)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/ElementCache;->spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_0
    return-void
.end method

.method public newInstance(II)Lorg/eclipse/jdt/internal/core/ElementCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/eclipse/jdt/internal/core/ElementCache<",
            "TK;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/ElementCache;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/ElementCache;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic newInstance(II)Lorg/eclipse/jdt/internal/core/util/LRUCache;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/ElementCache;->newInstance(II)Lorg/eclipse/jdt/internal/core/ElementCache;

    move-result-object p1

    return-object p1
.end method

.method public resetSpaceLimit(ILorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ElementCache;->spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/OverflowingLRUCache;->setSpaceLimit(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ElementCache;->spaceLimitParent:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_0
    return-void
.end method
