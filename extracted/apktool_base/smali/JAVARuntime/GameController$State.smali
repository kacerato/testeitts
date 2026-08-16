.class public final enum LJAVARuntime/GameController$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GameController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GameController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GameController$State;

.field public static final enum Paused:LJAVARuntime/GameController$State;

.field public static final enum Running:LJAVARuntime/GameController$State;

.field public static final enum Stopped:LJAVARuntime/GameController$State;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GameController$State;
    .locals 3

    sget-object v0, LJAVARuntime/GameController$State;->Stopped:LJAVARuntime/GameController$State;

    sget-object v1, LJAVARuntime/GameController$State;->Paused:LJAVARuntime/GameController$State;

    sget-object v2, LJAVARuntime/GameController$State;->Running:LJAVARuntime/GameController$State;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/GameController$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GameController$State;

    const-string v1, "Stopped"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GameController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GameController$State;->Stopped:LJAVARuntime/GameController$State;

    new-instance v0, LJAVARuntime/GameController$State;

    const-string v1, "Paused"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GameController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GameController$State;->Paused:LJAVARuntime/GameController$State;

    new-instance v0, LJAVARuntime/GameController$State;

    const-string v1, "Running"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/GameController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GameController$State;->Running:LJAVARuntime/GameController$State;

    invoke-static {}, LJAVARuntime/GameController$State;->$values()[LJAVARuntime/GameController$State;

    move-result-object v0

    sput-object v0, LJAVARuntime/GameController$State;->$VALUES:[LJAVARuntime/GameController$State;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GameController$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GameController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GameController$State;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GameController$State;
    .locals 1

    sget-object v0, LJAVARuntime/GameController$State;->$VALUES:[LJAVARuntime/GameController$State;

    invoke-virtual {v0}, [LJAVARuntime/GameController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GameController$State;

    return-object v0
.end method
