.class public final enum LJAVARuntime/MeshCurve$ForwardAxis;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/MeshCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForwardAxis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/MeshCurve$ForwardAxis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/MeshCurve$ForwardAxis;

.field public static final enum X:LJAVARuntime/MeshCurve$ForwardAxis;

.field public static final enum Y:LJAVARuntime/MeshCurve$ForwardAxis;

.field public static final enum Z:LJAVARuntime/MeshCurve$ForwardAxis;


# direct methods
.method private static synthetic $values()[LJAVARuntime/MeshCurve$ForwardAxis;
    .locals 3

    sget-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->X:LJAVARuntime/MeshCurve$ForwardAxis;

    sget-object v1, LJAVARuntime/MeshCurve$ForwardAxis;->Y:LJAVARuntime/MeshCurve$ForwardAxis;

    sget-object v2, LJAVARuntime/MeshCurve$ForwardAxis;->Z:LJAVARuntime/MeshCurve$ForwardAxis;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/MeshCurve$ForwardAxis;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/MeshCurve$ForwardAxis;

    const-string v1, "X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$ForwardAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->X:LJAVARuntime/MeshCurve$ForwardAxis;

    new-instance v0, LJAVARuntime/MeshCurve$ForwardAxis;

    const-string v1, "Y"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$ForwardAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->Y:LJAVARuntime/MeshCurve$ForwardAxis;

    new-instance v0, LJAVARuntime/MeshCurve$ForwardAxis;

    const-string v1, "Z"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$ForwardAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->Z:LJAVARuntime/MeshCurve$ForwardAxis;

    invoke-static {}, LJAVARuntime/MeshCurve$ForwardAxis;->$values()[LJAVARuntime/MeshCurve$ForwardAxis;

    move-result-object v0

    sput-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->$VALUES:[LJAVARuntime/MeshCurve$ForwardAxis;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/MeshCurve$ForwardAxis;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/MeshCurve$ForwardAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/MeshCurve$ForwardAxis;

    return-object p0
.end method

.method public static values()[LJAVARuntime/MeshCurve$ForwardAxis;
    .locals 1

    sget-object v0, LJAVARuntime/MeshCurve$ForwardAxis;->$VALUES:[LJAVARuntime/MeshCurve$ForwardAxis;

    invoke-virtual {v0}, [LJAVARuntime/MeshCurve$ForwardAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/MeshCurve$ForwardAxis;

    return-object v0
.end method
