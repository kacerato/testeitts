.class public abstract synthetic Lcom/android/tools/r8/dex/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/dex/W$b;->values()[Lcom/android/tools/r8/dex/W$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/dex/V;->a:[I

    :try_start_0
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/tools/r8/dex/V;->a:[I

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/tools/r8/dex/V;->a:[I

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/tools/r8/dex/V;->a:[I

    const/4 v1, 0x4

    const/4 v2, 0x7

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
