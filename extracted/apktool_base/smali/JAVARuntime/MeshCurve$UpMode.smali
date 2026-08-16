.class public final enum LJAVARuntime/MeshCurve$UpMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/MeshCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/MeshCurve$UpMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/MeshCurve$UpMode;

.field public static final enum AlignToCurve:LJAVARuntime/MeshCurve$UpMode;

.field public static final enum FixX:LJAVARuntime/MeshCurve$UpMode;

.field public static final enum FixY:LJAVARuntime/MeshCurve$UpMode;

.field public static final enum FixZ:LJAVARuntime/MeshCurve$UpMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/MeshCurve$UpMode;
    .locals 4

    sget-object v0, LJAVARuntime/MeshCurve$UpMode;->AlignToCurve:LJAVARuntime/MeshCurve$UpMode;

    sget-object v1, LJAVARuntime/MeshCurve$UpMode;->FixX:LJAVARuntime/MeshCurve$UpMode;

    sget-object v2, LJAVARuntime/MeshCurve$UpMode;->FixY:LJAVARuntime/MeshCurve$UpMode;

    sget-object v3, LJAVARuntime/MeshCurve$UpMode;->FixZ:LJAVARuntime/MeshCurve$UpMode;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/MeshCurve$UpMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/MeshCurve$UpMode;

    const-string v1, "AlignToCurve"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$UpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$UpMode;->AlignToCurve:LJAVARuntime/MeshCurve$UpMode;

    new-instance v0, LJAVARuntime/MeshCurve$UpMode;

    const-string v1, "FixX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$UpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$UpMode;->FixX:LJAVARuntime/MeshCurve$UpMode;

    new-instance v0, LJAVARuntime/MeshCurve$UpMode;

    const-string v1, "FixY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$UpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$UpMode;->FixY:LJAVARuntime/MeshCurve$UpMode;

    new-instance v0, LJAVARuntime/MeshCurve$UpMode;

    const-string v1, "FixZ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/MeshCurve$UpMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/MeshCurve$UpMode;->FixZ:LJAVARuntime/MeshCurve$UpMode;

    invoke-static {}, LJAVARuntime/MeshCurve$UpMode;->$values()[LJAVARuntime/MeshCurve$UpMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/MeshCurve$UpMode;->$VALUES:[LJAVARuntime/MeshCurve$UpMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/MeshCurve$UpMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/MeshCurve$UpMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/MeshCurve$UpMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/MeshCurve$UpMode;
    .locals 1

    sget-object v0, LJAVARuntime/MeshCurve$UpMode;->$VALUES:[LJAVARuntime/MeshCurve$UpMode;

    invoke-virtual {v0}, [LJAVARuntime/MeshCurve$UpMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/MeshCurve$UpMode;

    return-object v0
.end method
