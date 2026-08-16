.class public final enum LJAVARuntime/StyleGradientMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "UI",
        "Style"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/StyleGradientMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/StyleGradientMode;

.field public static final enum Linear:LJAVARuntime/StyleGradientMode;

.field public static final enum Radial:LJAVARuntime/StyleGradientMode;

.field public static final enum Solid:LJAVARuntime/StyleGradientMode;

.field public static final enum Sweep:LJAVARuntime/StyleGradientMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/StyleGradientMode;
    .locals 4

    sget-object v0, LJAVARuntime/StyleGradientMode;->Solid:LJAVARuntime/StyleGradientMode;

    sget-object v1, LJAVARuntime/StyleGradientMode;->Linear:LJAVARuntime/StyleGradientMode;

    sget-object v2, LJAVARuntime/StyleGradientMode;->Radial:LJAVARuntime/StyleGradientMode;

    sget-object v3, LJAVARuntime/StyleGradientMode;->Sweep:LJAVARuntime/StyleGradientMode;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/StyleGradientMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/StyleGradientMode;

    const-string v1, "Solid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleGradientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleGradientMode;->Solid:LJAVARuntime/StyleGradientMode;

    new-instance v0, LJAVARuntime/StyleGradientMode;

    const-string v1, "Linear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleGradientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleGradientMode;->Linear:LJAVARuntime/StyleGradientMode;

    new-instance v0, LJAVARuntime/StyleGradientMode;

    const-string v1, "Radial"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleGradientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleGradientMode;->Radial:LJAVARuntime/StyleGradientMode;

    new-instance v0, LJAVARuntime/StyleGradientMode;

    const-string v1, "Sweep"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleGradientMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleGradientMode;->Sweep:LJAVARuntime/StyleGradientMode;

    invoke-static {}, LJAVARuntime/StyleGradientMode;->$values()[LJAVARuntime/StyleGradientMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/StyleGradientMode;->$VALUES:[LJAVARuntime/StyleGradientMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/StyleGradientMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/StyleGradientMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/StyleGradientMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/StyleGradientMode;
    .locals 1

    sget-object v0, LJAVARuntime/StyleGradientMode;->$VALUES:[LJAVARuntime/StyleGradientMode;

    invoke-virtual {v0}, [LJAVARuntime/StyleGradientMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/StyleGradientMode;

    return-object v0
.end method
