.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$animationObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colapsableEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Shake"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v4, "Shake intensity"

    invoke-direct {v0, v1, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const-string v5, "shakeIntensity"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, v4, v5, v6}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_0
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    const-string v4, "Shake magnitude"

    invoke-direct {v0, v1, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const-string v5, "shakeMagnitude"

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, v4, v5, v6}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    const-string v4, "Pinch fov"

    invoke-direct {v0, v1, v4, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    const-string v2, "Fov intensity"

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const-string v4, "fovIntensity"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, v2, v4, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    const-string v2, "Initial fov"

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const-string v4, "initialFov"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, v2, v4, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_3
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;)V

    const-string v2, "Minimal fov"

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/OrbitalCameraFollow;

    const-string v3, "minimalFov"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, v2, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_4
    return-object p1
.end method
