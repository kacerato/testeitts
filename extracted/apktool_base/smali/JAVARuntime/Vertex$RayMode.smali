.class public final enum LJAVARuntime/Vertex$RayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Vertex$RayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Vertex$RayMode;

.field public static final enum ClosestPoint:LJAVARuntime/Vertex$RayMode;

.field public static final enum FarHit:LJAVARuntime/Vertex$RayMode;

.field public static final enum FirstHit:LJAVARuntime/Vertex$RayMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Vertex$RayMode;
    .locals 3

    sget-object v0, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    sget-object v1, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    sget-object v2, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/Vertex$RayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Vertex$RayMode;

    const-string v1, "ClosestPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vertex$RayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    new-instance v0, LJAVARuntime/Vertex$RayMode;

    const-string v1, "FirstHit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vertex$RayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    new-instance v0, LJAVARuntime/Vertex$RayMode;

    const-string v1, "FarHit"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Vertex$RayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    invoke-static {}, LJAVARuntime/Vertex$RayMode;->$values()[LJAVARuntime/Vertex$RayMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/Vertex$RayMode;->$VALUES:[LJAVARuntime/Vertex$RayMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Vertex$RayMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Vertex$RayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Vertex$RayMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Vertex$RayMode;
    .locals 1

    sget-object v0, LJAVARuntime/Vertex$RayMode;->$VALUES:[LJAVARuntime/Vertex$RayMode;

    invoke-virtual {v0}, [LJAVARuntime/Vertex$RayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Vertex$RayMode;

    return-object v0
.end method
