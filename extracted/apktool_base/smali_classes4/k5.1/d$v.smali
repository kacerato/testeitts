.class public Lk5/d$v;
.super Lk5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d;->u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public d:F

.field public e:F

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

.field public final synthetic i:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;ILub/p;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "iconPadding",
            "textureInstance",
            "val$panel3DView"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$v;->i:Lk5/d;

    iput-object p4, p0, Lk5/d$v;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-direct {p0, p2, p3}, Lk5/b;-><init>(ILub/p;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Ltc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "rect",
            "slide",
            "touch"
        }
    .end annotation

    iget-object p1, p0, Lk5/d$v;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Z(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object p3, p0, Lk5/d$v;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p3, p3, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    iget p3, p0, Lk5/d$v;->d:F

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result p4

    div-float/2addr p3, p4

    float-to-int p3, p3

    iget p4, p0, Lk5/d$v;->e:F

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    sub-float/2addr p4, p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result p1

    div-float/2addr p4, p1

    float-to-int p1, p4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p2

    iget p4, p0, Lk5/d$v;->f:I

    add-int/2addr p4, p3

    iget p3, p0, Lk5/d$v;->g:I

    add-int/2addr p3, p1

    invoke-virtual {p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->h(II)V

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Ltc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "rect",
            "touch"
        }
    .end annotation

    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Ltc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "rect",
            "touch"
        }
    .end annotation

    iget-object p1, p0, Lk5/d$v;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Z(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object p3, p0, Lk5/d$v;->h:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    iget-object p3, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->a0:Ln5/d;

    iget-object p3, p3, Ln5/d;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;

    move-result-object p1

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    iput p3, p0, Lk5/d$v;->d:F

    invoke-virtual {p1}, Laa/d;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    iput p1, p0, Lk5/d$v;->e:F

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p1

    iput p1, p0, Lk5/d$v;->f:I

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    iput p1, p0, Lk5/d$v;->g:I

    return-void
.end method
