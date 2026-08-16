.class public final enum Lcom/jme3/math/Plane$Side;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/math/Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/math/Plane$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/math/Plane$Side;

.field public static final enum Negative:Lcom/jme3/math/Plane$Side;

.field public static final enum None:Lcom/jme3/math/Plane$Side;

.field public static final enum Positive:Lcom/jme3/math/Plane$Side;


# direct methods
.method private static synthetic $values()[Lcom/jme3/math/Plane$Side;
    .locals 3

    sget-object v0, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    sget-object v1, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    sget-object v2, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/math/Plane$Side;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->None:Lcom/jme3/math/Plane$Side;

    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "Positive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    new-instance v0, Lcom/jme3/math/Plane$Side;

    const-string v1, "Negative"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Plane$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    invoke-static {}, Lcom/jme3/math/Plane$Side;->$values()[Lcom/jme3/math/Plane$Side;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Plane$Side;->$VALUES:[Lcom/jme3/math/Plane$Side;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/math/Plane$Side;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/math/Plane$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/math/Plane$Side;

    return-object p0
.end method

.method public static values()[Lcom/jme3/math/Plane$Side;
    .locals 1

    sget-object v0, Lcom/jme3/math/Plane$Side;->$VALUES:[Lcom/jme3/math/Plane$Side;

    invoke-virtual {v0}, [Lcom/jme3/math/Plane$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/math/Plane$Side;

    return-object v0
.end method
