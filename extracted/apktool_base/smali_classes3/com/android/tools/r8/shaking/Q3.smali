.class public abstract synthetic Lcom/android/tools/r8/shaking/Q3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/shaking/U3;->j:[Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v0}, [Lcom/android/tools/r8/shaking/U3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/shaking/U3;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/shaking/Q3;->a:[I

    :try_start_0
    sget-object v1, Lcom/android/tools/r8/shaking/U3;->d:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/tools/r8/shaking/Q3;->a:[I

    sget-object v1, Lcom/android/tools/r8/shaking/U3;->c:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/tools/r8/shaking/Q3;->a:[I

    sget-object v1, Lcom/android/tools/r8/shaking/U3;->b:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v0, 0x4

    :try_start_3
    sget-object v1, Lcom/android/tools/r8/shaking/Q3;->a:[I

    sget-object v2, Lcom/android/tools/r8/shaking/U3;->e:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v2, Lcom/android/tools/r8/shaking/Q3;->a:[I

    aput v1, v2, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v0, 0x6

    :try_start_5
    sget-object v2, Lcom/android/tools/r8/shaking/Q3;->a:[I

    aput v0, v2, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/android/tools/r8/shaking/Q3;->a:[I

    const/4 v2, 0x7

    aput v2, v1, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/tools/r8/shaking/Q3;->a:[I

    sget-object v1, Lcom/android/tools/r8/shaking/U3;->i:Lcom/android/tools/r8/shaking/U3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
