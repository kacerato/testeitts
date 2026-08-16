.class public final enum LJAVARuntime/LensDistortion$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/LensDistortion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/LensDistortion$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/LensDistortion$Mode;

.field public static final enum Barrel:LJAVARuntime/LensDistortion$Mode;

.field public static final enum Pincushion:LJAVARuntime/LensDistortion$Mode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/LensDistortion$Mode;
    .locals 2

    sget-object v0, LJAVARuntime/LensDistortion$Mode;->Barrel:LJAVARuntime/LensDistortion$Mode;

    sget-object v1, LJAVARuntime/LensDistortion$Mode;->Pincushion:LJAVARuntime/LensDistortion$Mode;

    filled-new-array {v0, v1}, [LJAVARuntime/LensDistortion$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/LensDistortion$Mode;

    const-string v1, "Barrel"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/LensDistortion$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/LensDistortion$Mode;->Barrel:LJAVARuntime/LensDistortion$Mode;

    new-instance v0, LJAVARuntime/LensDistortion$Mode;

    const-string v1, "Pincushion"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/LensDistortion$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/LensDistortion$Mode;->Pincushion:LJAVARuntime/LensDistortion$Mode;

    invoke-static {}, LJAVARuntime/LensDistortion$Mode;->$values()[LJAVARuntime/LensDistortion$Mode;

    move-result-object v0

    sput-object v0, LJAVARuntime/LensDistortion$Mode;->$VALUES:[LJAVARuntime/LensDistortion$Mode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/LensDistortion$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/LensDistortion$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/LensDistortion$Mode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/LensDistortion$Mode;
    .locals 1

    sget-object v0, LJAVARuntime/LensDistortion$Mode;->$VALUES:[LJAVARuntime/LensDistortion$Mode;

    invoke-virtual {v0}, [LJAVARuntime/LensDistortion$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/LensDistortion$Mode;

    return-object v0
.end method
