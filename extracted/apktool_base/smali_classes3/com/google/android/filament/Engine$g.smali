.class public final enum Lcom/google/android/filament/Engine$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/Engine$g;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/Engine$g;

.field public static final enum INSTANCED:Lcom/google/android/filament/Engine$g;

.field public static final enum MULTIVIEW:Lcom/google/android/filament/Engine$g;

.field public static final enum NONE:Lcom/google/android/filament/Engine$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/Engine$g;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$g;->NONE:Lcom/google/android/filament/Engine$g;

    new-instance v0, Lcom/google/android/filament/Engine$g;

    const-string v1, "INSTANCED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$g;->INSTANCED:Lcom/google/android/filament/Engine$g;

    new-instance v0, Lcom/google/android/filament/Engine$g;

    const-string v1, "MULTIVIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Engine$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/Engine$g;->MULTIVIEW:Lcom/google/android/filament/Engine$g;

    invoke-static {}, Lcom/google/android/filament/Engine$g;->a()[Lcom/google/android/filament/Engine$g;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine$g;->$VALUES:[Lcom/google/android/filament/Engine$g;

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

.method public static synthetic a()[Lcom/google/android/filament/Engine$g;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Engine$g;->NONE:Lcom/google/android/filament/Engine$g;

    sget-object v1, Lcom/google/android/filament/Engine$g;->INSTANCED:Lcom/google/android/filament/Engine$g;

    sget-object v2, Lcom/google/android/filament/Engine$g;->MULTIVIEW:Lcom/google/android/filament/Engine$g;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/Engine$g;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/Engine$g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/Engine$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/Engine$g;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/Engine$g;
    .locals 1

    sget-object v0, Lcom/google/android/filament/Engine$g;->$VALUES:[Lcom/google/android/filament/Engine$g;

    invoke-virtual {v0}, [Lcom/google/android/filament/Engine$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/Engine$g;

    return-object v0
.end method
