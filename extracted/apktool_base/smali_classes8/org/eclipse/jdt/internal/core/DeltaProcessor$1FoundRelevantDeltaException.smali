.class Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/DeltaProcessor;->isAffectedBy(Lorg/eclipse/core/resources/IResourceDelta;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FoundRelevantDeltaException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x630c1eb082fd53aeL


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/DeltaProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DeltaProcessor$1FoundRelevantDeltaException;->this$0:Lorg/eclipse/jdt/internal/core/DeltaProcessor;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
