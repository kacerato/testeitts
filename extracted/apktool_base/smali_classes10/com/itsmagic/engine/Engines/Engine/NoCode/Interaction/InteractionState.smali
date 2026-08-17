.class public final enum Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;
.super Ljava/lang/Enum;
.source "InteractionState.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Busy:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Closed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Disabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Dropped:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Enabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Focused:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Idle:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Interacting:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Off:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum On:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Open:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Powered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Unlocked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

.field public static final enum Unpowered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;


# direct methods
.method private static synthetic $values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;
    .locals 3

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Enabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Disabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Idle:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Focused:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Interacting:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Busy:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Open:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Closed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Unlocked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Dropped:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->On:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Off:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Powered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Unpowered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Enabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Disabled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Disabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Idle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Idle:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Focused"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Focused:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Interacting"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Interacting:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Busy"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Busy:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Open"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Open:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Closed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Closed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Locked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Unlocked"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Unlocked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Held"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Held:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Dropped"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Dropped:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "On"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->On:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Off"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Off:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Powered"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Powered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    const-string v1, "Unpowered"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Unpowered:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    .line 8
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->$values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;
    .locals 6

    .line 27
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 32
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    return-object v4

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_2
    return-object v0

    .line 28
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;
    .locals 1

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    return-object v0
.end method
