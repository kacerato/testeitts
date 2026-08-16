.class public final enum Lcom/ardor3d/scenegraph/Point$PointType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PointType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/Point$PointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/Point$PointType;

.field public static final enum Point:Lcom/ardor3d/scenegraph/Point$PointType;

.field public static final enum PointSprite:Lcom/ardor3d/scenegraph/Point$PointType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/scenegraph/Point$PointType;

    const-string v1, "Point"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/Point$PointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/Point$PointType;->Point:Lcom/ardor3d/scenegraph/Point$PointType;

    new-instance v1, Lcom/ardor3d/scenegraph/Point$PointType;

    const-string v2, "PointSprite"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/Point$PointType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/Point$PointType;->PointSprite:Lcom/ardor3d/scenegraph/Point$PointType;

    filled-new-array {v0, v1}, [Lcom/ardor3d/scenegraph/Point$PointType;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/Point$PointType;->$VALUES:[Lcom/ardor3d/scenegraph/Point$PointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/Point$PointType;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/Point$PointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/Point$PointType;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/Point$PointType;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/Point$PointType;->$VALUES:[Lcom/ardor3d/scenegraph/Point$PointType;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/Point$PointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/Point$PointType;

    return-object v0
.end method
