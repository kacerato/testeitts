.class public final enum Lcom/jme3/scene/Spatial$BatchHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatchHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/scene/Spatial$BatchHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Always:Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Inherit:Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Never:Lcom/jme3/scene/Spatial$BatchHint;


# direct methods
.method private static synthetic $values()[Lcom/jme3/scene/Spatial$BatchHint;
    .locals 3

    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Always:Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v2, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/scene/Spatial$BatchHint;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Always"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Always:Lcom/jme3/scene/Spatial$BatchHint;

    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Never"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-static {}, Lcom/jme3/scene/Spatial$BatchHint;->$values()[Lcom/jme3/scene/Spatial$BatchHint;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->$VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Spatial$BatchHint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/scene/Spatial$BatchHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Spatial$BatchHint;

    return-object p0
.end method

.method public static values()[Lcom/jme3/scene/Spatial$BatchHint;
    .locals 1

    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->$VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {v0}, [Lcom/jme3/scene/Spatial$BatchHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial$BatchHint;

    return-object v0
.end method
