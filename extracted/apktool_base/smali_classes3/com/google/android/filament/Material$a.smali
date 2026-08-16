.class public final enum Lcom/google/android/filament/Material$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Material$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Material$a;

.field public static final enum ADD:Lcom/google/android/filament/Material$a;

.field public static final enum FADE:Lcom/google/android/filament/Material$a;

.field public static final enum MASKED:Lcom/google/android/filament/Material$a;

.field public static final enum MULTIPLY:Lcom/google/android/filament/Material$a;

.field public static final enum OPAQUE:Lcom/google/android/filament/Material$a;

.field public static final enum SCREEN:Lcom/google/android/filament/Material$a;

.field public static final enum TRANSPARENT:Lcom/google/android/filament/Material$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "OPAQUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->OPAQUE:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "TRANSPARENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->TRANSPARENT:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "ADD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->ADD:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "MASKED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->MASKED:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "FADE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->FADE:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "MULTIPLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->MULTIPLY:Lcom/google/android/filament/Material$a;

    new-instance v0, Lcom/google/android/filament/Material$a;

    const-string v1, "SCREEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Material$a;->SCREEN:Lcom/google/android/filament/Material$a;

    invoke-static {}, Lcom/google/android/filament/Material$a;->a()[Lcom/google/android/filament/Material$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Material$a;->$VALUES:[Lcom/google/android/filament/Material$a;

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

.method public static synthetic a()[Lcom/google/android/filament/Material$a;
    .locals 7

    sget-object v0, Lcom/google/android/filament/Material$a;->OPAQUE:Lcom/google/android/filament/Material$a;

    sget-object v1, Lcom/google/android/filament/Material$a;->TRANSPARENT:Lcom/google/android/filament/Material$a;

    sget-object v2, Lcom/google/android/filament/Material$a;->ADD:Lcom/google/android/filament/Material$a;

    sget-object v3, Lcom/google/android/filament/Material$a;->MASKED:Lcom/google/android/filament/Material$a;

    sget-object v4, Lcom/google/android/filament/Material$a;->FADE:Lcom/google/android/filament/Material$a;

    sget-object v5, Lcom/google/android/filament/Material$a;->MULTIPLY:Lcom/google/android/filament/Material$a;

    sget-object v6, Lcom/google/android/filament/Material$a;->SCREEN:Lcom/google/android/filament/Material$a;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/filament/Material$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Material$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Material$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Material$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Material$a;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Material$a;->$VALUES:[Lcom/google/android/filament/Material$a;

    invoke-virtual {v0}, [Lcom/google/android/filament/Material$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Material$a;

    return-object v0
.end method
