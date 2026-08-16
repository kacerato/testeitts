.class public final enum LJAVARuntime/GameController$GraphicsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/GameController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphicsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/GameController$GraphicsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/GameController$GraphicsMode;

.field public static final enum Advanced:LJAVARuntime/GameController$GraphicsMode;

.field public static final enum Lite:LJAVARuntime/GameController$GraphicsMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/GameController$GraphicsMode;
    .locals 2

    sget-object v0, LJAVARuntime/GameController$GraphicsMode;->Lite:LJAVARuntime/GameController$GraphicsMode;

    sget-object v1, LJAVARuntime/GameController$GraphicsMode;->Advanced:LJAVARuntime/GameController$GraphicsMode;

    filled-new-array {v0, v1}, [LJAVARuntime/GameController$GraphicsMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/GameController$GraphicsMode;

    const-string v1, "Lite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/GameController$GraphicsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GameController$GraphicsMode;->Lite:LJAVARuntime/GameController$GraphicsMode;

    new-instance v0, LJAVARuntime/GameController$GraphicsMode;

    const-string v1, "Advanced"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/GameController$GraphicsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/GameController$GraphicsMode;->Advanced:LJAVARuntime/GameController$GraphicsMode;

    invoke-static {}, LJAVARuntime/GameController$GraphicsMode;->$values()[LJAVARuntime/GameController$GraphicsMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/GameController$GraphicsMode;->$VALUES:[LJAVARuntime/GameController$GraphicsMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/GameController$GraphicsMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/GameController$GraphicsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/GameController$GraphicsMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/GameController$GraphicsMode;
    .locals 1

    sget-object v0, LJAVARuntime/GameController$GraphicsMode;->$VALUES:[LJAVARuntime/GameController$GraphicsMode;

    invoke-virtual {v0}, [LJAVARuntime/GameController$GraphicsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/GameController$GraphicsMode;

    return-object v0
.end method
