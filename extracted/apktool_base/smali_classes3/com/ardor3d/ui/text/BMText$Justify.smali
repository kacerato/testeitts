.class public final enum Lcom/ardor3d/ui/text/BMText$Justify;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/ui/text/BMText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Justify"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/ui/text/BMText$Justify;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/ui/text/BMText$Justify;

.field public static final enum Center:Lcom/ardor3d/ui/text/BMText$Justify;

.field public static final enum Left:Lcom/ardor3d/ui/text/BMText$Justify;

.field public static final enum Right:Lcom/ardor3d/ui/text/BMText$Justify;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/ui/text/BMText$Justify;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/ui/text/BMText$Justify;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/ui/text/BMText$Justify;->Left:Lcom/ardor3d/ui/text/BMText$Justify;

    new-instance v1, Lcom/ardor3d/ui/text/BMText$Justify;

    const-string v2, "Center"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/ui/text/BMText$Justify;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/ui/text/BMText$Justify;->Center:Lcom/ardor3d/ui/text/BMText$Justify;

    new-instance v2, Lcom/ardor3d/ui/text/BMText$Justify;

    const-string v3, "Right"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/ui/text/BMText$Justify;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/ui/text/BMText$Justify;->Right:Lcom/ardor3d/ui/text/BMText$Justify;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/ui/text/BMText$Justify;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/ui/text/BMText$Justify;->$VALUES:[Lcom/ardor3d/ui/text/BMText$Justify;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/ui/text/BMText$Justify;
    .locals 1

    const-class v0, Lcom/ardor3d/ui/text/BMText$Justify;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/ui/text/BMText$Justify;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/ui/text/BMText$Justify;
    .locals 1

    sget-object v0, Lcom/ardor3d/ui/text/BMText$Justify;->$VALUES:[Lcom/ardor3d/ui/text/BMText$Justify;

    invoke-virtual {v0}, [Lcom/ardor3d/ui/text/BMText$Justify;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/ui/text/BMText$Justify;

    return-object v0
.end method
