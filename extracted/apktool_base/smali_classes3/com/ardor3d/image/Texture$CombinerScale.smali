.class public final enum Lcom/ardor3d/image/Texture$CombinerScale;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CombinerScale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$CombinerScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$CombinerScale;

.field public static final enum Four:Lcom/ardor3d/image/Texture$CombinerScale;

.field public static final enum One:Lcom/ardor3d/image/Texture$CombinerScale;

.field public static final enum Two:Lcom/ardor3d/image/Texture$CombinerScale;


# instance fields
.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ardor3d/image/Texture$CombinerScale;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "One"

    invoke-direct {v0, v3, v1, v2}, Lcom/ardor3d/image/Texture$CombinerScale;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/ardor3d/image/Texture$CombinerScale;->One:Lcom/ardor3d/image/Texture$CombinerScale;

    new-instance v1, Lcom/ardor3d/image/Texture$CombinerScale;

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const-string v4, "Two"

    invoke-direct {v1, v4, v2, v3}, Lcom/ardor3d/image/Texture$CombinerScale;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/ardor3d/image/Texture$CombinerScale;->Two:Lcom/ardor3d/image/Texture$CombinerScale;

    new-instance v2, Lcom/ardor3d/image/Texture$CombinerScale;

    const/4 v3, 0x2

    const/high16 v4, 0x40800000    # 4.0f

    const-string v5, "Four"

    invoke-direct {v2, v5, v3, v4}, Lcom/ardor3d/image/Texture$CombinerScale;-><init>(Ljava/lang/String;IF)V

    sput-object v2, Lcom/ardor3d/image/Texture$CombinerScale;->Four:Lcom/ardor3d/image/Texture$CombinerScale;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/image/Texture$CombinerScale;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$CombinerScale;->$VALUES:[Lcom/ardor3d/image/Texture$CombinerScale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ardor3d/image/Texture$CombinerScale;->scale:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$CombinerScale;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$CombinerScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$CombinerScale;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$CombinerScale;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerScale;->$VALUES:[Lcom/ardor3d/image/Texture$CombinerScale;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$CombinerScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$CombinerScale;

    return-object v0
.end method


# virtual methods
.method public floatValue()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Texture$CombinerScale;->scale:F

    return v0
.end method
