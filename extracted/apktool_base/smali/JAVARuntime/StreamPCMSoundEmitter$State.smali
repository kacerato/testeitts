.class public final enum LJAVARuntime/StreamPCMSoundEmitter$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/StreamPCMSoundEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/StreamPCMSoundEmitter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/StreamPCMSoundEmitter$State;

.field public static final enum PAUSED:LJAVARuntime/StreamPCMSoundEmitter$State;

.field public static final enum PLAYING:LJAVARuntime/StreamPCMSoundEmitter$State;

.field public static final enum STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;


# direct methods
.method private static synthetic $values()[LJAVARuntime/StreamPCMSoundEmitter$State;
    .locals 3

    sget-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->PLAYING:LJAVARuntime/StreamPCMSoundEmitter$State;

    sget-object v1, LJAVARuntime/StreamPCMSoundEmitter$State;->PAUSED:LJAVARuntime/StreamPCMSoundEmitter$State;

    sget-object v2, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/StreamPCMSoundEmitter$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/StreamPCMSoundEmitter$State;

    const-string v1, "PLAYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/StreamPCMSoundEmitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->PLAYING:LJAVARuntime/StreamPCMSoundEmitter$State;

    new-instance v0, LJAVARuntime/StreamPCMSoundEmitter$State;

    const-string v1, "PAUSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/StreamPCMSoundEmitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->PAUSED:LJAVARuntime/StreamPCMSoundEmitter$State;

    new-instance v0, LJAVARuntime/StreamPCMSoundEmitter$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/StreamPCMSoundEmitter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->STOPPED:LJAVARuntime/StreamPCMSoundEmitter$State;

    invoke-static {}, LJAVARuntime/StreamPCMSoundEmitter$State;->$values()[LJAVARuntime/StreamPCMSoundEmitter$State;

    move-result-object v0

    sput-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->$VALUES:[LJAVARuntime/StreamPCMSoundEmitter$State;

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
            "$enum$name",
            "$enum$ordinal"
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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/StreamPCMSoundEmitter$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/StreamPCMSoundEmitter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object p0
.end method

.method public static values()[LJAVARuntime/StreamPCMSoundEmitter$State;
    .locals 1

    sget-object v0, LJAVARuntime/StreamPCMSoundEmitter$State;->$VALUES:[LJAVARuntime/StreamPCMSoundEmitter$State;

    invoke-virtual {v0}, [LJAVARuntime/StreamPCMSoundEmitter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/StreamPCMSoundEmitter$State;

    return-object v0
.end method
