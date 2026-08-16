.class public final enum Lcom/jme3/font/BitmapFont$Align;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/font/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/font/BitmapFont$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/font/BitmapFont$Align;

.field public static final enum Center:Lcom/jme3/font/BitmapFont$Align;

.field public static final enum Left:Lcom/jme3/font/BitmapFont$Align;

.field public static final enum Right:Lcom/jme3/font/BitmapFont$Align;


# direct methods
.method private static synthetic $values()[Lcom/jme3/font/BitmapFont$Align;
    .locals 3

    sget-object v0, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    sget-object v1, Lcom/jme3/font/BitmapFont$Align;->Center:Lcom/jme3/font/BitmapFont$Align;

    sget-object v2, Lcom/jme3/font/BitmapFont$Align;->Right:Lcom/jme3/font/BitmapFont$Align;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/font/BitmapFont$Align;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/font/BitmapFont$Align;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/font/BitmapFont$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/font/BitmapFont$Align;->Left:Lcom/jme3/font/BitmapFont$Align;

    new-instance v0, Lcom/jme3/font/BitmapFont$Align;

    const-string v1, "Center"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/font/BitmapFont$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/font/BitmapFont$Align;->Center:Lcom/jme3/font/BitmapFont$Align;

    new-instance v0, Lcom/jme3/font/BitmapFont$Align;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/font/BitmapFont$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/font/BitmapFont$Align;->Right:Lcom/jme3/font/BitmapFont$Align;

    invoke-static {}, Lcom/jme3/font/BitmapFont$Align;->$values()[Lcom/jme3/font/BitmapFont$Align;

    move-result-object v0

    sput-object v0, Lcom/jme3/font/BitmapFont$Align;->$VALUES:[Lcom/jme3/font/BitmapFont$Align;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/font/BitmapFont$Align;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/font/BitmapFont$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/font/BitmapFont$Align;

    return-object p0
.end method

.method public static values()[Lcom/jme3/font/BitmapFont$Align;
    .locals 1

    sget-object v0, Lcom/jme3/font/BitmapFont$Align;->$VALUES:[Lcom/jme3/font/BitmapFont$Align;

    invoke-virtual {v0}, [Lcom/jme3/font/BitmapFont$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/font/BitmapFont$Align;

    return-object v0
.end method
