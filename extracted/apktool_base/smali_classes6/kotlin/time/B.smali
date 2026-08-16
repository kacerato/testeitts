.class public final Lkotlin/time/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/B$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1656#2,3:1614\n1656#2,3:1617\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n*L\n1295#1:1614,3\n1302#1:1617,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1613:1\n1656#2,3:1614\n1656#2,3:1617\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/LongParser\n*L\n1295#1:1614,3\n1302#1:1617,3\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lkotlin/time/B$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lkotlin/time/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lkotlin/time/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/time/B$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/B$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lkotlin/time/B;->e:Lkotlin/time/B$a;

    new-instance v0, Lkotlin/time/B;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/B;-><init>(JZ)V

    sput-object v0, Lkotlin/time/B;->f:Lkotlin/time/B;

    new-instance v0, Lkotlin/time/B;

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/B;-><init>(JZ)V

    sput-object v0, Lkotlin/time/B;->g:Lkotlin/time/B;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/B;->a:J

    iput-boolean p3, p0, Lkotlin/time/B;->b:Z

    const/16 p3, 0xa

    int-to-long v0, p3

    div-long v2, p1, v0

    iput-wide v2, p0, Lkotlin/time/B;->c:J

    rem-long/2addr p1, v0

    iput-wide p1, p0, Lkotlin/time/B;->d:J

    return-void
.end method

.method public static final synthetic a(Lkotlin/time/B;)Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/time/B;->b:Z

    return p0
.end method

.method public static final synthetic b()Lkotlin/time/B;
    .locals 1

    sget-object v0, Lkotlin/time/B;->g:Lkotlin/time/B;

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/time/B;
    .locals 1

    sget-object v0, Lkotlin/time/B;->f:Lkotlin/time/B;

    return-object v0
.end method

.method public static final synthetic d(Lkotlin/time/B;)J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/B;->d:J

    return-wide v0
.end method

.method public static final synthetic e(Lkotlin/time/B;)J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/B;->a:J

    return-wide v0
.end method

.method public static final synthetic f(Lkotlin/time/B;)J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/B;->c:J

    return-wide v0
.end method


# virtual methods
.method public final g(Ljava/lang/String;ILMf/q;)J
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "LMf/q<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lnf/P0;",
            ">;)J"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/time/B;->a(Lkotlin/time/B;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x30

    if-ge p2, v2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v3, v2, :cond_7

    const/16 v6, 0x3a

    if-ge v2, v6, :cond_7

    add-int/lit8 v2, v2, -0x30

    invoke-static {p0}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gtz v7, :cond_5

    invoke-static {p0}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-nez v7, :cond_4

    int-to-long v7, v2

    invoke-static {p0}, Lkotlin/time/B;->d(Lkotlin/time/B;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x3

    shl-long v6, v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v6, v4

    int-to-long v4, v2

    add-long/2addr v4, v6

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v3, v1, :cond_6

    if-ge v1, v6, :cond_6

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/time/B;->e(Lkotlin/time/B;)J

    move-result-wide p1

    return-wide p1

    :cond_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v4
.end method
