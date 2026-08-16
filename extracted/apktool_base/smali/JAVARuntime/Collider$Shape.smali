.class public final enum LJAVARuntime/Collider$Shape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Collider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Collider$Shape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Collider$Shape;

.field public static final enum Box:LJAVARuntime/Collider$Shape;

.field public static final enum Capsule:LJAVARuntime/Collider$Shape;

.field public static final enum ConvexModel:LJAVARuntime/Collider$Shape;

.field public static final enum Decomposition:LJAVARuntime/Collider$Shape;

.field public static final enum Model:LJAVARuntime/Collider$Shape;

.field public static final enum Sphere:LJAVARuntime/Collider$Shape;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Collider$Shape;
    .locals 6

    sget-object v0, LJAVARuntime/Collider$Shape;->Box:LJAVARuntime/Collider$Shape;

    sget-object v1, LJAVARuntime/Collider$Shape;->Sphere:LJAVARuntime/Collider$Shape;

    sget-object v2, LJAVARuntime/Collider$Shape;->Capsule:LJAVARuntime/Collider$Shape;

    sget-object v3, LJAVARuntime/Collider$Shape;->Model:LJAVARuntime/Collider$Shape;

    sget-object v4, LJAVARuntime/Collider$Shape;->ConvexModel:LJAVARuntime/Collider$Shape;

    sget-object v5, LJAVARuntime/Collider$Shape;->Decomposition:LJAVARuntime/Collider$Shape;

    filled-new-array/range {v0 .. v5}, [LJAVARuntime/Collider$Shape;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "Box"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->Box:LJAVARuntime/Collider$Shape;

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "Sphere"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->Sphere:LJAVARuntime/Collider$Shape;

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "Capsule"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->Capsule:LJAVARuntime/Collider$Shape;

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "Model"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->Model:LJAVARuntime/Collider$Shape;

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "ConvexModel"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->ConvexModel:LJAVARuntime/Collider$Shape;

    new-instance v0, LJAVARuntime/Collider$Shape;

    const-string v1, "Decomposition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LJAVARuntime/Collider$Shape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Collider$Shape;->Decomposition:LJAVARuntime/Collider$Shape;

    invoke-static {}, LJAVARuntime/Collider$Shape;->$values()[LJAVARuntime/Collider$Shape;

    move-result-object v0

    sput-object v0, LJAVARuntime/Collider$Shape;->$VALUES:[LJAVARuntime/Collider$Shape;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Collider$Shape;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Collider$Shape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Collider$Shape;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Collider$Shape;
    .locals 1

    sget-object v0, LJAVARuntime/Collider$Shape;->$VALUES:[LJAVARuntime/Collider$Shape;

    invoke-virtual {v0}, [LJAVARuntime/Collider$Shape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Collider$Shape;

    return-object v0
.end method
