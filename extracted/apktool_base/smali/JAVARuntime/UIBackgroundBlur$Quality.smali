.class public final enum LJAVARuntime/UIBackgroundBlur$Quality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/UIBackgroundBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/UIBackgroundBlur$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/UIBackgroundBlur$Quality;

.field public static final enum HIGH:LJAVARuntime/UIBackgroundBlur$Quality;

.field public static final enum LOW:LJAVARuntime/UIBackgroundBlur$Quality;

.field public static final enum MEDIUM:LJAVARuntime/UIBackgroundBlur$Quality;


# direct methods
.method private static synthetic $values()[LJAVARuntime/UIBackgroundBlur$Quality;
    .locals 3

    sget-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->LOW:LJAVARuntime/UIBackgroundBlur$Quality;

    sget-object v1, LJAVARuntime/UIBackgroundBlur$Quality;->MEDIUM:LJAVARuntime/UIBackgroundBlur$Quality;

    sget-object v2, LJAVARuntime/UIBackgroundBlur$Quality;->HIGH:LJAVARuntime/UIBackgroundBlur$Quality;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/UIBackgroundBlur$Quality;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/UIBackgroundBlur$Quality;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIBackgroundBlur$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->LOW:LJAVARuntime/UIBackgroundBlur$Quality;

    new-instance v0, LJAVARuntime/UIBackgroundBlur$Quality;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIBackgroundBlur$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->MEDIUM:LJAVARuntime/UIBackgroundBlur$Quality;

    new-instance v0, LJAVARuntime/UIBackgroundBlur$Quality;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/UIBackgroundBlur$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->HIGH:LJAVARuntime/UIBackgroundBlur$Quality;

    invoke-static {}, LJAVARuntime/UIBackgroundBlur$Quality;->$values()[LJAVARuntime/UIBackgroundBlur$Quality;

    move-result-object v0

    sput-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->$VALUES:[LJAVARuntime/UIBackgroundBlur$Quality;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/UIBackgroundBlur$Quality;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/UIBackgroundBlur$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/UIBackgroundBlur$Quality;

    return-object p0
.end method

.method public static values()[LJAVARuntime/UIBackgroundBlur$Quality;
    .locals 1

    sget-object v0, LJAVARuntime/UIBackgroundBlur$Quality;->$VALUES:[LJAVARuntime/UIBackgroundBlur$Quality;

    invoke-virtual {v0}, [LJAVARuntime/UIBackgroundBlur$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/UIBackgroundBlur$Quality;

    return-object v0
.end method
