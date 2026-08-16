.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;
.super LV9/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public offset:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LV9/p;-><init>()V

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->offset:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraintTarget",
            "guid",
            "gameObject"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2, p3}, LV9/p;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 5
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->offset:I

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    return-void
.end method

.method public bridge synthetic k()LV9/p;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->guid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-object v0
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;->Unfixed:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LV9/p;->l()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->offset:I

    return v0
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintTarget"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->constraintTarget:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/HorizontalConstraintTarget;

    return-void
.end method

.method public r(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/HorizontalUIAnchorObject;->offset:I

    return-void
.end method
