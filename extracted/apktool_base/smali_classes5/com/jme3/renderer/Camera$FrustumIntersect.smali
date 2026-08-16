.class public final enum Lcom/jme3/renderer/Camera$FrustumIntersect;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrustumIntersect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/renderer/Camera$FrustumIntersect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field public static final enum Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;


# direct methods
.method private static synthetic $values()[Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 3

    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v2, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    filled-new-array {v0, v1, v2}, [Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Outside"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Inside"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    new-instance v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    const-string v1, "Intersects"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Camera$FrustumIntersect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-static {}, Lcom/jme3/renderer/Camera$FrustumIntersect;->$values()[Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->$VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object p0
.end method

.method public static values()[Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 1

    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->$VALUES:[Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {v0}, [Lcom/jme3/renderer/Camera$FrustumIntersect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object v0
.end method
