.class public Lx4/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx4/a$f;,
        Lx4/a$e;
    }
.end annotation


# static fields
.field public static final d0:Ljava/lang/String; = "AnimationMaskEditorPanel"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:Ljava/lang/String;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

.field public final a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public b0:LF7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/l<",
            "Lx4/a$f;",
            ">;"
        }
    .end annotation
.end field

.field public c0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "Animation Mask"

    const-string v3, ""

    invoke-direct {p0, v2, v3, v0, v1}, Lx4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "panelTitle",
            "maskFile",
            "animationMask",
            "rootNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    const-string v1, "AnimationMaskEditorPanel"

    invoke-direct {p0, v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lx4/a;->X:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lx4/a;->C1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx4/a;->Y:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lx4/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    .line 6
    iput-object p4, p0, Lx4/a;->a0:Ljava/util/List;

    return-void
.end method

.method public static A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "sourceRoot",
            "objectsToInclude"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static C1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationFile"
        }
    .end annotation

    invoke-static {p0}, Lx4/a;->C1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lu4/a;->a:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lx4/a;->x1(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lu4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2, p0}, Lx4/a;->z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static F1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationFile",
            "maskFile",
            "onSaved"
        }
    .end annotation

    invoke-static {p0}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Ops!"

    const-string p1, "Failed to load animation file"

    invoke-static {p0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lx4/a;->D1(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    new-instance v2, Lx4/a;

    const-string v3, "Animation Mask"

    invoke-static {v0, p0, v1}, Lx4/a;->u1(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, v3, p1, v1, p0}, Lx4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V

    iput-object p2, v2, Lx4/a;->c0:Ljava/lang/Runnable;

    invoke-static {v2}, Lx4/a;->I1(Lx4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static G1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/Armature;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceObject",
            "armature",
            "maskFile",
            "onSaved"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "Ops!"

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "This Armature has no root joint"

    invoke-static {v1, p0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    new-instance v0, Lx4/a;

    const-string v1, "Skinned Mask"

    invoke-static {p0, p1}, Lx4/a;->v1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p2, p1, p0}, Lx4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V

    iput-object p3, v0, Lx4/a;->c0:Ljava/lang/Runnable;

    invoke-static {v0}, Lx4/a;->I1(Lx4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Invalid source object"

    invoke-static {v1, p0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static H1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceObject",
            "skinnedModelRenderer",
            "maskFile",
            "onSaved"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "Ops!"

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getRootJoint()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "This SkinnedModelRenderer has no root joint"

    invoke-static {v1, p0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;-><init>()V

    new-instance v0, Lx4/a;

    const-string v1, "Skinned Mask"

    invoke-static {p0, p1}, Lx4/a;->v1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p2, p1, p0}, Lx4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V

    iput-object p3, v0, Lx4/a;->c0:Ljava/lang/Runnable;

    invoke-static {v0}, Lx4/a;->I1(Lx4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "Invalid source object"

    invoke-static {v1, p0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static I1(Lx4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    const v0, 0x3f19999a    # 0.6f

    const v1, 0x3f333333    # 0.7f

    invoke-static {p0, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-object p0
.end method

.method public static synthetic p1(Lx4/a;)V
    .locals 0

    invoke-virtual {p0}, Lx4/a;->E1()V

    return-void
.end method

.method public static synthetic q1(Lx4/a;Lx4/a$f;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lx4/a;->B1(Lx4/a$f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lx4/a;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lx4/a;->y1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static s1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "current",
            "sourceRoot",
            "nodes",
            "objectsToInclude",
            "roots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lx4/a$e;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p0, v1, v2}, Lx4/a$e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Z)Lx4/a$e;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx4/a$e;

    if-nez v5, :cond_4

    invoke-static {v4, v1, v2}, Lx4/a$e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Z)Lx4/a$e;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v0}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v0}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v4, p1, p2, p3, p4}, Lx4/a;->s1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v0, v2}, Lx4/a$e;->c(Lx4/a$e;Z)Z

    return-void
.end method

.method public static t1(Ljava/util/Set;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetUIDs",
            "sourceRoot",
            "animationMask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "LAc/b;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LAc/b;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, LAc/b;->L0()LAc/b;

    move-result-object v7

    invoke-virtual {v7}, LAc/b;->g0()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, v5}, Lgb/e;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v7

    invoke-static {v7}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7, p1, v2}, Lx4/a;->A1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx4/a$e;

    if-nez v8, :cond_3

    invoke-static {v7, p2, v6}, Lx4/a$e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Z)Lx4/a$e;

    move-result-object v5

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v8, v6}, Lx4/a$e;->e(Lx4/a$e;Z)Z

    invoke-virtual {p2, v5}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result v5

    invoke-static {v8, v5}, Lx4/a$e;->h(Lx4/a$e;F)F

    goto :goto_0

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {v5, p2, v6}, Lx4/a$e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Z)Lx4/a$e;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-static {p1, p1, v1, v2, v0}, Lx4/a;->s1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    :cond_8
    const/4 p1, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_9

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAc/b;

    invoke-static {v1, p2}, Lx4/a$e;->l(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Lx4/a$e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LAc/b;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, LAc/b;->L0()LAc/b;

    move-result-object v1

    invoke-virtual {v1}, LAc/b;->g0()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1, p2}, Lx4/a$e;->l(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Lx4/a$e;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    :goto_4
    return-object v0
.end method

.method public static u1(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationData",
            "sourceRoot",
            "animationMask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->k()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, p1, p2}, Lx4/a;->t1(Ljava/util/Set;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootJoint",
            "animationMask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, v0}, Lx4/a;->w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V

    invoke-static {v0, p0, p1}, Lx4/a;->t1(Ljava/util/Set;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "targetUIDs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/Set<",
            "LAc/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkeletonBone/SkinJoint;

    if-eqz v0, :cond_1

    new-instance v0, LAc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, p1}, Lx4/a;->w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static x1(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animationInstance",
            "file"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/a;->C1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private y1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx4/a$f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lx4/a;->a0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lx4/a;->a0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4/a$e;

    new-instance v4, Lx4/a$f;

    invoke-direct {v4, v3}, Lx4/a$f;-><init>(Lx4/a$e;)V

    invoke-virtual {v4, v1}, LF7/i;->q(I)V

    invoke-static {v3}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, LF7/i;->r(Z)V

    iget-object v5, v4, LF7/i;->f:LF7/h;

    invoke-static {v3}, Lx4/a$e;->b(Lx4/a$e;)Z

    move-result v3

    iput-boolean v3, v5, LF7/h;->c:Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "animationFile"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->AnimationPlayer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/a;->C1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, p1}, Lx4/a;->z1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final B1(Lx4/a$f;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx4/a$f;",
            ")",
            "Ljava/util/List<",
            "Lx4/a$f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object v2

    invoke-static {v2}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p1}, Lx4/a$f;->u(Lx4/a$f;)Lx4/a$e;

    move-result-object v2

    invoke-static {v2}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx4/a$e;

    new-instance v3, Lx4/a$f;

    invoke-direct {v3, v2}, Lx4/a$f;-><init>(Lx4/a$e;)V

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, LF7/i;->q(I)V

    invoke-static {v2}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    invoke-static {v2}, Lx4/a$e;->b(Lx4/a$e;)Z

    move-result v2

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public C0()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lx4/a$a;

    invoke-direct {v1, p0}, Lx4/a$a;-><init>(Lx4/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090134

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09041c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0903e1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lx4/a;->X:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lx4/a;->Y:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lx4/a$b;

    invoke-direct {v1, p0}, Lx4/a$b;-><init>(Lx4/a;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lx4/a$c;

    invoke-direct {v1, p0}, Lx4/a$c;-><init>(Lx4/a;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LF7/l;

    new-instance v2, Lx4/a$d;

    invoke-direct {v2, p0}, Lx4/a$d;-><init>(Lx4/a;)V

    invoke-direct {v1, v5, v2}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v1, p0, Lx4/a;->b0:LF7/l;

    return-object v0
.end method

.method public final E1()V
    .locals 3

    iget-object v0, p0, Lx4/a;->a0:Ljava/util/List;

    invoke-virtual {p0, v0}, Lx4/a;->J1(Ljava/util/List;)V

    iget-object v0, p0, Lx4/a;->Y:Ljava/lang/String;

    iget-object v1, p0, Lx4/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Ops!"

    const-string v1, "Failed to save animation mask"

    invoke-static {v0, v1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, Lw5/n;

    invoke-direct {v1}, Lw5/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    iget-object v0, p0, Lx4/a;->c0:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const-string v0, "Animation mask saved"

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public final J1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx4/a$e;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx4/a$e;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lx4/a$e;->d(Lx4/a$e;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lx4/a$e;->f(Lx4/a$e;)LAc/b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lx4/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    invoke-static {v1}, Lx4/a$e;->f(Lx4/a$e;)LAc/b;

    move-result-object v3

    invoke-static {v1}, Lx4/a$e;->g(Lx4/a$e;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, LNc/b;->E(FFF)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->k(LAc/b;F)V

    :cond_2
    invoke-static {v1}, Lx4/a$e;->i(Lx4/a$e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lx4/a;->J1(Ljava/util/List;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, Lx4/a;

    iget-object v1, p0, Lx4/a;->X:Ljava/lang/String;

    iget-object v2, p0, Lx4/a;->Y:Ljava/lang/String;

    iget-object v3, p0, Lx4/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    iget-object v4, p0, Lx4/a;->a0:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lx4/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;Ljava/util/List;)V

    iget-object v1, p0, Lx4/a;->c0:Ljava/lang/Runnable;

    iput-object v1, v0, Lx4/a;->c0:Ljava/lang/Runnable;

    return-object v0
.end method
