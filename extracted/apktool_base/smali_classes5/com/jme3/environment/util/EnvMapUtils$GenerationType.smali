.class public final enum Lcom/jme3/environment/util/EnvMapUtils$GenerationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/environment/util/EnvMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenerationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/environment/util/EnvMapUtils$GenerationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

.field public static final enum Fast:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

.field public static final enum HighQuality:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;
    .locals 2

    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->Fast:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    sget-object v1, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->HighQuality:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    filled-new-array {v0, v1}, [Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    const-string v1, "Fast"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->Fast:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    new-instance v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    const-string v1, "HighQuality"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->HighQuality:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-static {}, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->$values()[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->$VALUES:[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/environment/util/EnvMapUtils$GenerationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;
    .locals 1

    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->$VALUES:[Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-virtual {v0}, [Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    return-object v0
.end method
