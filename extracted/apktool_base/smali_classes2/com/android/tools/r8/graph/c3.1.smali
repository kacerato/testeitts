.class public abstract synthetic Lcom/android/tools/r8/graph/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/tools/r8/c;->c(I)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/tools/r8/graph/c3;->b:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lcom/android/tools/r8/graph/c3;->b:[I

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/android/tools/r8/graph/c3;->b:[I

    aput v3, v4, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/android/tools/r8/graph/c3;->b:[I

    aput v0, v1, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-boolean v2, Lcom/android/tools/r8/graph/c3;->a:Z

    return-void
.end method
