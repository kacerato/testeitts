.class public final enum Lcom/ardor3d/ui/text/BMText$Align;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/ui/text/BMText$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum Center:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum East:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum North:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum NorthEast:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum NorthWest:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum South:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum SouthEast:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum SouthWest:Lcom/ardor3d/ui/text/BMText$Align;

.field public static final enum West:Lcom/ardor3d/ui/text/BMText$Align;


# instance fields
.field public final horizontal:F

.field public final vertical:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v1, "North"

    const/4 v2, 0x0

    const/high16 v3, -0x41000000    # -0.5f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lcom/ardor3d/ui/text/BMText$Align;->North:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v1, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v2, "NorthWest"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4, v4}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v1, Lcom/ardor3d/ui/text/BMText$Align;->NorthWest:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v2, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v5, "NorthEast"

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v2, v5, v6, v7, v4}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v2, Lcom/ardor3d/ui/text/BMText$Align;->NorthEast:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v5, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v6, "Center"

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8, v3, v3}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v5, Lcom/ardor3d/ui/text/BMText$Align;->Center:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v6, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v8, "West"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v4, v3}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v6, Lcom/ardor3d/ui/text/BMText$Align;->West:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v8, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v9, "East"

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10, v7, v3}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v8, Lcom/ardor3d/ui/text/BMText$Align;->East:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v9, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v10, "South"

    const/4 v11, 0x6

    invoke-direct {v9, v10, v11, v3, v7}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v9, Lcom/ardor3d/ui/text/BMText$Align;->South:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v10, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v3, "SouthWest"

    const/4 v11, 0x7

    invoke-direct {v10, v3, v11, v4, v7}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v10, Lcom/ardor3d/ui/text/BMText$Align;->SouthWest:Lcom/ardor3d/ui/text/BMText$Align;

    new-instance v11, Lcom/ardor3d/ui/text/BMText$Align;

    const-string v3, "SouthEast"

    const/16 v4, 0x8

    invoke-direct {v11, v3, v4, v7, v7}, Lcom/ardor3d/ui/text/BMText$Align;-><init>(Ljava/lang/String;IFF)V

    sput-object v11, Lcom/ardor3d/ui/text/BMText$Align;->SouthEast:Lcom/ardor3d/ui/text/BMText$Align;

    move-object v3, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    filled-new-array/range {v0 .. v8}, [Lcom/ardor3d/ui/text/BMText$Align;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/ui/text/BMText$Align;->$VALUES:[Lcom/ardor3d/ui/text/BMText$Align;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ardor3d/ui/text/BMText$Align;->horizontal:F

    iput p4, p0, Lcom/ardor3d/ui/text/BMText$Align;->vertical:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/ui/text/BMText$Align;
    .locals 1

    const-class v0, Lcom/ardor3d/ui/text/BMText$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/ui/text/BMText$Align;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/ui/text/BMText$Align;
    .locals 1

    sget-object v0, Lcom/ardor3d/ui/text/BMText$Align;->$VALUES:[Lcom/ardor3d/ui/text/BMText$Align;

    invoke-virtual {v0}, [Lcom/ardor3d/ui/text/BMText$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/ui/text/BMText$Align;

    return-object v0
.end method
