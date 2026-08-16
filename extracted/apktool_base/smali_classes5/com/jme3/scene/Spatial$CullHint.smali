.class public final enum Lcom/jme3/scene/Spatial$CullHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CullHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/scene/Spatial$CullHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Always:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Dynamic:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Inherit:Lcom/jme3/scene/Spatial$CullHint;

.field public static final enum Never:Lcom/jme3/scene/Spatial$CullHint;


# direct methods
.method private static synthetic $values()[Lcom/jme3/scene/Spatial$CullHint;
    .locals 4

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Dynamic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Always"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    new-instance v0, Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "Never"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-static {}, Lcom/jme3/scene/Spatial$CullHint;->$values()[Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Spatial$CullHint;->$VALUES:[Lcom/jme3/scene/Spatial$CullHint;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Spatial$CullHint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/scene/Spatial$CullHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Spatial$CullHint;

    return-object p0
.end method

.method public static values()[Lcom/jme3/scene/Spatial$CullHint;
    .locals 1

    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->$VALUES:[Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v0}, [Lcom/jme3/scene/Spatial$CullHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial$CullHint;

    return-object v0
.end method
