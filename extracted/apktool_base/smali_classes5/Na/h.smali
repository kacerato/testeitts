.class public LNa/h;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;
.source "SourceFile"


# static fields
.field public static final s:Ljava/lang/String; = "OnVerticalSpeed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNa/h$a;

    invoke-direct {v0}, LNa/h$a;-><init>()V

    invoke-static {v0}, Lga/o;->a(Lga/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;-><init>()V

    const-string v0, "OnVerticalSpeed"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public K0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "movementDelta",
            "deltaTime"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    div-float/2addr p1, p3

    return p1
.end method

.method public N0()Ljava/lang/String;
    .locals 1

    const-string v0, "On Vertical Speed"

    return-object v0
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_ON_VERTICAL_SPEED:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
