.class public final enum Lcom/jme3/effect/ParticleMesh$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/effect/ParticleMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/effect/ParticleMesh$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/effect/ParticleMesh$Type;

.field public static final enum Point:Lcom/jme3/effect/ParticleMesh$Type;

.field public static final enum Triangle:Lcom/jme3/effect/ParticleMesh$Type;


# direct methods
.method private static synthetic $values()[Lcom/jme3/effect/ParticleMesh$Type;
    .locals 2

    sget-object v0, Lcom/jme3/effect/ParticleMesh$Type;->Point:Lcom/jme3/effect/ParticleMesh$Type;

    sget-object v1, Lcom/jme3/effect/ParticleMesh$Type;->Triangle:Lcom/jme3/effect/ParticleMesh$Type;

    filled-new-array {v0, v1}, [Lcom/jme3/effect/ParticleMesh$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/effect/ParticleMesh$Type;

    const-string v1, "Point"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/effect/ParticleMesh$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/effect/ParticleMesh$Type;->Point:Lcom/jme3/effect/ParticleMesh$Type;

    new-instance v0, Lcom/jme3/effect/ParticleMesh$Type;

    const-string v1, "Triangle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/effect/ParticleMesh$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/effect/ParticleMesh$Type;->Triangle:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-static {}, Lcom/jme3/effect/ParticleMesh$Type;->$values()[Lcom/jme3/effect/ParticleMesh$Type;

    move-result-object v0

    sput-object v0, Lcom/jme3/effect/ParticleMesh$Type;->$VALUES:[Lcom/jme3/effect/ParticleMesh$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/effect/ParticleMesh$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/effect/ParticleMesh$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/effect/ParticleMesh$Type;

    return-object p0
.end method

.method public static values()[Lcom/jme3/effect/ParticleMesh$Type;
    .locals 1

    sget-object v0, Lcom/jme3/effect/ParticleMesh$Type;->$VALUES:[Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {v0}, [Lcom/jme3/effect/ParticleMesh$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/effect/ParticleMesh$Type;

    return-object v0
.end method
