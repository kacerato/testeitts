.class public final enum LJAVARuntime/StyleMaskMode;
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
        "LJAVARuntime/StyleMaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/StyleMaskMode;

.field public static final enum Linear:LJAVARuntime/StyleMaskMode;

.field public static final enum Radial:LJAVARuntime/StyleMaskMode;

.field public static final enum Sweep:LJAVARuntime/StyleMaskMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/StyleMaskMode;
    .locals 3

    sget-object v0, LJAVARuntime/StyleMaskMode;->Linear:LJAVARuntime/StyleMaskMode;

    sget-object v1, LJAVARuntime/StyleMaskMode;->Radial:LJAVARuntime/StyleMaskMode;

    sget-object v2, LJAVARuntime/StyleMaskMode;->Sweep:LJAVARuntime/StyleMaskMode;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/StyleMaskMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/StyleMaskMode;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleMaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleMaskMode;->Linear:LJAVARuntime/StyleMaskMode;

    new-instance v0, LJAVARuntime/StyleMaskMode;

    const-string v1, "Radial"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleMaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleMaskMode;->Radial:LJAVARuntime/StyleMaskMode;

    new-instance v0, LJAVARuntime/StyleMaskMode;

    const-string v1, "Sweep"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleMaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleMaskMode;->Sweep:LJAVARuntime/StyleMaskMode;

    invoke-static {}, LJAVARuntime/StyleMaskMode;->$values()[LJAVARuntime/StyleMaskMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/StyleMaskMode;->$VALUES:[LJAVARuntime/StyleMaskMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/StyleMaskMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/StyleMaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/StyleMaskMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/StyleMaskMode;
    .locals 1

    sget-object v0, LJAVARuntime/StyleMaskMode;->$VALUES:[LJAVARuntime/StyleMaskMode;

    invoke-virtual {v0}, [LJAVARuntime/StyleMaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/StyleMaskMode;

    return-object v0
.end method
