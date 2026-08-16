.class public abstract synthetic Lcom/android/tools/r8/internal/iy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/YV;->l:[Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/YV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/YV;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/iy;->b:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v2, v3, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x4

    :try_start_3
    sget-object v3, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v0, v3, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x5

    :try_start_4
    sget-object v3, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v2, v3, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x6

    :try_start_5
    sget-object v3, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v0, v3, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v2, 0x7

    :try_start_6
    sget-object v3, Lcom/android/tools/r8/internal/iy;->b:[I

    aput v2, v3, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/tools/r8/internal/iy;->b:[I

    const/16 v3, 0x8

    aput v3, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-boolean v1, Lcom/android/tools/r8/internal/iy;->a:Z

    return-void
.end method
