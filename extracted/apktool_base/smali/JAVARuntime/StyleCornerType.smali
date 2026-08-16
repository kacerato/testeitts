.class public final enum LJAVARuntime/StyleCornerType;
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
        "LJAVARuntime/StyleCornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/StyleCornerType;

.field public static final enum Bevel:LJAVARuntime/StyleCornerType;

.field public static final enum InvertedRound:LJAVARuntime/StyleCornerType;

.field public static final enum Notch:LJAVARuntime/StyleCornerType;

.field public static final enum Round:LJAVARuntime/StyleCornerType;

.field public static final enum Sharp:LJAVARuntime/StyleCornerType;

.field public static final enum Squircle:LJAVARuntime/StyleCornerType;


# direct methods
.method private static synthetic $values()[LJAVARuntime/StyleCornerType;
    .locals 6

    sget-object v0, LJAVARuntime/StyleCornerType;->Sharp:LJAVARuntime/StyleCornerType;

    sget-object v1, LJAVARuntime/StyleCornerType;->Round:LJAVARuntime/StyleCornerType;

    sget-object v2, LJAVARuntime/StyleCornerType;->InvertedRound:LJAVARuntime/StyleCornerType;

    sget-object v3, LJAVARuntime/StyleCornerType;->Bevel:LJAVARuntime/StyleCornerType;

    sget-object v4, LJAVARuntime/StyleCornerType;->Notch:LJAVARuntime/StyleCornerType;

    sget-object v5, LJAVARuntime/StyleCornerType;->Squircle:LJAVARuntime/StyleCornerType;

    filled-new-array/range {v0 .. v5}, [LJAVARuntime/StyleCornerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "Sharp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->Sharp:LJAVARuntime/StyleCornerType;

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "Round"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->Round:LJAVARuntime/StyleCornerType;

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "InvertedRound"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->InvertedRound:LJAVARuntime/StyleCornerType;

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "Bevel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->Bevel:LJAVARuntime/StyleCornerType;

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "Notch"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->Notch:LJAVARuntime/StyleCornerType;

    new-instance v0, LJAVARuntime/StyleCornerType;

    const-string v1, "Squircle"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/StyleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/StyleCornerType;->Squircle:LJAVARuntime/StyleCornerType;

    invoke-static {}, LJAVARuntime/StyleCornerType;->$values()[LJAVARuntime/StyleCornerType;

    move-result-object v0

    sput-object v0, LJAVARuntime/StyleCornerType;->$VALUES:[LJAVARuntime/StyleCornerType;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/StyleCornerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/StyleCornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/StyleCornerType;

    return-object p0
.end method

.method public static values()[LJAVARuntime/StyleCornerType;
    .locals 1

    sget-object v0, LJAVARuntime/StyleCornerType;->$VALUES:[LJAVARuntime/StyleCornerType;

    invoke-virtual {v0}, [LJAVARuntime/StyleCornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/StyleCornerType;

    return-object v0
.end method
