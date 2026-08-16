.class public final enum Lcom/jme3/audio/ListenerParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/audio/ListenerParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/ListenerParam;

.field public static final enum Position:Lcom/jme3/audio/ListenerParam;

.field public static final enum Rotation:Lcom/jme3/audio/ListenerParam;

.field public static final enum Velocity:Lcom/jme3/audio/ListenerParam;

.field public static final enum Volume:Lcom/jme3/audio/ListenerParam;


# direct methods
.method private static synthetic $values()[Lcom/jme3/audio/ListenerParam;
    .locals 4

    sget-object v0, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    sget-object v2, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    sget-object v3, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/audio/ListenerParam;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Position"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Velocity"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Rotation"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Volume"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    invoke-static {}, Lcom/jme3/audio/ListenerParam;->$values()[Lcom/jme3/audio/ListenerParam;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/ListenerParam;->$VALUES:[Lcom/jme3/audio/ListenerParam;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/ListenerParam;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/audio/ListenerParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/audio/ListenerParam;

    return-object p0
.end method

.method public static values()[Lcom/jme3/audio/ListenerParam;
    .locals 1

    sget-object v0, Lcom/jme3/audio/ListenerParam;->$VALUES:[Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v0}, [Lcom/jme3/audio/ListenerParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/ListenerParam;

    return-object v0
.end method
