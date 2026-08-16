.class public final enum Lcom/google/android/filament/utils/ImageDiff$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/ImageDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/utils/ImageDiff$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/utils/ImageDiff$b;

.field public static final enum AND:Lcom/google/android/filament/utils/ImageDiff$b;

.field public static final enum LEAF:Lcom/google/android/filament/utils/ImageDiff$b;

.field public static final enum OR:Lcom/google/android/filament/utils/ImageDiff$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$b;

    const-string v1, "LEAF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->LEAF:Lcom/google/android/filament/utils/ImageDiff$b;

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$b;

    const-string v1, "AND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->AND:Lcom/google/android/filament/utils/ImageDiff$b;

    new-instance v0, Lcom/google/android/filament/utils/ImageDiff$b;

    const-string v1, "OR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/ImageDiff$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->OR:Lcom/google/android/filament/utils/ImageDiff$b;

    invoke-static {}, Lcom/google/android/filament/utils/ImageDiff$b;->a()[Lcom/google/android/filament/utils/ImageDiff$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/utils/ImageDiff$b;
    .locals 3

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->LEAF:Lcom/google/android/filament/utils/ImageDiff$b;

    sget-object v1, Lcom/google/android/filament/utils/ImageDiff$b;->AND:Lcom/google/android/filament/utils/ImageDiff$b;

    sget-object v2, Lcom/google/android/filament/utils/ImageDiff$b;->OR:Lcom/google/android/filament/utils/ImageDiff$b;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/filament/utils/ImageDiff$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/utils/ImageDiff$b;
    .locals 1

    const-class v0, Lcom/google/android/filament/utils/ImageDiff$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/utils/ImageDiff$b;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/utils/ImageDiff$b;
    .locals 1

    sget-object v0, Lcom/google/android/filament/utils/ImageDiff$b;->$VALUES:[Lcom/google/android/filament/utils/ImageDiff$b;

    invoke-virtual {v0}, [Lcom/google/android/filament/utils/ImageDiff$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/utils/ImageDiff$b;

    return-object v0
.end method
