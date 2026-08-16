.class public abstract synthetic Lcom/android/tools/r8/internal/Ua;
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

    sget-object v0, Lcom/android/tools/r8/internal/T10;->i:[Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/T10;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/T10;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/internal/Ua;->d:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, Lcom/android/tools/r8/internal/Ua;->d:[I

    aput v0, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/android/tools/r8/internal/Ua;->d:[I

    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/android/tools/r8/internal/Ua;->d:[I

    sget-object v6, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/android/tools/r8/internal/Ua;->d:[I

    aput v5, v6, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lcom/android/tools/r8/internal/Ua;->d:[I

    sget-object v8, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->d:[I

    aput v7, v8, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    sget-object v8, Lcom/android/tools/r8/internal/YV;->l:[Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v8}, [Lcom/android/tools/r8/internal/YV;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/tools/r8/internal/YV;

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/tools/r8/internal/Ua;->c:[I

    :try_start_7
    aput v1, v8, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v0, v2, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v3, v2, v0
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v5, v2, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v6, v2, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v7, v2, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v2, 0x8

    :try_start_e
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->c:[I

    aput v2, v8, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->g:[Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v8}, [Lcom/android/tools/r8/internal/Kw0;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/tools/r8/internal/Kw0;

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/tools/r8/internal/Ua;->b:[I

    :try_start_f
    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->b:[I

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    aput v0, v8, v0
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->b:[I

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->b:[I

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    aput v4, v8, v4
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->b:[I

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sget-object v8, Lcom/android/tools/r8/internal/kb$a;->l:[Lcom/android/tools/r8/internal/kb$a;

    invoke-virtual {v8}, [Lcom/android/tools/r8/internal/kb$a;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/tools/r8/internal/kb$a;

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/tools/r8/internal/Ua;->a:[I

    :try_start_14
    sget-object v9, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v0, v8, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v3, v1, v0
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v4, v0, v3
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v5, v0, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v6, v0, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v7, v0, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    aput v2, v0, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/android/tools/r8/internal/Ua;->a:[I

    sget-object v1, Lcom/android/tools/r8/internal/kb$a;->k:Lcom/android/tools/r8/internal/kb$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method
