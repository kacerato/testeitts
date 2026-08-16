.class public final enum Lcom/jme3/material/RenderState$BlendEquationAlpha;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendEquationAlpha"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$BlendEquationAlpha;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum Add:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum Max:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum Min:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum ReverseSubtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

.field public static final enum Subtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$BlendEquationAlpha;
    .locals 6

    sget-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v1, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Add:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v2, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Subtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v3, Lcom/jme3/material/RenderState$BlendEquationAlpha;->ReverseSubtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v4, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Min:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    sget-object v5, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Max:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/material/RenderState$BlendEquationAlpha;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "InheritColor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->InheritColor:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "Add"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Add:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "Subtract"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Subtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "ReverseSubtract"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->ReverseSubtract:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "Min"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Min:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    new-instance v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    const-string v1, "Max"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendEquationAlpha;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->Max:Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-static {}, Lcom/jme3/material/RenderState$BlendEquationAlpha;->$values()[Lcom/jme3/material/RenderState$BlendEquationAlpha;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->$VALUES:[Lcom/jme3/material/RenderState$BlendEquationAlpha;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendEquationAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$BlendEquationAlpha;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$BlendEquationAlpha;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$BlendEquationAlpha;->$VALUES:[Lcom/jme3/material/RenderState$BlendEquationAlpha;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$BlendEquationAlpha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$BlendEquationAlpha;

    return-object v0
.end method
