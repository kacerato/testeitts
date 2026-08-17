.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;
.super Ljava/lang/Object;
.source "InteractionProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile$ProfileType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyProfile(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile$ProfileType;)V
    .locals 5

    .line 30
    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->register(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 33
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setEnabled(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 34
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Interactable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 36
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$InteractionProfile$ProfileType:[I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile$ProfileType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const-string v1, "door_mode"

    const-string v2, "door"

    const-string v3, "door_icon"

    const-string v4, "Abrir / Fechar"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 144
    :pswitch_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Usable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 145
    const-string p1, "electrical"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 146
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setPowered(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    goto/16 :goto_0

    .line 138
    :pswitch_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Usable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 139
    const-string p1, "pressure_plate"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 140
    const-string p1, "pressure_active"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    goto/16 :goto_0

    .line 132
    :pswitch_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Usable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 133
    const-string p1, "Usar teleporte"

    const-string v0, "teleport"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string p1, "teleporter"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 135
    goto/16 :goto_0

    .line 125
    :pswitch_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->SitTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 126
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->VehicleEntry:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 127
    const-string p1, "Entrar no veiculo"

    const-string v0, "vehicle"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string p1, "vehicle_seat"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 129
    goto/16 :goto_0

    .line 119
    :pswitch_4
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->SitTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 120
    const-string p1, "Sentar"

    const-string v0, "seat"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 122
    goto/16 :goto_0

    .line 113
    :pswitch_5
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Climbable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 114
    const-string p1, "Subir"

    const-string v0, "ladder"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 116
    goto/16 :goto_0

    .line 107
    :pswitch_6
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->DialogueTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 108
    const-string p1, "Conversar"

    const-string v0, "dialogue"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string p1, "npc"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 110
    goto/16 :goto_0

    .line 100
    :pswitch_7
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Pushable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 101
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Pullable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 102
    const-string p1, "Empurrar / Puxar"

    const-string v0, "move"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string p1, "pushable"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 104
    goto/16 :goto_0

    .line 94
    :pswitch_8
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->SocketReceiver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 95
    const-string p1, "Encaixar Objeto"

    const-string v0, "socket"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 97
    goto/16 :goto_0

    .line 88
    :pswitch_9
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Usable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 89
    const-string p1, "Chamar Elevador"

    const-string v0, "elevator"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string p1, "elevator_button"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 91
    goto/16 :goto_0

    .line 81
    :pswitch_a
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Rotatable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 82
    const-string p1, "Girar Valvula"

    const-string v0, "valve"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 84
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAnalogValue(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V

    .line 85
    goto/16 :goto_0

    .line 74
    :pswitch_b
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Toggleable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 75
    const-string p1, "Ligar / Desligar"

    const-string v1, "switch"

    invoke-static {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 77
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setOn(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 78
    goto :goto_0

    .line 68
    :pswitch_c
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Readable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 69
    const-string p1, "Ler"

    const-string v0, "book_read"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string p1, "readable"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 71
    goto :goto_0

    .line 62
    :pswitch_d
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Openable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 63
    const-string p1, "Abrir Bau"

    const-string v0, "container"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 65
    goto :goto_0

    .line 54
    :pswitch_e
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Openable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 55
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Lockable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 56
    invoke-static {p0, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 58
    const-string p1, "Sliding"

    invoke-static {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    goto :goto_0

    .line 46
    :pswitch_f
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Openable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 47
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Lockable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 48
    invoke-static {p0, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 50
    const-string p1, "Hinged"

    invoke-static {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    goto :goto_0

    .line 38
    :pswitch_10
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Grabbable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 39
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Inspectable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 40
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;->Throwable:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addCapability(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;)V

    .line 41
    const-string p1, "Pegar"

    const-string v0, "hand_grab"

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionProfile;->prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p1, "pickup"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->addTag(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V

    .line 43
    nop

    .line 149
    :goto_0
    return-void

    .line 30
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static prompt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 152
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getOrCreate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object p0

    .line 153
    if-eqz p0, :cond_0

    .line 154
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptText:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptIcon:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->attributes:Ljava/util/Map;

    const-string v1, "prompt_text"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->attributes:Ljava/util/Map;

    const-string p1, "prompt_icon"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    return-void
.end method
