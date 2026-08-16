.class public final enum Lcom/android/tools/r8/internal/zx0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/zx0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/zx0;

.field public static final enum c:Lcom/android/tools/r8/internal/zx0;

.field public static final enum d:Lcom/android/tools/r8/internal/zx0;

.field public static final enum e:Lcom/android/tools/r8/internal/zx0;

.field public static final synthetic f:[Lcom/android/tools/r8/internal/zx0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/zx0;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/zx0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/zx0;->b:Lcom/android/tools/r8/internal/zx0;

    new-instance v1, Lcom/android/tools/r8/internal/zx0;

    const/4 v2, 0x1

    const-string v3, "PROTECTED"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/zx0;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/zx0;->c:Lcom/android/tools/r8/internal/zx0;

    new-instance v2, Lcom/android/tools/r8/internal/zx0;

    const/4 v3, 0x2

    const-string v4, "PRIVATE"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/zx0;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/zx0;->d:Lcom/android/tools/r8/internal/zx0;

    new-instance v3, Lcom/android/tools/r8/internal/zx0;

    const/4 v4, 0x3

    const-string v5, "PACKAGE_PRIVATE"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/zx0;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/internal/zx0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/zx0;->f:[Lcom/android/tools/r8/internal/zx0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/android/tools/r8/internal/zx0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zx0;->f:[Lcom/android/tools/r8/internal/zx0;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/zx0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/zx0;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/yx0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "package-private"

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Unexpected visibility"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "private"

    return-object v0

    :cond_2
    const-string v0, "protected"

    return-object v0

    :cond_3
    const-string v0, "public"

    return-object v0
.end method
