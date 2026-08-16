.class public abstract synthetic Lcom/android/tools/r8/internal/U8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/android/tools/r8/internal/T10;->i:[Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/T10;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/T10;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/U8;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x5

    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/android/tools/r8/internal/U8;->b:[I

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/android/tools/r8/internal/U8;->b:[I

    const/4 v5, 0x6

    aput v3, v4, v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sget-object v4, Lcom/android/tools/r8/internal/V8$a;->g:[Lcom/android/tools/r8/internal/V8$a;

    invoke-virtual {v4}, [Lcom/android/tools/r8/internal/V8$a;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/internal/V8$a;

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/internal/U8;->a:[I

    :try_start_3
    sget-object v5, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/android/tools/r8/internal/U8;->a:[I

    aput v2, v4, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/tools/r8/internal/U8;->a:[I

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v1, 0x4

    :try_start_6
    sget-object v2, Lcom/android/tools/r8/internal/U8;->a:[I

    aput v1, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/android/tools/r8/internal/U8;->a:[I

    aput v0, v2, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
