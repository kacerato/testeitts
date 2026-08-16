.class public final enum Lcom/jme3/audio/AudioParam;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/audio/AudioParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/AudioParam;

.field public static final enum Direction:Lcom/jme3/audio/AudioParam;

.field public static final enum DryFilter:Lcom/jme3/audio/AudioParam;

.field public static final enum InnerAngle:Lcom/jme3/audio/AudioParam;

.field public static final enum IsDirectional:Lcom/jme3/audio/AudioParam;

.field public static final enum IsPositional:Lcom/jme3/audio/AudioParam;

.field public static final enum Looping:Lcom/jme3/audio/AudioParam;

.field public static final enum MaxDistance:Lcom/jme3/audio/AudioParam;

.field public static final enum OuterAngle:Lcom/jme3/audio/AudioParam;

.field public static final enum Pitch:Lcom/jme3/audio/AudioParam;

.field public static final enum Position:Lcom/jme3/audio/AudioParam;

.field public static final enum RefDistance:Lcom/jme3/audio/AudioParam;

.field public static final enum ReverbEnabled:Lcom/jme3/audio/AudioParam;

.field public static final enum ReverbFilter:Lcom/jme3/audio/AudioParam;

.field public static final enum Velocity:Lcom/jme3/audio/AudioParam;

.field public static final enum Volume:Lcom/jme3/audio/AudioParam;


# direct methods
.method private static synthetic $values()[Lcom/jme3/audio/AudioParam;
    .locals 15

    sget-object v0, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    sget-object v1, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    sget-object v2, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    sget-object v3, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    sget-object v4, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    sget-object v5, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    sget-object v6, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    sget-object v7, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    sget-object v8, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    sget-object v9, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    sget-object v10, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    sget-object v11, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    sget-object v12, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    sget-object v13, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    sget-object v14, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    filled-new-array/range {v0 .. v14}, [Lcom/jme3/audio/AudioParam;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Volume"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Pitch"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Looping"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Position"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "IsPositional"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Direction"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "IsDirectional"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Velocity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "OuterAngle"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "InnerAngle"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "RefDistance"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "MaxDistance"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "DryFilter"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "ReverbFilter"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "ReverbEnabled"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    invoke-static {}, Lcom/jme3/audio/AudioParam;->$values()[Lcom/jme3/audio/AudioParam;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/AudioParam;->$VALUES:[Lcom/jme3/audio/AudioParam;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/AudioParam;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/audio/AudioParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/audio/AudioParam;

    return-object p0
.end method

.method public static values()[Lcom/jme3/audio/AudioParam;
    .locals 1

    sget-object v0, Lcom/jme3/audio/AudioParam;->$VALUES:[Lcom/jme3/audio/AudioParam;

    invoke-virtual {v0}, [Lcom/jme3/audio/AudioParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/AudioParam;

    return-object v0
.end method
