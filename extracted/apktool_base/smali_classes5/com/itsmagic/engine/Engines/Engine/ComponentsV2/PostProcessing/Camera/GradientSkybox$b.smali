.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBb/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;->ensureGradientTexture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/GradientSkybox;Z)Z

    return-void
.end method
