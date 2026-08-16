.class public final enum Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum NegativeX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum NegativeY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum NegativeZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum PositiveX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum PositiveY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field public static final enum PositiveZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;


# direct methods
.method private static synthetic $values()[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
    .locals 7

    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v1, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v2, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v3, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v4, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v5, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    sget-object v6, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    filled-new-array/range {v0 .. v6}, [Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "PositiveX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "NegativeX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "PositiveY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "NegativeY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeY:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "PositiveZ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    const-string v1, "NegativeZ"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    invoke-static {}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->$values()[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->$VALUES:[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    return-object p0
.end method

.method public static values()[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
    .locals 1

    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->$VALUES:[Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    invoke-virtual {v0}, [Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    return-object v0
.end method
