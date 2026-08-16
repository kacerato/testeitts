.class Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubArcsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[D>;"
    }
.end annotation


# instance fields
.field private current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field private final firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation
.end field

.field private pending:[D

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$000(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$100(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [D

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->selectPending()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x401921fb54442d18L    # 6.283185307179586
    .end array-data
.end method

.method private selectPending()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_0
    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$200(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    return-void

    :cond_1
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_2

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$300(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    iget-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v4, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v3

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    new-array v2, v2, [D

    aput-wide v3, v2, v1

    aput-wide v6, v2, v0

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    iput-object v5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->firstStart:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_2
    if-eqz v5, :cond_4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$400(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$600(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v6, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v6

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->this$0:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-static {v3, v5}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->access$500(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)D

    move-result-wide v8

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v8, v10

    new-array v2, v2, [D

    aput-wide v6, v2, v1

    aput-wide v8, v2, v0

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    iput-object v4, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->current:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    :goto_3
    return-void

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->next()[D

    move-result-object v0

    return-object v0
.end method

.method public next()[D
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->pending:[D

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$SubArcsIterator;->selectPending()V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
