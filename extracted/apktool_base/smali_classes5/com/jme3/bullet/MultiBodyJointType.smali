.class public final enum Lcom/jme3/bullet/MultiBodyJointType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/MultiBodyJointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/MultiBodyJointType;

.field public static final enum Fixed:Lcom/jme3/bullet/MultiBodyJointType;

.field public static final enum Planar:Lcom/jme3/bullet/MultiBodyJointType;

.field public static final enum Prismatic:Lcom/jme3/bullet/MultiBodyJointType;

.field public static final enum Revolute:Lcom/jme3/bullet/MultiBodyJointType;

.field public static final enum Spherical:Lcom/jme3/bullet/MultiBodyJointType;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/MultiBodyJointType;
    .locals 5

    sget-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Revolute:Lcom/jme3/bullet/MultiBodyJointType;

    sget-object v1, Lcom/jme3/bullet/MultiBodyJointType;->Prismatic:Lcom/jme3/bullet/MultiBodyJointType;

    sget-object v2, Lcom/jme3/bullet/MultiBodyJointType;->Spherical:Lcom/jme3/bullet/MultiBodyJointType;

    sget-object v3, Lcom/jme3/bullet/MultiBodyJointType;->Planar:Lcom/jme3/bullet/MultiBodyJointType;

    sget-object v4, Lcom/jme3/bullet/MultiBodyJointType;->Fixed:Lcom/jme3/bullet/MultiBodyJointType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/MultiBodyJointType;

    const-string v1, "Revolute"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/MultiBodyJointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Revolute:Lcom/jme3/bullet/MultiBodyJointType;

    new-instance v0, Lcom/jme3/bullet/MultiBodyJointType;

    const-string v1, "Prismatic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/MultiBodyJointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Prismatic:Lcom/jme3/bullet/MultiBodyJointType;

    new-instance v0, Lcom/jme3/bullet/MultiBodyJointType;

    const-string v1, "Spherical"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/MultiBodyJointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Spherical:Lcom/jme3/bullet/MultiBodyJointType;

    new-instance v0, Lcom/jme3/bullet/MultiBodyJointType;

    const-string v1, "Planar"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/MultiBodyJointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Planar:Lcom/jme3/bullet/MultiBodyJointType;

    new-instance v0, Lcom/jme3/bullet/MultiBodyJointType;

    const-string v1, "Fixed"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/MultiBodyJointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->Fixed:Lcom/jme3/bullet/MultiBodyJointType;

    invoke-static {}, Lcom/jme3/bullet/MultiBodyJointType;->$values()[Lcom/jme3/bullet/MultiBodyJointType;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/MultiBodyJointType;->$VALUES:[Lcom/jme3/bullet/MultiBodyJointType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/MultiBodyJointType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/MultiBodyJointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/MultiBodyJointType;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/MultiBodyJointType;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/MultiBodyJointType;->$VALUES:[Lcom/jme3/bullet/MultiBodyJointType;

    invoke-virtual {v0}, [Lcom/jme3/bullet/MultiBodyJointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/MultiBodyJointType;

    return-object v0
.end method
