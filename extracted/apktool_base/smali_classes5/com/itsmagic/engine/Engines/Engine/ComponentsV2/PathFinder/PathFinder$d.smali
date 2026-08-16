.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;
.super LJAVARuntime/GizmoPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-direct {p0}, LJAVARuntime/GizmoPath;-><init>()V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
