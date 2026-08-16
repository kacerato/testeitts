.class public LV9/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

.field public c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "target"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LV9/j;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 4
    iput-object p2, p0, LV9/j;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 5
    iput-object p3, p0, LV9/j;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 1

    iget-object v0, p0, LV9/j;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, LV9/j;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 1

    iget-object v0, p0, LV9/j;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-object v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    iput-object p1, p0, LV9/j;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iput-object p1, p0, LV9/j;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    iput-object p1, p0, LV9/j;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-void
.end method
