.class public abstract synthetic Lcom/android/tools/r8/shaking/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I

.field public static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/tools/r8/c;->c(I)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/shaking/y4;->e:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/android/tools/r8/shaking/y4;->e:[I

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {v0}, Lcom/android/tools/r8/c;->c(I)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/shaking/y4;->d:[I

    :try_start_2
    aput v2, v1, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/android/tools/r8/shaking/y4;->d:[I

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sget-object v1, Lcom/android/tools/r8/shaking/r;->d:[Lcom/android/tools/r8/shaking/r;

    invoke-virtual {v1}, [Lcom/android/tools/r8/shaking/r;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/shaking/r;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/shaking/y4;->c:[I

    :try_start_4
    aput v2, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/android/tools/r8/shaking/y4;->c:[I

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sget-object v1, Lcom/android/tools/r8/shaking/X0;->e:[Lcom/android/tools/r8/shaking/X0;

    invoke-virtual {v1}, [Lcom/android/tools/r8/shaking/X0;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/shaking/X0;

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/shaking/y4;->b:[I

    :try_start_6
    aput v2, v1, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/android/tools/r8/shaking/y4;->b:[I

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v1, 0x3

    :try_start_8
    sget-object v3, Lcom/android/tools/r8/shaking/y4;->b:[I

    aput v1, v3, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v3, 0x4

    :try_start_9
    sget-object v4, Lcom/android/tools/r8/shaking/y4;->b:[I

    aput v3, v4, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    sget-object v4, Lcom/android/tools/r8/shaking/O3;->g:[Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v4}, [Lcom/android/tools/r8/shaking/O3;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/shaking/O3;

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/shaking/y4;->a:[I

    :try_start_a
    sget-object v5, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/android/tools/r8/shaking/y4;->a:[I

    aput v0, v2, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/android/tools/r8/shaking/y4;->a:[I

    sget-object v2, Lcom/android/tools/r8/shaking/O3;->b:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/android/tools/r8/shaking/y4;->a:[I

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/android/tools/r8/shaking/y4;->a:[I

    const/4 v1, 0x5

    aput v1, v0, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
