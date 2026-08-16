.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$b;
.super LJAVARuntime/GizmoObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-direct {p0}, LJAVARuntime/GizmoObject;-><init>()V

    new-instance p1, LJAVARuntime/Color;

    const/16 v0, 0xb4

    const/16 v1, 0x32

    const/16 v2, 0xff

    invoke-direct {p1, v2, v0, v1}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    sget-object p1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {p0, p1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    return-void
.end method
