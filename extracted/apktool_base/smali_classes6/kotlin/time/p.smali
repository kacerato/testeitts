.class public final Lkotlin/time/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1351#1,14:1614\n1351#1,14:1628\n1656#2,3:1642\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n*L\n1343#1:1614,14\n1344#1:1628,14\n1345#1:1642,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1351#1,14:1614\n1351#1,14:1628\n1656#2,3:1642\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/FractionalParser\n*L\n1343#1:1614,14\n1344#1:1628,14\n1345#1:1642,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/time/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/time/p;

    invoke-direct {v0}, Lkotlin/time/p;-><init>()V

    sput-object v0, Lkotlin/time/p;->a:Lkotlin/time/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILMf/l;)J
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lnf/P0;",
            ">;)J"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, p2, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :goto_0
    const/16 v4, 0x3a

    const/16 v5, 0x30

    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v5, v6, :cond_0

    if-ge v6, v4, :cond_0

    shl-int/lit8 v4, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v6, v6, -0x30

    add-int v3, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int p2, v2, p2

    rsub-int/lit8 p2, p2, 0x6

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_1

    shl-int/lit8 v6, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, v2, 0x9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v6, v1

    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v5, v7, :cond_2

    if-ge v7, v4, :cond_2

    shl-int/lit8 v8, v6, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v8, v6

    add-int/lit8 v7, v7, -0x30

    add-int v6, v8, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sub-int p2, v0, v2

    rsub-int/lit8 p2, p2, 0x9

    :goto_3
    if-ge v1, p2, :cond_3

    shl-int/lit8 v2, v6, 0x3

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt v5, p2, :cond_4

    if-ge p2, v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p1, v3

    const p3, 0x3b9aca00

    int-to-long v0, p3

    mul-long/2addr p1, v0

    int-to-long v0, v6

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(Ljava/lang/String;IILMf/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "LMf/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lnf/P0;",
            ">;)I"
        }
    .end annotation

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-gt v5, v4, :cond_0

    const/16 v5, 0x3a

    if-ge v4, v5, :cond_0

    shl-int/lit8 v5, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x30

    add-int v3, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int p1, v2, p2

    sub-int/2addr p3, p1

    :goto_1
    if-ge v1, p3, :cond_1

    shl-int/lit8 p1, v3, 0x3

    shl-int/lit8 p2, v3, 0x1

    add-int v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method
