.class public final enum Lcom/jme3/bullet/FillMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/FillMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/FillMode;

.field public static final enum FloodFill:Lcom/jme3/bullet/FillMode;

.field public static final enum RaycastFill:Lcom/jme3/bullet/FillMode;

.field public static final enum SurfaceOnly:Lcom/jme3/bullet/FillMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/FillMode;
    .locals 3

    sget-object v0, Lcom/jme3/bullet/FillMode;->FloodFill:Lcom/jme3/bullet/FillMode;

    sget-object v1, Lcom/jme3/bullet/FillMode;->SurfaceOnly:Lcom/jme3/bullet/FillMode;

    sget-object v2, Lcom/jme3/bullet/FillMode;->RaycastFill:Lcom/jme3/bullet/FillMode;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/bullet/FillMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/FillMode;

    const-string v1, "FloodFill"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/FillMode;->FloodFill:Lcom/jme3/bullet/FillMode;

    new-instance v0, Lcom/jme3/bullet/FillMode;

    const-string v1, "SurfaceOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/FillMode;->SurfaceOnly:Lcom/jme3/bullet/FillMode;

    new-instance v0, Lcom/jme3/bullet/FillMode;

    const-string v1, "RaycastFill"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/FillMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/FillMode;->RaycastFill:Lcom/jme3/bullet/FillMode;

    invoke-static {}, Lcom/jme3/bullet/FillMode;->$values()[Lcom/jme3/bullet/FillMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/FillMode;->$VALUES:[Lcom/jme3/bullet/FillMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/FillMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/FillMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/FillMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/FillMode;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/FillMode;->$VALUES:[Lcom/jme3/bullet/FillMode;

    invoke-virtual {v0}, [Lcom/jme3/bullet/FillMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/FillMode;

    return-object v0
.end method
