.class public final enum Lcom/google/android/filament/Engine$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$a;

.field public static final enum DEFAULT:Lcom/google/android/filament/Engine$a;

.field public static final enum METAL:Lcom/google/android/filament/Engine$a;

.field public static final enum NOOP:Lcom/google/android/filament/Engine$a;

.field public static final enum OPENGL:Lcom/google/android/filament/Engine$a;

.field public static final enum VULKAN:Lcom/google/android/filament/Engine$a;

.field public static final enum WEBGPU:Lcom/google/android/filament/Engine$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->DEFAULT:Lcom/google/android/filament/Engine$a;

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "OPENGL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->OPENGL:Lcom/google/android/filament/Engine$a;

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "VULKAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->VULKAN:Lcom/google/android/filament/Engine$a;

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "METAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->METAL:Lcom/google/android/filament/Engine$a;

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "WEBGPU"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->WEBGPU:Lcom/google/android/filament/Engine$a;

    new-instance v0, Lcom/google/android/filament/Engine$a;

    const-string v1, "NOOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$a;->NOOP:Lcom/google/android/filament/Engine$a;

    invoke-static {}, Lcom/google/android/filament/Engine$a;->a()[Lcom/google/android/filament/Engine$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$a;->$VALUES:[Lcom/google/android/filament/Engine$a;

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

.method public static synthetic a()[Lcom/google/android/filament/Engine$a;
    .locals 6

    sget-object v0, Lcom/google/android/filament/Engine$a;->DEFAULT:Lcom/google/android/filament/Engine$a;

    sget-object v1, Lcom/google/android/filament/Engine$a;->OPENGL:Lcom/google/android/filament/Engine$a;

    sget-object v2, Lcom/google/android/filament/Engine$a;->VULKAN:Lcom/google/android/filament/Engine$a;

    sget-object v3, Lcom/google/android/filament/Engine$a;->METAL:Lcom/google/android/filament/Engine$a;

    sget-object v4, Lcom/google/android/filament/Engine$a;->WEBGPU:Lcom/google/android/filament/Engine$a;

    sget-object v5, Lcom/google/android/filament/Engine$a;->NOOP:Lcom/google/android/filament/Engine$a;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/Engine$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Engine$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$a;->$VALUES:[Lcom/google/android/filament/Engine$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$a;

    return-object v0
.end method
