.class synthetic Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;
.super Ljava/lang/Object;
.source "DoorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 169
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    :try_start_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Sliding:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Vertical:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Garage:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Drawer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$NoCode$Interaction$Runtime$DoorService$DoorMode:[I

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Hinged:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
