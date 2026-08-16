.class public final enum Lcom/jme3/material/RenderState$BlendFunc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$BlendFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum One:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum One_Minus_Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum One_Minus_Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Src_Alpha_Saturate:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

.field public static final enum Zero:Lcom/jme3/material/RenderState$BlendFunc;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$BlendFunc;
    .locals 11

    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Zero:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v1, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v2, Lcom/jme3/material/RenderState$BlendFunc;->Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v3, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v4, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v5, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v6, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v7, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v8, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v9, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    sget-object v10, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha_Saturate:Lcom/jme3/material/RenderState$BlendFunc;

    filled-new-array/range {v0 .. v10}, [Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Zero:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "One"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Src_Color"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "One_Minus_Src_Color"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Color:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Dst_Color"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "One_Minus_Dst_Color"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Color:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Src_Alpha"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "One_Minus_Src_Alpha"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Src_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Dst_Alpha"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "One_Minus_Dst_Alpha"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->One_Minus_Dst_Alpha:Lcom/jme3/material/RenderState$BlendFunc;

    new-instance v0, Lcom/jme3/material/RenderState$BlendFunc;

    const-string v1, "Src_Alpha_Saturate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendFunc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->Src_Alpha_Saturate:Lcom/jme3/material/RenderState$BlendFunc;

    invoke-static {}, Lcom/jme3/material/RenderState$BlendFunc;->$values()[Lcom/jme3/material/RenderState$BlendFunc;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$BlendFunc;->$VALUES:[Lcom/jme3/material/RenderState$BlendFunc;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$BlendFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$BlendFunc;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$BlendFunc;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$BlendFunc;->$VALUES:[Lcom/jme3/material/RenderState$BlendFunc;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$BlendFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$BlendFunc;

    return-object v0
.end method
