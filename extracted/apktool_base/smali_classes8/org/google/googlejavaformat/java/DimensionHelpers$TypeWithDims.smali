.class Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/DimensionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeWithDims"
.end annotation


# instance fields
.field final dims:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;"
        }
    .end annotation
.end field

.field final node:Lorg/openjdk/source/tree/Tree;


# direct methods
.method public constructor <init>(Lorg/openjdk/source/tree/Tree;Lcom/google/common/collect/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "dims"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/Tree;",
            "Lcom/google/common/collect/g1<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lorg/openjdk/source/tree/Tree;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/g1;

    return-void
.end method
