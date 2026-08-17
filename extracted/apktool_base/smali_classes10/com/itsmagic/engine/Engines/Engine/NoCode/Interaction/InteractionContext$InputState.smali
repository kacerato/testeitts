.class public final enum Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;
.super Ljava/lang/Enum;
.source "InteractionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public static final enum Cancelled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public static final enum Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public static final enum None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public static final enum Pressed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public static final enum Released:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;
    .locals 3

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Pressed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Released:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Cancelled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const-string v1, "Pressed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Pressed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const-string v1, "Held"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const-string v1, "Released"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Released:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    const-string v1, "Cancelled"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Cancelled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 15
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->$values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;
    .locals 1

    .line 15
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;
    .locals 1

    .line 15
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    return-object v0
.end method
