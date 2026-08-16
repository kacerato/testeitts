.class public final enum LJAVARuntime/TrailRenderer$TransparencyBased;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransparencyBased"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$TransparencyBased;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$TransparencyBased;

.field public static final enum Alpha:LJAVARuntime/TrailRenderer$TransparencyBased;

.field public static final enum Disabled:LJAVARuntime/TrailRenderer$TransparencyBased;

.field public static final enum GreyScale:LJAVARuntime/TrailRenderer$TransparencyBased;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$TransparencyBased;
    .locals 3

    sget-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->Disabled:LJAVARuntime/TrailRenderer$TransparencyBased;

    sget-object v1, LJAVARuntime/TrailRenderer$TransparencyBased;->Alpha:LJAVARuntime/TrailRenderer$TransparencyBased;

    sget-object v2, LJAVARuntime/TrailRenderer$TransparencyBased;->GreyScale:LJAVARuntime/TrailRenderer$TransparencyBased;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/TrailRenderer$TransparencyBased;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$TransparencyBased;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$TransparencyBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->Disabled:LJAVARuntime/TrailRenderer$TransparencyBased;

    new-instance v0, LJAVARuntime/TrailRenderer$TransparencyBased;

    const-string v1, "Alpha"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$TransparencyBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->Alpha:LJAVARuntime/TrailRenderer$TransparencyBased;

    new-instance v0, LJAVARuntime/TrailRenderer$TransparencyBased;

    const-string v1, "GreyScale"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$TransparencyBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->GreyScale:LJAVARuntime/TrailRenderer$TransparencyBased;

    invoke-static {}, LJAVARuntime/TrailRenderer$TransparencyBased;->$values()[LJAVARuntime/TrailRenderer$TransparencyBased;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->$VALUES:[LJAVARuntime/TrailRenderer$TransparencyBased;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$TransparencyBased;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$TransparencyBased;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$TransparencyBased;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$TransparencyBased;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$TransparencyBased;->$VALUES:[LJAVARuntime/TrailRenderer$TransparencyBased;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$TransparencyBased;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$TransparencyBased;

    return-object v0
.end method
