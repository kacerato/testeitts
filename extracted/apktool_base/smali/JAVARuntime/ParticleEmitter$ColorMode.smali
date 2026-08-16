.class public final enum LJAVARuntime/ParticleEmitter$ColorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/ParticleEmitter$ColorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/ParticleEmitter$ColorMode;

.field public static final enum Additive:LJAVARuntime/ParticleEmitter$ColorMode;

.field public static final enum Fade:LJAVARuntime/ParticleEmitter$ColorMode;

.field public static final enum Multiply:LJAVARuntime/ParticleEmitter$ColorMode;

.field public static final enum Normal:LJAVARuntime/ParticleEmitter$ColorMode;


# direct methods
.method private static synthetic $values()[LJAVARuntime/ParticleEmitter$ColorMode;
    .locals 4

    sget-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->Normal:LJAVARuntime/ParticleEmitter$ColorMode;

    sget-object v1, LJAVARuntime/ParticleEmitter$ColorMode;->Multiply:LJAVARuntime/ParticleEmitter$ColorMode;

    sget-object v2, LJAVARuntime/ParticleEmitter$ColorMode;->Additive:LJAVARuntime/ParticleEmitter$ColorMode;

    sget-object v3, LJAVARuntime/ParticleEmitter$ColorMode;->Fade:LJAVARuntime/ParticleEmitter$ColorMode;

    filled-new-array {v0, v1, v2, v3}, [LJAVARuntime/ParticleEmitter$ColorMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/ParticleEmitter$ColorMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->Normal:LJAVARuntime/ParticleEmitter$ColorMode;

    new-instance v0, LJAVARuntime/ParticleEmitter$ColorMode;

    const-string v1, "Multiply"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->Multiply:LJAVARuntime/ParticleEmitter$ColorMode;

    new-instance v0, LJAVARuntime/ParticleEmitter$ColorMode;

    const-string v1, "Additive"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->Additive:LJAVARuntime/ParticleEmitter$ColorMode;

    new-instance v0, LJAVARuntime/ParticleEmitter$ColorMode;

    const-string v1, "Fade"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LJAVARuntime/ParticleEmitter$ColorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->Fade:LJAVARuntime/ParticleEmitter$ColorMode;

    invoke-static {}, LJAVARuntime/ParticleEmitter$ColorMode;->$values()[LJAVARuntime/ParticleEmitter$ColorMode;

    move-result-object v0

    sput-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->$VALUES:[LJAVARuntime/ParticleEmitter$ColorMode;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/ParticleEmitter$ColorMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/ParticleEmitter$ColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/ParticleEmitter$ColorMode;

    return-object p0
.end method

.method public static values()[LJAVARuntime/ParticleEmitter$ColorMode;
    .locals 1

    sget-object v0, LJAVARuntime/ParticleEmitter$ColorMode;->$VALUES:[LJAVARuntime/ParticleEmitter$ColorMode;

    invoke-virtual {v0}, [LJAVARuntime/ParticleEmitter$ColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/ParticleEmitter$ColorMode;

    return-object v0
.end method
