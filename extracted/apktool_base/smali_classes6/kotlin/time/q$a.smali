.class public final Lkotlin/time/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,871:1\n793#2,6:872\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n320#1:872,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,871:1\n793#2,6:872\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n320#1:872,6\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/q$a;-><init>()V

    return-void
.end method

.method public static synthetic d(Lkotlin/time/q$a;JJILjava/lang/Object;)Lkotlin/time/q;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/time/q$a;->c(JJ)Lkotlin/time/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)Lkotlin/time/q;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    xor-long v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    mul-long v4, v2, v0

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    :cond_0
    rem-long/2addr p1, v0

    xor-long v4, p1, v0

    neg-long v6, p1

    or-long/2addr v6, p1

    and-long/2addr v4, v6

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    and-long/2addr v0, v4

    add-long/2addr p1, v0

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p1, v0

    long-to-int p1, p1

    const-wide v0, -0x701cefeb9bec00L

    cmp-long p2, v2, v0

    if-gez p2, :cond_1

    invoke-virtual {p0}, Lkotlin/time/q$a;->h()Lkotlin/time/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide v0, 0x701cd2fa9578ffL

    cmp-long p2, v2, v0

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lkotlin/time/q$a;->g()Lkotlin/time/q;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3, p1}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(JI)Lkotlin/time/q;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/time/q$a;->c(JJ)Lkotlin/time/q;

    move-result-object p1

    return-object p1
.end method

.method public final c(JJ)Lkotlin/time/q;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p3, v0

    xor-long v4, p3, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    mul-long v4, v2, v0

    cmp-long v4, v4, p3

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    :cond_0
    add-long v4, p1, v2

    xor-long v8, p1, v4

    cmp-long v8, v8, v6

    if-gez v8, :cond_2

    xor-long/2addr v2, p1

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    cmp-long p1, p1, v6

    if-lez p1, :cond_1

    sget-object p1, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {p1}, Lkotlin/time/q$a;->g()Lkotlin/time/q;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {p1}, Lkotlin/time/q$a;->h()Lkotlin/time/q;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const-wide p1, -0x701cefeb9bec00L

    cmp-long p1, v4, p1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lkotlin/time/q$a;->h()Lkotlin/time/q;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-wide p1, 0x701cd2fa9578ffL

    cmp-long p1, v4, p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lkotlin/time/q$a;->g()Lkotlin/time/q;

    move-result-object p1

    goto :goto_1

    :cond_4
    rem-long/2addr p3, v0

    xor-long p1, p3, v0

    neg-long v2, p3

    or-long/2addr v2, p3

    and-long/2addr p1, v2

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    add-long/2addr p3, p1

    long-to-int p1, p3

    new-instance p2, Lkotlin/time/q;

    invoke-direct {p2, v4, v5, p1}, Lkotlin/time/q;-><init>(JI)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final e()Lkotlin/time/q;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide v0, 0x2d044a2eb00L

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lkotlin/time/q;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide v0, -0x2ed378be301L

    const v2, 0x3b9ac9ff

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lkotlin/time/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/time/q;->a()Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lkotlin/time/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/time/q;->b()Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lkotlin/time/q;
    .locals 3
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Use Clock.System.now() instead"
        replaceWith = .subannotation Lnf/g0;
            expression = "Clock.System.now()"
            imports = {
                "kotlin.time.Clock"
            }
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/x;)V

    throw v0
.end method

.method public final j(Ljava/lang/CharSequence;)Lkotlin/time/q;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/time/y;->h(Ljava/lang/CharSequence;)Lkotlin/time/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/time/z;->b()Lkotlin/time/q;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/CharSequence;)Lkotlin/time/q;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/time/y;->h(Ljava/lang/CharSequence;)Lkotlin/time/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/time/z;->a()Lkotlin/time/q;

    move-result-object p1

    return-object p1
.end method
