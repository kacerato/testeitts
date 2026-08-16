.class public final enum LJAVARuntime/TrailRenderer$ColorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$ColorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$ColorMode;

.field public static final enum Additive:LJAVARuntime/TrailRenderer$ColorMode;

.field public static final enum Fade:LJAVARuntime/TrailRenderer$ColorMode;

.field public static final enum Multiply:LJAVARuntime/TrailRenderer$ColorMode;

.field public static final enum Normal:LJAVARuntime/TrailRenderer$ColorMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$ColorMode;
    .locals 4

    sget-object v0, LJAVARuntime/TrailRenderer$ColorMode;->Normal:LJAVARuntime/TrailRenderer$ColorMode;

    sget-object v1, LJAVARuntime/TrailRenderer$ColorMode;->Multiply:LJAVARuntime/TrailRenderer$ColorMode;

    sget-object v2, LJAVARuntime/TrailRenderer$ColorMode;->Additive:LJAVARuntime/TrailRenderer$ColorMode;

    sget-object v3, LJAVARuntime/TrailRenderer$ColorMode;->Fade:LJAVARuntime/TrailRenderer$ColorMode;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/TrailRenderer$ColorMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$ColorMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$ColorMode;->Normal:LJAVARuntime/TrailRenderer$ColorMode;

    new-instance v0, LJAVARuntime/TrailRenderer$ColorMode;

    const-string v1, "Multiply"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$ColorMode;->Multiply:LJAVARuntime/TrailRenderer$ColorMode;

    new-instance v0, LJAVARuntime/TrailRenderer$ColorMode;

    const-string v1, "Additive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$ColorMode;->Additive:LJAVARuntime/TrailRenderer$ColorMode;

    new-instance v0, LJAVARuntime/TrailRenderer$ColorMode;

    const-string v1, "Fade"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$ColorMode;->Fade:LJAVARuntime/TrailRenderer$ColorMode;

    invoke-static {}, LJAVARuntime/TrailRenderer$ColorMode;->$values()[LJAVARuntime/TrailRenderer$ColorMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$ColorMode;->$VALUES:[LJAVARuntime/TrailRenderer$ColorMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$ColorMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$ColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$ColorMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$ColorMode;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$ColorMode;->$VALUES:[LJAVARuntime/TrailRenderer$ColorMode;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$ColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$ColorMode;

    return-object v0
.end method
