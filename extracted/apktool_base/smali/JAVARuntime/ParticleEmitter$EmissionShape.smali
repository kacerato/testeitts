.class public final enum LJAVARuntime/ParticleEmitter$EmissionShape;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmissionShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ParticleEmitter$EmissionShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ParticleEmitter$EmissionShape;

.field public static final enum Cone:LJAVARuntime/ParticleEmitter$EmissionShape;

.field public static final enum Rectangle:LJAVARuntime/ParticleEmitter$EmissionShape;

.field public static final enum Sphere:LJAVARuntime/ParticleEmitter$EmissionShape;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ParticleEmitter$EmissionShape;
    .locals 3

    sget-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->Sphere:LJAVARuntime/ParticleEmitter$EmissionShape;

    sget-object v1, LJAVARuntime/ParticleEmitter$EmissionShape;->Cone:LJAVARuntime/ParticleEmitter$EmissionShape;

    sget-object v2, LJAVARuntime/ParticleEmitter$EmissionShape;->Rectangle:LJAVARuntime/ParticleEmitter$EmissionShape;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/ParticleEmitter$EmissionShape;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissionShape;

    const-string v1, "Sphere"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->Sphere:LJAVARuntime/ParticleEmitter$EmissionShape;

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissionShape;

    const-string v1, "Cone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->Cone:LJAVARuntime/ParticleEmitter$EmissionShape;

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissionShape;

    const-string v1, "Rectangle"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->Rectangle:LJAVARuntime/ParticleEmitter$EmissionShape;

    invoke-static {}, LJAVARuntime/ParticleEmitter$EmissionShape;->$values()[LJAVARuntime/ParticleEmitter$EmissionShape;

    move-result-object v0

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->$VALUES:[LJAVARuntime/ParticleEmitter$EmissionShape;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ParticleEmitter$EmissionShape;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ParticleEmitter$EmissionShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ParticleEmitter$EmissionShape;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ParticleEmitter$EmissionShape;
    .locals 1

    sget-object v0, LJAVARuntime/ParticleEmitter$EmissionShape;->$VALUES:[LJAVARuntime/ParticleEmitter$EmissionShape;

    invoke-virtual {v0}, [LJAVARuntime/ParticleEmitter$EmissionShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ParticleEmitter$EmissionShape;

    return-object v0
.end method
