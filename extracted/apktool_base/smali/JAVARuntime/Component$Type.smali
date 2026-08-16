.class public final enum LJAVARuntime/Component$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime LH6/g;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJAVARuntime/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LJAVARuntime/Component$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LJAVARuntime/Component$Type;

.field public static final enum EngineComponent:LJAVARuntime/Component$Type;

.field public static final enum JavaComponent:LJAVARuntime/Component$Type;


# direct methods
.method private static synthetic $values()[LJAVARuntime/Component$Type;
    .locals 2

    sget-object v0, LJAVARuntime/Component$Type;->JavaComponent:LJAVARuntime/Component$Type;

    sget-object v1, LJAVARuntime/Component$Type;->EngineComponent:LJAVARuntime/Component$Type;

    filled-new-array {v0, v1}, [LJAVARuntime/Component$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJAVARuntime/Component$Type;

    const-string v1, "JavaComponent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJAVARuntime/Component$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Component$Type;->JavaComponent:LJAVARuntime/Component$Type;

    new-instance v0, LJAVARuntime/Component$Type;

    const-string v1, "EngineComponent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJAVARuntime/Component$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJAVARuntime/Component$Type;->EngineComponent:LJAVARuntime/Component$Type;

    invoke-static {}, LJAVARuntime/Component$Type;->$values()[LJAVARuntime/Component$Type;

    move-result-object v0

    sput-object v0, LJAVARuntime/Component$Type;->$VALUES:[LJAVARuntime/Component$Type;

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

.method public static valueOf(Ljava/lang/String;)LJAVARuntime/Component$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LJAVARuntime/Component$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJAVARuntime/Component$Type;

    return-object p0
.end method

.method public static values()[LJAVARuntime/Component$Type;
    .locals 1

    sget-object v0, LJAVARuntime/Component$Type;->$VALUES:[LJAVARuntime/Component$Type;

    invoke-virtual {v0}, [LJAVARuntime/Component$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJAVARuntime/Component$Type;

    return-object v0
.end method
