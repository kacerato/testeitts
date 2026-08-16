.class public final enum LJAVARuntime/ParticleEmitter$EmissiveBased;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmissiveBased"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ParticleEmitter$EmissiveBased;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ParticleEmitter$EmissiveBased;

.field public static final enum BySpeed:LJAVARuntime/ParticleEmitter$EmissiveBased;

.field public static final enum Constant:LJAVARuntime/ParticleEmitter$EmissiveBased;

.field public static final enum EmissiveOverLifetime:LJAVARuntime/ParticleEmitter$EmissiveBased;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ParticleEmitter$EmissiveBased;
    .locals 3

    sget-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->Constant:LJAVARuntime/ParticleEmitter$EmissiveBased;

    sget-object v1, LJAVARuntime/ParticleEmitter$EmissiveBased;->EmissiveOverLifetime:LJAVARuntime/ParticleEmitter$EmissiveBased;

    sget-object v2, LJAVARuntime/ParticleEmitter$EmissiveBased;->BySpeed:LJAVARuntime/ParticleEmitter$EmissiveBased;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/ParticleEmitter$EmissiveBased;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissiveBased;

    const-string v1, "Constant"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissiveBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->Constant:LJAVARuntime/ParticleEmitter$EmissiveBased;

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissiveBased;

    const-string v1, "EmissiveOverLifetime"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissiveBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->EmissiveOverLifetime:LJAVARuntime/ParticleEmitter$EmissiveBased;

    new-instance v0, LJAVARuntime/ParticleEmitter$EmissiveBased;

    const-string v1, "BySpeed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$EmissiveBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->BySpeed:LJAVARuntime/ParticleEmitter$EmissiveBased;

    invoke-static {}, LJAVARuntime/ParticleEmitter$EmissiveBased;->$values()[LJAVARuntime/ParticleEmitter$EmissiveBased;

    move-result-object v0

    sput-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->$VALUES:[LJAVARuntime/ParticleEmitter$EmissiveBased;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ParticleEmitter$EmissiveBased;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ParticleEmitter$EmissiveBased;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ParticleEmitter$EmissiveBased;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ParticleEmitter$EmissiveBased;
    .locals 1

    sget-object v0, LJAVARuntime/ParticleEmitter$EmissiveBased;->$VALUES:[LJAVARuntime/ParticleEmitter$EmissiveBased;

    invoke-virtual {v0}, [LJAVARuntime/ParticleEmitter$EmissiveBased;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ParticleEmitter$EmissiveBased;

    return-object v0
.end method
