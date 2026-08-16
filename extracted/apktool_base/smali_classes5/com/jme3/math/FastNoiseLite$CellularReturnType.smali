.class public final enum Lcom/jme3/math/FastNoiseLite$CellularReturnType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/FastNoiseLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CellularReturnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/math/FastNoiseLite$CellularReturnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum CellValue:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance2:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance2Add:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance2Div:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance2Mul:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field public static final enum Distance2Sub:Lcom/jme3/math/FastNoiseLite$CellularReturnType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/math/FastNoiseLite$CellularReturnType;
    .locals 7

    sget-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->CellValue:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v1, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v3, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Add:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v4, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Sub:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v5, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Mul:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v6, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Div:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    filled-new-array/range {v0 .. v6}, [Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "CellValue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->CellValue:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance2Add"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Add:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance2Sub"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Sub:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance2Mul"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Mul:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    new-instance v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const-string v1, "Distance2Div"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance2Div:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    invoke-static {}, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->$values()[Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->$VALUES:[Lcom/jme3/math/FastNoiseLite$CellularReturnType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/math/FastNoiseLite$CellularReturnType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/math/FastNoiseLite$CellularReturnType;
    .locals 1

    sget-object v0, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->$VALUES:[Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    invoke-virtual {v0}, [Lcom/jme3/math/FastNoiseLite$CellularReturnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    return-object v0
.end method
