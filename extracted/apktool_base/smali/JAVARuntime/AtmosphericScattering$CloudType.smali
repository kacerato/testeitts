.class public final enum LJAVARuntime/AtmosphericScattering$CloudType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/AtmosphericScattering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/AtmosphericScattering$CloudType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/AtmosphericScattering$CloudType;

.field public static final enum Advanced:LJAVARuntime/AtmosphericScattering$CloudType;

.field public static final enum Disabled:LJAVARuntime/AtmosphericScattering$CloudType;

.field public static final enum Simple:LJAVARuntime/AtmosphericScattering$CloudType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/AtmosphericScattering$CloudType;
    .locals 3

    sget-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->Disabled:LJAVARuntime/AtmosphericScattering$CloudType;

    sget-object v1, LJAVARuntime/AtmosphericScattering$CloudType;->Simple:LJAVARuntime/AtmosphericScattering$CloudType;

    sget-object v2, LJAVARuntime/AtmosphericScattering$CloudType;->Advanced:LJAVARuntime/AtmosphericScattering$CloudType;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/AtmosphericScattering$CloudType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/AtmosphericScattering$CloudType;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/AtmosphericScattering$CloudType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->Disabled:LJAVARuntime/AtmosphericScattering$CloudType;

    new-instance v0, LJAVARuntime/AtmosphericScattering$CloudType;

    const-string v1, "Simple"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/AtmosphericScattering$CloudType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->Simple:LJAVARuntime/AtmosphericScattering$CloudType;

    new-instance v0, LJAVARuntime/AtmosphericScattering$CloudType;

    const-string v1, "Advanced"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/AtmosphericScattering$CloudType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->Advanced:LJAVARuntime/AtmosphericScattering$CloudType;

    invoke-static {}, LJAVARuntime/AtmosphericScattering$CloudType;->$values()[LJAVARuntime/AtmosphericScattering$CloudType;

    move-result-object v0

    sput-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->$VALUES:[LJAVARuntime/AtmosphericScattering$CloudType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/AtmosphericScattering$CloudType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/AtmosphericScattering$CloudType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/AtmosphericScattering$CloudType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/AtmosphericScattering$CloudType;
    .locals 1

    sget-object v0, LJAVARuntime/AtmosphericScattering$CloudType;->$VALUES:[LJAVARuntime/AtmosphericScattering$CloudType;

    invoke-virtual {v0}, [LJAVARuntime/AtmosphericScattering$CloudType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/AtmosphericScattering$CloudType;

    return-object v0
.end method
