.class public final enum LJAVARuntime/TrailRenderer$WorldSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/TrailRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorldSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/TrailRenderer$WorldSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/TrailRenderer$WorldSpace;

.field public static final enum Global:LJAVARuntime/TrailRenderer$WorldSpace;

.field public static final enum Local:LJAVARuntime/TrailRenderer$WorldSpace;


# direct methods
.method private static synthetic $values()[LJAVARuntime/TrailRenderer$WorldSpace;
    .locals 2

    sget-object v0, LJAVARuntime/TrailRenderer$WorldSpace;->Global:LJAVARuntime/TrailRenderer$WorldSpace;

    sget-object v1, LJAVARuntime/TrailRenderer$WorldSpace;->Local:LJAVARuntime/TrailRenderer$WorldSpace;

    filled-new-array {v0, v1}, [LJAVARuntime/TrailRenderer$WorldSpace;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/TrailRenderer$WorldSpace;

    const-string v1, "Global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$WorldSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$WorldSpace;->Global:LJAVARuntime/TrailRenderer$WorldSpace;

    new-instance v0, LJAVARuntime/TrailRenderer$WorldSpace;

    const-string v1, "Local"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/TrailRenderer$WorldSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/TrailRenderer$WorldSpace;->Local:LJAVARuntime/TrailRenderer$WorldSpace;

    invoke-static {}, LJAVARuntime/TrailRenderer$WorldSpace;->$values()[LJAVARuntime/TrailRenderer$WorldSpace;

    move-result-object v0

    sput-object v0, LJAVARuntime/TrailRenderer$WorldSpace;->$VALUES:[LJAVARuntime/TrailRenderer$WorldSpace;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/TrailRenderer$WorldSpace;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/TrailRenderer$WorldSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/TrailRenderer$WorldSpace;

    return-object p0
.end method

.method public static values()[LJAVARuntime/TrailRenderer$WorldSpace;
    .locals 1

    sget-object v0, LJAVARuntime/TrailRenderer$WorldSpace;->$VALUES:[LJAVARuntime/TrailRenderer$WorldSpace;

    invoke-virtual {v0}, [LJAVARuntime/TrailRenderer$WorldSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/TrailRenderer$WorldSpace;

    return-object v0
.end method
