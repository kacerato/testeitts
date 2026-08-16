.class public final LJAVARuntime/AnimationPlayer;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Animations",
        "Components"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/AnimationPlayer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public addAnimation(LJAVARuntime/Animation;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified Animation to the AnimationPlayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona a Anima\u00e7\u00e3o especificada no AnimationPlayer."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addAnimation(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t add a null animation"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransition(LJAVARuntime/Animation;F)LJAVARuntime/AnimationTransition;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds an animation transition between the current animation and the specified one (to) with a delay (delay)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma transi\u00e7\u00e3o de anima\u00e7\u00e3o entre a anima\u00e7\u00e3o atual e a especificada (to) com um atraso (delay)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "to",
            "delay"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "delay"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addTransition(Lcom/itsmagic/engine/Engines/Engine/Animation/d;F)Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->h()LJAVARuntime/AnimationTransition;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(to) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransition(LJAVARuntime/Animation;FLJAVARuntime/Curve;)LJAVARuntime/AnimationTransition;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds an animation transition between the current animation and the specified one (to) with a delay (delay) and an interpolation curve (curve)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma transi\u00e7\u00e3o de anima\u00e7\u00e3o entre a anima\u00e7\u00e3o atual e a especificada (to) com um atraso (delay) e uma curva de interpola\u00e7\u00e3o\u00a0(curve)."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "to",
            "delay",
            "curve"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "to",
            "delay",
            "curve"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object p3, p3, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addTransition(Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->h()LJAVARuntime/AnimationTransition;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "curve cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(to) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransition(LJAVARuntime/Animation;LJAVARuntime/Animation;F)LJAVARuntime/AnimationTransition;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds an animation transition between two animations (from and to) with a specified delay (delay)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma transi\u00e7\u00e3o de anima\u00e7\u00e3o entre duas anima\u00e7\u00f5es (from e to) com um atraso (delay) especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to",
            "delay"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "delay"
        }
    .end annotation

    .line 8
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object p2, p2, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addTransition(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;F)Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->h()LJAVARuntime/AnimationTransition;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(to) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(From) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTransition(LJAVARuntime/Animation;LJAVARuntime/Animation;FLJAVARuntime/Curve;)LJAVARuntime/AnimationTransition;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds an animation transition between two animations (from and to) with a specified delay (delay) and an interpolation curve (curve)."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona uma transi\u00e7\u00e3o de anima\u00e7\u00e3o entre duas anima\u00e7\u00f5es (from e to) com um atraso (delay) e uma curva de interpola\u00e7\u00e3o\u00a0(curve) especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to",
            "delay",
            "curve"
        }
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "delay",
            "curve"
        }
    .end annotation

    .line 12
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 13
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object p1, p1, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object p2, p2, LJAVARuntime/Animation;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object p4, p4, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->addTransition(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/Animation/d;FLcom/itsmagic/engine/Engines/Engine/Curve/Curve;)Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->h()LJAVARuntime/AnimationTransition;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "curve cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(to) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(From) animation can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "componentA",
            "componentB"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/AnimationPlayer;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getAnimation(I)LJAVARuntime/Animation;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the animation at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a anima\u00e7\u00e3o do \u00edndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(I)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o()LJAVARuntime/Animation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimation(Ljava/lang/String;)LJAVARuntime/Animation;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the animation with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a anima\u00e7\u00e3o com o nome especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->findAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o()LJAVARuntime/Animation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimationList()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of all animations in the AnimationPlayer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista com todas as anima\u00e7\u00f5es do AnimationPlayer."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Animation;",
            ">;"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->getEntriesList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;

    :try_start_0
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationEntry;->c:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->o()LJAVARuntime/Animation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setAnimation(ILJAVARuntime/Animation;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the animation at the specified index to the provided animation."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a anima\u00e7\u00e3o no \u00edndice especificado para a anima\u00e7\u00e3o fornecida."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "animation"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AnimationPlayer;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->setAnimation(ILJAVARuntime/Animation;)V

    return-void
.end method
