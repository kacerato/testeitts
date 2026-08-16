.class final enum Lcom/jme3/math/FastNoiseLite$TransformType3D;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/FastNoiseLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransformType3D"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/math/FastNoiseLite$TransformType3D;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field public static final enum DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field public static final enum ImproveXYPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field public static final enum ImproveXZPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field public static final enum None:Lcom/jme3/math/FastNoiseLite$TransformType3D;


# direct methods
.method private static synthetic $values()[Lcom/jme3/math/FastNoiseLite$TransformType3D;
    .locals 4

    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->None:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    sget-object v1, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXYPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXZPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    sget-object v3, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/math/FastNoiseLite$TransformType3D;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$TransformType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->None:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    const-string v1, "ImproveXYPlanes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$TransformType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXYPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    const-string v1, "ImproveXZPlanes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$TransformType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXZPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    const-string v1, "DefaultOpenSimplex2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$TransformType3D;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-static {}, Lcom/jme3/math/FastNoiseLite$TransformType3D;->$values()[Lcom/jme3/math/FastNoiseLite$TransformType3D;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->$VALUES:[Lcom/jme3/math/FastNoiseLite$TransformType3D;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/math/FastNoiseLite$TransformType3D;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/math/FastNoiseLite$TransformType3D;

    return-object p0
.end method

.method public static values()[Lcom/jme3/math/FastNoiseLite$TransformType3D;
    .locals 1

    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->$VALUES:[Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-virtual {v0}, [Lcom/jme3/math/FastNoiseLite$TransformType3D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/FastNoiseLite$TransformType3D;

    return-object v0
.end method
