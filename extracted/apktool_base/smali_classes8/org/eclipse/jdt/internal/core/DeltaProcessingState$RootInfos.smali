.class final Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RootInfos"
.end annotation


# instance fields
.field final otherRoots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final projectDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            "[",
            "Lorg/eclipse/jdt/core/IJavaProject;",
            ">;"
        }
    .end annotation
.end field

.field final roots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/jdt/internal/core/DeltaProcessor$RootInfo;",
            ">;"
        }
    .end annotation
.end field

.field final sourceAttachments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/core/runtime/IPath;",
            "Lorg/eclipse/core/runtime/IPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->roots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->otherRoots:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->sourceAttachments:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessingState$RootInfos;->projectDependencies:Ljava/util/Map;

    return-void
.end method
