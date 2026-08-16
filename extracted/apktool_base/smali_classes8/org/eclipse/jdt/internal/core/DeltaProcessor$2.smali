.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IResourceDeltaVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isAffectedBy(Lorg/eclipse/core/resources/IResourceDelta;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/core/resources/IResourceDelta;)Z
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getAffectedChildren()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/core/resources/IResourceDelta;->getFlags()I

    move-result p1

    const v0, -0x30001

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    throw p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    new-instance p1, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$2;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;-><init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V

    throw p1
.end method
