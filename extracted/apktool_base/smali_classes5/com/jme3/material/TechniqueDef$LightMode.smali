.class public final enum Lcom/jme3/material/TechniqueDef$LightMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/TechniqueDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/TechniqueDef$LightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum Disable:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum SinglePassAndImageBased:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum StaticPass:Lcom/jme3/material/TechniqueDef$LightMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 6

    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v2, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v3, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePassAndImageBased:Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v4, Lcom/jme3/material/TechniqueDef$LightMode;->FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v5, Lcom/jme3/material/TechniqueDef$LightMode;->StaticPass:Lcom/jme3/material/TechniqueDef$LightMode;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "Disable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "SinglePass"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "MultiPass"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "SinglePassAndImageBased"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePassAndImageBased:Lcom/jme3/material/TechniqueDef$LightMode;

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "FixedPipeline"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "StaticPass"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->StaticPass:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-static {}, Lcom/jme3/material/TechniqueDef$LightMode;->$values()[Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/TechniqueDef$LightMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1

    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v0}, [Lcom/jme3/material/TechniqueDef$LightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method
