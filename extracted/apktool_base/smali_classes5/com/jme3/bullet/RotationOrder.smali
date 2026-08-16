.class public final enum Lcom/jme3/bullet/RotationOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/RotationOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/RotationOrder;

.field public static final enum XYZ:Lcom/jme3/bullet/RotationOrder;

.field public static final enum XZY:Lcom/jme3/bullet/RotationOrder;

.field public static final enum YXZ:Lcom/jme3/bullet/RotationOrder;

.field public static final enum YZX:Lcom/jme3/bullet/RotationOrder;

.field public static final enum ZXY:Lcom/jme3/bullet/RotationOrder;

.field public static final enum ZYX:Lcom/jme3/bullet/RotationOrder;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/RotationOrder;
    .locals 6

    sget-object v0, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    sget-object v1, Lcom/jme3/bullet/RotationOrder;->XZY:Lcom/jme3/bullet/RotationOrder;

    sget-object v2, Lcom/jme3/bullet/RotationOrder;->YXZ:Lcom/jme3/bullet/RotationOrder;

    sget-object v3, Lcom/jme3/bullet/RotationOrder;->YZX:Lcom/jme3/bullet/RotationOrder;

    sget-object v4, Lcom/jme3/bullet/RotationOrder;->ZXY:Lcom/jme3/bullet/RotationOrder;

    sget-object v5, Lcom/jme3/bullet/RotationOrder;->ZYX:Lcom/jme3/bullet/RotationOrder;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/bullet/RotationOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "XYZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "XZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->XZY:Lcom/jme3/bullet/RotationOrder;

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "YXZ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->YXZ:Lcom/jme3/bullet/RotationOrder;

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "YZX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->YZX:Lcom/jme3/bullet/RotationOrder;

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "ZXY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->ZXY:Lcom/jme3/bullet/RotationOrder;

    new-instance v0, Lcom/jme3/bullet/RotationOrder;

    const-string v1, "ZYX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/RotationOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->ZYX:Lcom/jme3/bullet/RotationOrder;

    invoke-static {}, Lcom/jme3/bullet/RotationOrder;->$values()[Lcom/jme3/bullet/RotationOrder;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/RotationOrder;->$VALUES:[Lcom/jme3/bullet/RotationOrder;

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
            null,
            null
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

.method private static native matrixToEuler(ILcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;)Z
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/RotationOrder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/RotationOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/RotationOrder;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/RotationOrder;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/RotationOrder;->$VALUES:[Lcom/jme3/bullet/RotationOrder;

    invoke-virtual {v0}, [Lcom/jme3/bullet/RotationOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/RotationOrder;

    return-object v0
.end method


# virtual methods
.method public matrixToEuler(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    const-string v0, "rot matrix"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 4
    invoke-static {v0, p1, p2}, Lcom/jme3/bullet/RotationOrder;->matrixToEuler(ILcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;)Z

    return-object p2
.end method
