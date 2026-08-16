.class public abstract synthetic Lcom/android/tools/r8/internal/aV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/ZU;->g:[Lcom/android/tools/r8/internal/ZU;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/ZU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/ZU;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/aV;->a:[I

    const/4 v1, 0x1

    :try_start_0
    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/tools/r8/internal/aV;->a:[I

    sget-object v1, Lcom/android/tools/r8/internal/ZU;->e:Lcom/android/tools/r8/internal/ZU;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
