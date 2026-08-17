.class public final enum Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;
.super Ljava/lang/Enum;
.source "DoorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public static final enum Drawer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public static final enum Garage:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public static final enum Hinged:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public static final enum Sliding:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

.field public static final enum Vertical:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;
    .locals 3

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Hinged:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Sliding:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Vertical:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Drawer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Garage:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const-string v1, "Hinged"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Hinged:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const-string v1, "Sliding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Sliding:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const-string v1, "Vertical"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Vertical:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const-string v1, "Drawer"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Drawer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    const-string v1, "Garage"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->Garage:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    .line 18
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->$values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;
    .locals 1

    .line 18
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;
    .locals 1

    .line 18
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;

    return-object v0
.end method
