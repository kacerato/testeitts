.class public final enum Lcom/google/android/filament/TextureSampler$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/TextureSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/TextureSampler$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/TextureSampler$a;

.field public static final enum ALWAYS:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum EQUAL:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum GREATER:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum LESS:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum LESS_EQUAL:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum NEVER:Lcom/google/android/filament/TextureSampler$a;

.field public static final enum NOT_EQUAL:Lcom/google/android/filament/TextureSampler$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "LESS_EQUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "GREATER_EQUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "LESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->LESS:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "GREATER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->GREATER:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "EQUAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->EQUAL:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "NOT_EQUAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->NOT_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "ALWAYS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->ALWAYS:Lcom/google/android/filament/TextureSampler$a;

    new-instance v0, Lcom/google/android/filament/TextureSampler$a;

    const-string v1, "NEVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TextureSampler$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->NEVER:Lcom/google/android/filament/TextureSampler$a;

    invoke-static {}, Lcom/google/android/filament/TextureSampler$a;->a()[Lcom/google/android/filament/TextureSampler$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/TextureSampler$a;->$VALUES:[Lcom/google/android/filament/TextureSampler$a;

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

.method public static synthetic a()[Lcom/google/android/filament/TextureSampler$a;
    .locals 8

    sget-object v0, Lcom/google/android/filament/TextureSampler$a;->LESS_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    sget-object v1, Lcom/google/android/filament/TextureSampler$a;->GREATER_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    sget-object v2, Lcom/google/android/filament/TextureSampler$a;->LESS:Lcom/google/android/filament/TextureSampler$a;

    sget-object v3, Lcom/google/android/filament/TextureSampler$a;->GREATER:Lcom/google/android/filament/TextureSampler$a;

    sget-object v4, Lcom/google/android/filament/TextureSampler$a;->EQUAL:Lcom/google/android/filament/TextureSampler$a;

    sget-object v5, Lcom/google/android/filament/TextureSampler$a;->NOT_EQUAL:Lcom/google/android/filament/TextureSampler$a;

    sget-object v6, Lcom/google/android/filament/TextureSampler$a;->ALWAYS:Lcom/google/android/filament/TextureSampler$a;

    sget-object v7, Lcom/google/android/filament/TextureSampler$a;->NEVER:Lcom/google/android/filament/TextureSampler$a;

    filled-new-array/range {v0 .. v7}, [Lcom/google/android/filament/TextureSampler$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/TextureSampler$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/TextureSampler$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/TextureSampler$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/TextureSampler$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/TextureSampler$a;->$VALUES:[Lcom/google/android/filament/TextureSampler$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/TextureSampler$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/TextureSampler$a;

    return-object v0
.end method
