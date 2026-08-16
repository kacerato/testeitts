.class public abstract synthetic Lcom/android/tools/r8/internal/Lw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->j:[Lcom/android/tools/r8/internal/Mw0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/Mw0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/Mw0;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/Lw0;->d:[I

    const/4 v1, 0x1

    :try_start_0
    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/tools/r8/internal/Lw0;->d:[I

    aput v0, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    const/4 v3, 0x5

    :try_start_2
    sget-object v4, Lcom/android/tools/r8/internal/Lw0;->d:[I

    aput v2, v4, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x6

    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->d:[I

    aput v5, v6, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sget-object v6, Lcom/android/tools/r8/internal/T10;->i:[Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v6}, [Lcom/android/tools/r8/internal/T10;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/tools/r8/internal/T10;

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    const/4 v7, 0x0

    :try_start_4
    aput v1, v6, v7
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    aput v0, v6, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    aput v2, v6, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    sget-object v8, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v5, v6, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    aput v3, v6, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/android/tools/r8/internal/Lw0;->c:[I

    sget-object v8, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v4, v6, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/4 v6, 0x7

    :try_start_a
    sget-object v8, Lcom/android/tools/r8/internal/Lw0;->c:[I

    aput v6, v8, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sget-object v8, Lcom/android/tools/r8/internal/YV;->l:[Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v8}, [Lcom/android/tools/r8/internal/YV;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/tools/r8/internal/YV;

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/tools/r8/internal/Lw0;->b:[I

    :try_start_b
    aput v1, v8, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v0, v8, v0
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v2, v8, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v5, v8, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v3, v8, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v8, 0x8

    :try_start_10
    sget-object v9, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v4, v9, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v9, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v6, v9, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v4, Lcom/android/tools/r8/internal/Lw0;->b:[I

    aput v8, v4, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, Lcom/android/tools/r8/internal/Lw0;->b:[I

    const/16 v6, 0x9

    aput v6, v4, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v4, Lcom/android/tools/r8/internal/Lw0;->b:[I

    const/16 v6, 0xa

    aput v6, v4, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->g:[Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v4}, [Lcom/android/tools/r8/internal/Kw0;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/tools/r8/internal/Kw0;

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/internal/Lw0;->a:[I

    :try_start_15
    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v4, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/android/tools/r8/internal/Lw0;->a:[I

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/android/tools/r8/internal/Lw0;->a:[I

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    aput v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/tools/r8/internal/Lw0;->a:[I

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/tools/r8/internal/Lw0;->a:[I

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    aput v3, v0, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method
