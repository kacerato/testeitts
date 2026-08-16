.class public final enum LJAVARuntime/ParticleEmitter$SizeBased;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeBased"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ParticleEmitter$SizeBased;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ParticleEmitter$SizeBased;

.field public static final enum BySpeed:LJAVARuntime/ParticleEmitter$SizeBased;

.field public static final enum Constant:LJAVARuntime/ParticleEmitter$SizeBased;

.field public static final enum SizeOverLifetime:LJAVARuntime/ParticleEmitter$SizeBased;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ParticleEmitter$SizeBased;
    .locals 3

    sget-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->SizeOverLifetime:LJAVARuntime/ParticleEmitter$SizeBased;

    sget-object v1, LJAVARuntime/ParticleEmitter$SizeBased;->Constant:LJAVARuntime/ParticleEmitter$SizeBased;

    sget-object v2, LJAVARuntime/ParticleEmitter$SizeBased;->BySpeed:LJAVARuntime/ParticleEmitter$SizeBased;

    filled-new-array {v0, v1, v2}, [LJAVARuntime/ParticleEmitter$SizeBased;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ParticleEmitter$SizeBased;

    const-string v1, "SizeOverLifetime"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$SizeBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->SizeOverLifetime:LJAVARuntime/ParticleEmitter$SizeBased;

    new-instance v0, LJAVARuntime/ParticleEmitter$SizeBased;

    const-string v1, "Constant"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$SizeBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->Constant:LJAVARuntime/ParticleEmitter$SizeBased;

    new-instance v0, LJAVARuntime/ParticleEmitter$SizeBased;

    const-string v1, "BySpeed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$SizeBased;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->BySpeed:LJAVARuntime/ParticleEmitter$SizeBased;

    invoke-static {}, LJAVARuntime/ParticleEmitter$SizeBased;->$values()[LJAVARuntime/ParticleEmitter$SizeBased;

    move-result-object v0

    sput-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->$VALUES:[LJAVARuntime/ParticleEmitter$SizeBased;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ParticleEmitter$SizeBased;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ParticleEmitter$SizeBased;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ParticleEmitter$SizeBased;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ParticleEmitter$SizeBased;
    .locals 1

    sget-object v0, LJAVARuntime/ParticleEmitter$SizeBased;->$VALUES:[LJAVARuntime/ParticleEmitter$SizeBased;

    invoke-virtual {v0}, [LJAVARuntime/ParticleEmitter$SizeBased;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ParticleEmitter$SizeBased;

    return-object v0
.end method
