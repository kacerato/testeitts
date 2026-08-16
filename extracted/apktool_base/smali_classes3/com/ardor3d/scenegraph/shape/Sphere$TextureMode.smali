.class public final enum Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/scenegraph/shape/Sphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

.field public static final enum Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

.field public static final enum Polar:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

.field public static final enum Projected:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Linear:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    new-instance v1, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v2, "Projected"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Projected:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    new-instance v2, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    const-string v3, "Polar"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->Polar:Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    filled-new-array {v0, v1, v2}, [Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->$VALUES:[Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->$VALUES:[Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/shape/Sphere$TextureMode;

    return-object v0
.end method
