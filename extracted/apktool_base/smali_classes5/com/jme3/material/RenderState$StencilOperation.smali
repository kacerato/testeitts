.class public final enum Lcom/jme3/material/RenderState$StencilOperation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StencilOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$StencilOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Decrement:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Increment:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Invert:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Keep:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Replace:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Zero:Lcom/jme3/material/RenderState$StencilOperation;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$StencilOperation;
    .locals 8

    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Zero:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v2, Lcom/jme3/material/RenderState$StencilOperation;->Replace:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v3, Lcom/jme3/material/RenderState$StencilOperation;->Increment:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v4, Lcom/jme3/material/RenderState$StencilOperation;->IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v5, Lcom/jme3/material/RenderState$StencilOperation;->Decrement:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v6, Lcom/jme3/material/RenderState$StencilOperation;->DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v7, Lcom/jme3/material/RenderState$StencilOperation;->Invert:Lcom/jme3/material/RenderState$StencilOperation;

    filled-new-array/range {v0 .. v7}, [Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Keep"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Zero"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Zero:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Replace"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Replace:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Increment"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Increment:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "IncrementWrap"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Decrement"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Decrement:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "DecrementWrap"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Invert"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Invert:Lcom/jme3/material/RenderState$StencilOperation;

    invoke-static {}, Lcom/jme3/material/RenderState$StencilOperation;->$values()[Lcom/jme3/material/RenderState$StencilOperation;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->$VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$StencilOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$StencilOperation;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->$VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$StencilOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method
