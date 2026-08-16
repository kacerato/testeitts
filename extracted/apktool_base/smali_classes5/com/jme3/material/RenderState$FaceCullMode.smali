.class public final enum Lcom/jme3/material/RenderState$FaceCullMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceCullMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$FaceCullMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Back:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Front:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Off:Lcom/jme3/material/RenderState$FaceCullMode;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 4

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v3, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Front"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Back"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "FrontAndBack"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-static {}, Lcom/jme3/material/RenderState$FaceCullMode;->$values()[Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->$VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$FaceCullMode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->$VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$FaceCullMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$FaceCullMode;

    return-object v0
.end method
