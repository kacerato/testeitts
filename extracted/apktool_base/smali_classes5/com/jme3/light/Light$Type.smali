.class public final enum Lcom/jme3/light/Light$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/light/Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/light/Light$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/light/Light$Type;

.field public static final enum Ambient:Lcom/jme3/light/Light$Type;

.field public static final enum Directional:Lcom/jme3/light/Light$Type;

.field public static final enum Point:Lcom/jme3/light/Light$Type;

.field public static final enum Probe:Lcom/jme3/light/Light$Type;

.field public static final enum Spot:Lcom/jme3/light/Light$Type;


# instance fields
.field private final typeId:I


# direct methods
.method private static synthetic $values()[Lcom/jme3/light/Light$Type;
    .locals 5

    sget-object v0, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    sget-object v1, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    sget-object v2, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    sget-object v3, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    sget-object v4, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/jme3/light/Light$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Directional"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Point"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Spot"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Ambient"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

    new-instance v0, Lcom/jme3/light/Light$Type;

    const-string v1, "Probe"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/light/Light$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    invoke-static {}, Lcom/jme3/light/Light$Type;->$values()[Lcom/jme3/light/Light$Type;

    move-result-object v0

    sput-object v0, Lcom/jme3/light/Light$Type;->$VALUES:[Lcom/jme3/light/Light$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/jme3/light/Light$Type;->typeId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/light/Light$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/light/Light$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/light/Light$Type;

    return-object p0
.end method

.method public static values()[Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->$VALUES:[Lcom/jme3/light/Light$Type;

    invoke-virtual {v0}, [Lcom/jme3/light/Light$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/light/Light$Type;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/jme3/light/Light$Type;->typeId:I

    return v0
.end method
