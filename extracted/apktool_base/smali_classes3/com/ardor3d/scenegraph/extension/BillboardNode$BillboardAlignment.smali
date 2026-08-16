.class public final enum Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/extension/BillboardNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BillboardAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

.field public static final enum AxialY:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

.field public static final enum AxialZ:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

.field public static final enum CameraAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

.field public static final enum ScreenAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v1, "ScreenAligned"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->ScreenAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    new-instance v1, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v2, "CameraAligned"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->CameraAligned:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    new-instance v2, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v3, "AxialY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->AxialY:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    new-instance v3, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    const-string v4, "AxialZ"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->AxialZ:Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->$VALUES:[Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->$VALUES:[Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/extension/BillboardNode$BillboardAlignment;

    return-object v0
.end method
