.class public final enum LJAVARuntime/TrailRenderer$UVMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UVMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$UVMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$UVMode;

.field public static final enum LengthBased:LJAVARuntime/TrailRenderer$UVMode;

.field public static final enum PointBased:LJAVARuntime/TrailRenderer$UVMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$UVMode;
    .locals 2

    sget-object v0, LJAVARuntime/TrailRenderer$UVMode;->LengthBased:LJAVARuntime/TrailRenderer$UVMode;

    sget-object v1, LJAVARuntime/TrailRenderer$UVMode;->PointBased:LJAVARuntime/TrailRenderer$UVMode;

    filled-new-array {v0, v1}, [LJAVARuntime/TrailRenderer$UVMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$UVMode;

    const-string v1, "LengthBased"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$UVMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$UVMode;->LengthBased:LJAVARuntime/TrailRenderer$UVMode;

    new-instance v0, LJAVARuntime/TrailRenderer$UVMode;

    const-string v1, "PointBased"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$UVMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$UVMode;->PointBased:LJAVARuntime/TrailRenderer$UVMode;

    invoke-static {}, LJAVARuntime/TrailRenderer$UVMode;->$values()[LJAVARuntime/TrailRenderer$UVMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$UVMode;->$VALUES:[LJAVARuntime/TrailRenderer$UVMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$UVMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$UVMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$UVMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$UVMode;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$UVMode;->$VALUES:[LJAVARuntime/TrailRenderer$UVMode;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$UVMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$UVMode;

    return-object v0
.end method
