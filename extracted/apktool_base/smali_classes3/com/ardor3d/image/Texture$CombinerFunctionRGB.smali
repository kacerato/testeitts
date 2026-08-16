.class public final enum Lcom/ardor3d/image/Texture$CombinerFunctionRGB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CombinerFunctionRGB"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$CombinerFunctionRGB;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Add:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum AddSigned:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Dot3RGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Dot3RGBA:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Interpolate:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Modulate:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Replace:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public static final enum Subtract:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v1, "Replace"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Replace:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v1, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v2, "Modulate"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Modulate:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v2, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v3, "Add"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Add:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v3, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v4, "AddSigned"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->AddSigned:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v4, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v5, "Interpolate"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Interpolate:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v5, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v6, "Subtract"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Subtract:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v6, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v7, "Dot3RGB"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Dot3RGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    new-instance v7, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v8, "Dot3RGBA"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Dot3RGBA:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    filled-new-array/range {v0 .. v7}, [Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->$VALUES:[Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$CombinerFunctionRGB;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$CombinerFunctionRGB;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->$VALUES:[Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    return-object v0
.end method
