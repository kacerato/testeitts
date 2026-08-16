.class public Lk5/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk5/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk5/d$b;


# direct methods
.method public constructor <init>(Lk5/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$b$a;->b:Lk5/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v0, v0, Lk5/d$b;->d:Lk5/d;

    sget-object v1, Lk5/c;->ManageAnchors:Lk5/c;

    invoke-static {v0, v1}, Lk5/d;->H(Lk5/d;Lk5/c;)Lk5/c;

    iget-object v0, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v0, v0, Lk5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAnchor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;-><init>()V

    iget-object v1, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v1, v1, Lk5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_0
    sget-object v1, Lk5/d$u;->b:[I

    iget-object v2, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v2, v2, Lk5/d$b;->d:Lk5/d;

    invoke-static {v2}, Lk5/d;->I(Lk5/d;)Lk5/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setBottomOffset(I)V

    iget-object v1, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v1, v1, Lk5/d$b;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setBottomTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->ToTopOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setBottomAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setTopOffset(I)V

    iget-object v1, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v1, v1, Lk5/d$b;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setTopTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;->ToTopOf:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->setTopAnchor(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V

    :goto_0
    iget-object v0, p0, Lk5/d$b$a;->b:Lk5/d$b;

    iget-object v0, v0, Lk5/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    :cond_3
    return-void
.end method
