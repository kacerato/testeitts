.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->schedulePointReferenceRebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;->access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/CurvePath;)V

    return-void
.end method
