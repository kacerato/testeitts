.class public abstract Lcom/android/tools/r8/internal/SH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/QH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/QH;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/QH;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/SH;->a:Lcom/android/tools/r8/internal/QH;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/PH;[I)I
    .locals 5

    array-length v0, p1

    if-ltz v0, :cond_2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v4

    aput v4, p1, v1

    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The maximum number of elements ("

    const-string v1, ") is negative"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
