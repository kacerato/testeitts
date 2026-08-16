.class public final enum Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CONE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CUBEMAP:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum CYLINDER:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum HALF_CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum RENDER_TARGET:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum SPHERE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum SQUARE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

.field public static final enum TORUS:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CUBE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "SPHERE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "SPHERE_LOWPOLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CONE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CYLINDER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CYLINDER:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CIRCLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "TORUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->TORUS:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "SQUARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "SQUARE90"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CAPSULE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "HALF_CAPSULE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->HALF_CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "CUBEMAP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBEMAP:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "PANORAMA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const-string v1, "RENDER_TARGET"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->RENDER_TARGET:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->a()[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
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

.method public static synthetic a()[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;
    .locals 14

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE_LOWPOLY:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CONE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CYLINDER:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CIRCLE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->TORUS:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SQUARE90:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v9, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->HALF_CAPSULE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v11, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBEMAP:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v12, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->PANORAMA:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->RENDER_TARGET:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    filled-new-array/range {v0 .. v13}, [Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    return-object p0
.end method

.method public static values()[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->$VALUES:[Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-virtual {v0}, [Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    return-object v0
.end method
