.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;
.super Ljava/lang/Object;
.source "InteractionInputBridge.java"


# static fields
.field private static final ACTION_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    .line 14
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "key_e"

    const-string v2, "interact"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "key_f"

    const-string v3, "grab"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "key_g"

    const-string v4, "drop"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "key_r"

    const-string v5, "inspect"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mouse_left"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mouse_right"

    const-string v6, "secondary_interact"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "gamepad_x"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "gamepad_y"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "gamepad_b"

    const-string v7, "cancel"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_interact"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_secondary"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_grab"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_drop"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_throw"

    const-string v2, "throw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_inspect"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    const-string v1, "mobile_btn_cancel"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleRawInput(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->resolveAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    if-nez p0, :cond_0

    return-void

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->onActionPressed(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->onActionReleased(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 54
    :goto_0
    return-void
.end method

.method public static mapAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public static onActionPressed(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->handleActionPressed(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static onActionReleased(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->handleActionReleased(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static resolveAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static unmapAction(Ljava/lang/String;)V
    .locals 1

    .line 38
    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionInputBridge;->ACTION_MAPPINGS:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
