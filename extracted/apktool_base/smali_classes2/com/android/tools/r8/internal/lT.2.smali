.class public final Lcom/android/tools/r8/internal/lT;
.super Lcom/android/tools/r8/internal/mT;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/mT;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/lT;->b:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 0

    sub-int/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
