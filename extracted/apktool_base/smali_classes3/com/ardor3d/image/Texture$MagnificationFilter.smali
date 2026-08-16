.class public final enum Lcom/ardor3d/image/Texture$MagnificationFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/image/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagnificationFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/image/Texture$MagnificationFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/image/Texture$MagnificationFilter;

.field public static final enum Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

.field public static final enum NearestNeighbor:Lcom/ardor3d/image/Texture$MagnificationFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ardor3d/image/Texture$MagnificationFilter;

    const-string v1, "NearestNeighbor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/image/Texture$MagnificationFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/image/Texture$MagnificationFilter;->NearestNeighbor:Lcom/ardor3d/image/Texture$MagnificationFilter;

    new-instance v1, Lcom/ardor3d/image/Texture$MagnificationFilter;

    const-string v2, "Bilinear"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/image/Texture$MagnificationFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    filled-new-array {v0, v1}, [Lcom/ardor3d/image/Texture$MagnificationFilter;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/image/Texture$MagnificationFilter;->$VALUES:[Lcom/ardor3d/image/Texture$MagnificationFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/image/Texture$MagnificationFilter;
    .locals 1

    const-class v0, Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/image/Texture$MagnificationFilter;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/image/Texture$MagnificationFilter;
    .locals 1

    sget-object v0, Lcom/ardor3d/image/Texture$MagnificationFilter;->$VALUES:[Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-virtual {v0}, [Lcom/ardor3d/image/Texture$MagnificationFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/image/Texture$MagnificationFilter;

    return-object v0
.end method
