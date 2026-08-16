.class public Ln5/c$j;
.super LR4/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln5/c;->l(Ljava/util/List;Ln5/d;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LR4/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedObject",
            "panel3DView"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LR4/e;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()LN4/a;
    .locals 1

    sget-object v0, LN4/a;->ScaY:LN4/a;

    return-object v0
.end method
