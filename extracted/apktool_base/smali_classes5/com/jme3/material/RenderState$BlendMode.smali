.class public final enum Lcom/jme3/material/RenderState$BlendMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Additive:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Alpha:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum AlphaSumA:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Color:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Custom:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Exclusion:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Modulate:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Off:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Screen:Lcom/jme3/material/RenderState$BlendMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$BlendMode;
    .locals 12

    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v4, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v5, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v6, Lcom/jme3/material/RenderState$BlendMode;->AlphaSumA:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v7, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v8, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v9, Lcom/jme3/material/RenderState$BlendMode;->Screen:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v10, Lcom/jme3/material/RenderState$BlendMode;->Exclusion:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v11, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    filled-new-array/range {v0 .. v11}, [Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Additive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "PremultAlpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "AlphaAdditive"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Color"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Alpha"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "AlphaSumA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->AlphaSumA:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Modulate"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "ModulateX2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Screen"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Screen:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Exclusion"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Exclusion:Lcom/jme3/material/RenderState$BlendMode;

    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Custom"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Custom:Lcom/jme3/material/RenderState$BlendMode;

    invoke-static {}, Lcom/jme3/material/RenderState$BlendMode;->$values()[Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->$VALUES:[Lcom/jme3/material/RenderState$BlendMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$BlendMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$BlendMode;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->$VALUES:[Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$BlendMode;

    return-object v0
.end method
