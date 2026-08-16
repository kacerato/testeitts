.class public final enum LJAVARuntime/ParticleEmitter$WorldSpace;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorldSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ParticleEmitter$WorldSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ParticleEmitter$WorldSpace;

.field public static final enum Global:LJAVARuntime/ParticleEmitter$WorldSpace;

.field public static final enum Local:LJAVARuntime/ParticleEmitter$WorldSpace;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ParticleEmitter$WorldSpace;
    .locals 2

    sget-object v0, LJAVARuntime/ParticleEmitter$WorldSpace;->Global:LJAVARuntime/ParticleEmitter$WorldSpace;

    sget-object v1, LJAVARuntime/ParticleEmitter$WorldSpace;->Local:LJAVARuntime/ParticleEmitter$WorldSpace;

    filled-new-array {v0, v1}, [LJAVARuntime/ParticleEmitter$WorldSpace;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ParticleEmitter$WorldSpace;

    const-string v1, "Global"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$WorldSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$WorldSpace;->Global:LJAVARuntime/ParticleEmitter$WorldSpace;

    new-instance v0, LJAVARuntime/ParticleEmitter$WorldSpace;

    const-string v1, "Local"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$WorldSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$WorldSpace;->Local:LJAVARuntime/ParticleEmitter$WorldSpace;

    invoke-static {}, LJAVARuntime/ParticleEmitter$WorldSpace;->$values()[LJAVARuntime/ParticleEmitter$WorldSpace;

    move-result-object v0

    sput-object v0, LJAVARuntime/ParticleEmitter$WorldSpace;->$VALUES:[LJAVARuntime/ParticleEmitter$WorldSpace;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ParticleEmitter$WorldSpace;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ParticleEmitter$WorldSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ParticleEmitter$WorldSpace;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ParticleEmitter$WorldSpace;
    .locals 1

    sget-object v0, LJAVARuntime/ParticleEmitter$WorldSpace;->$VALUES:[LJAVARuntime/ParticleEmitter$WorldSpace;

    invoke-virtual {v0}, [LJAVARuntime/ParticleEmitter$WorldSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ParticleEmitter$WorldSpace;

    return-object v0
.end method
