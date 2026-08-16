.class public final enum Lcom/jme3/util/SkyFactory$EnvMapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/SkyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvMapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/util/SkyFactory$EnvMapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/util/SkyFactory$EnvMapType;

.field public static final enum CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

.field public static final enum EquirectMap:Lcom/jme3/util/SkyFactory$EnvMapType;

.field public static final enum SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/util/SkyFactory$EnvMapType;
    .locals 3

    sget-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    sget-object v1, Lcom/jme3/util/SkyFactory$EnvMapType;->SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    sget-object v2, Lcom/jme3/util/SkyFactory$EnvMapType;->EquirectMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/util/SkyFactory$EnvMapType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/util/SkyFactory$EnvMapType;

    const-string v1, "CubeMap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/SkyFactory$EnvMapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    new-instance v0, Lcom/jme3/util/SkyFactory$EnvMapType;

    const-string v1, "SphereMap"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/SkyFactory$EnvMapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    new-instance v0, Lcom/jme3/util/SkyFactory$EnvMapType;

    const-string v1, "EquirectMap"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/SkyFactory$EnvMapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->EquirectMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    invoke-static {}, Lcom/jme3/util/SkyFactory$EnvMapType;->$values()[Lcom/jme3/util/SkyFactory$EnvMapType;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->$VALUES:[Lcom/jme3/util/SkyFactory$EnvMapType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/util/SkyFactory$EnvMapType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/util/SkyFactory$EnvMapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/util/SkyFactory$EnvMapType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/util/SkyFactory$EnvMapType;
    .locals 1

    sget-object v0, Lcom/jme3/util/SkyFactory$EnvMapType;->$VALUES:[Lcom/jme3/util/SkyFactory$EnvMapType;

    invoke-virtual {v0}, [Lcom/jme3/util/SkyFactory$EnvMapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/util/SkyFactory$EnvMapType;

    return-object v0
.end method
