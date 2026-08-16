.class public final enum Lcom/jme3/material/RenderState$TestFunction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/material/RenderState$TestFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Always:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Equal:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Greater:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Less:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Never:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum NotEqual:Lcom/jme3/material/RenderState$TestFunction;


# direct methods
.method private static synthetic $values()[Lcom/jme3/material/RenderState$TestFunction;
    .locals 8

    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->Never:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Equal:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v2, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v3, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v4, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v5, Lcom/jme3/material/RenderState$TestFunction;->GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v6, Lcom/jme3/material/RenderState$TestFunction;->NotEqual:Lcom/jme3/material/RenderState$TestFunction;

    sget-object v7, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    filled-new-array/range {v0 .. v7}, [Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Never"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Never:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Equal"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Equal:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Less"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "LessOrEqual"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Greater"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "GreaterOrEqual"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "NotEqual"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->NotEqual:Lcom/jme3/material/RenderState$TestFunction;

    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Always"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    invoke-static {}, Lcom/jme3/material/RenderState$TestFunction;->$values()[Lcom/jme3/material/RenderState$TestFunction;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->$VALUES:[Lcom/jme3/material/RenderState$TestFunction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$TestFunction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/material/RenderState$TestFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/material/RenderState$TestFunction;

    return-object p0
.end method

.method public static values()[Lcom/jme3/material/RenderState$TestFunction;
    .locals 1

    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->$VALUES:[Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$TestFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method
