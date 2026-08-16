.class public final enum Lcom/jme3/shadow/EdgeFilteringMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/shadow/EdgeFilteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum Dither:Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum Nearest:Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum PCF4:Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum PCF8:Lcom/jme3/shadow/EdgeFilteringMode;

.field public static final enum PCFPOISSON:Lcom/jme3/shadow/EdgeFilteringMode;


# instance fields
.field materialParamValue:I


# direct methods
.method private static synthetic $values()[Lcom/jme3/shadow/EdgeFilteringMode;
    .locals 6

    sget-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->Nearest:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v1, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v2, Lcom/jme3/shadow/EdgeFilteringMode;->Dither:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v3, Lcom/jme3/shadow/EdgeFilteringMode;->PCF4:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v4, Lcom/jme3/shadow/EdgeFilteringMode;->PCFPOISSON:Lcom/jme3/shadow/EdgeFilteringMode;

    sget-object v5, Lcom/jme3/shadow/EdgeFilteringMode;->PCF8:Lcom/jme3/shadow/EdgeFilteringMode;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/shadow/EdgeFilteringMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "Nearest"

    invoke-direct {v0, v3, v1, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->Nearest:Lcom/jme3/shadow/EdgeFilteringMode;

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "Bilinear"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->Bilinear:Lcom/jme3/shadow/EdgeFilteringMode;

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "Dither"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->Dither:Lcom/jme3/shadow/EdgeFilteringMode;

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "PCF4"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->PCF4:Lcom/jme3/shadow/EdgeFilteringMode;

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "PCFPOISSON"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->PCFPOISSON:Lcom/jme3/shadow/EdgeFilteringMode;

    new-instance v0, Lcom/jme3/shadow/EdgeFilteringMode;

    const-string v1, "PCF8"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/jme3/shadow/EdgeFilteringMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->PCF8:Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-static {}, Lcom/jme3/shadow/EdgeFilteringMode;->$values()[Lcom/jme3/shadow/EdgeFilteringMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->$VALUES:[Lcom/jme3/shadow/EdgeFilteringMode;

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

    iput p3, p0, Lcom/jme3/shadow/EdgeFilteringMode;->materialParamValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shadow/EdgeFilteringMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/shadow/EdgeFilteringMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/shadow/EdgeFilteringMode;
    .locals 1

    sget-object v0, Lcom/jme3/shadow/EdgeFilteringMode;->$VALUES:[Lcom/jme3/shadow/EdgeFilteringMode;

    invoke-virtual {v0}, [Lcom/jme3/shadow/EdgeFilteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shadow/EdgeFilteringMode;

    return-object v0
.end method


# virtual methods
.method public getMaterialParamValue()I
    .locals 1

    iget v0, p0, Lcom/jme3/shadow/EdgeFilteringMode;->materialParamValue:I

    return v0
.end method
