.class public LZ3/b;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Physics"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public y(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v3, -0x3ee30a3d    # -9.81f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    const-string v3, "Gravity"

    invoke-static {v3, v1, v2}, LF5/c;->L(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LC5/b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LZ3/b$a;

    invoke-direct {v2, p0, v0}, LZ3/b$a;-><init>(LZ3/b;Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;)V

    const-string v0, "Max num iterations"

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v0, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
