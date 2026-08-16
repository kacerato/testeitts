.class public final Lkotlin/time/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,871:1\n1#2:872\n491#3,28:873\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n700#1:873,28\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/UnboundLocalDateTime\n*L\n1#1,871:1\n1#2:872\n491#3,28:873\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/InstantKt\n*L\n700#1:873,28\n*E\n"
    }
.end annotation


# static fields
.field public static final a:J = -0x2ed378be301L

.field public static final b:J = 0x2d044a2eb00L

.field public static final c:J = -0x701cefeb9bec00L

.field public static final d:J = 0x701cd2fa9578ffL

.field public static final e:I = 0x23ab1

.field public static final f:I = 0xafaa8

.field public static final g:I = 0xe10

.field public static final h:I = 0x3c

.field public static final i:I = 0x18

.field public static final j:I = 0x15180

.field public static final k:I = 0x3b9aca00

.field public static final l:I = 0xf4240

.field public static final m:I = 0x3e8

.field public static final n:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final o:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lkotlin/time/y;->n:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lkotlin/time/y;->o:[I

    const/4 v0, 0x3

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lkotlin/time/y;->p:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lkotlin/time/y;->q:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
        0xa
        0xb
        0xd
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x7
        0x8
    .end array-data
.end method

.method public static final A(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/lit8 p0, p0, -0x30

    add-int/2addr v0, p0

    return v0
.end method

.method public static final B(JJLMf/a;)J
    .locals 6

    add-long v0, p0, p2

    xor-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    xor-long/2addr p0, p2

    cmp-long p0, p0, v4

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p4}, LMf/a;->invoke()Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static final C(JJLMf/a;)J
    .locals 7

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    return-wide p2

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_6

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    mul-long v0, p0, p2

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_5

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p0, v2

    const-wide/16 v5, -0x1

    if-nez v4, :cond_3

    cmp-long v4, p2, v5

    if-eqz v4, :cond_5

    :cond_3
    cmp-long p2, p2, v2

    if-nez p2, :cond_4

    cmp-long p0, p0, v5

    if-eqz p0, :cond_5

    :cond_4
    return-wide v0

    :cond_5
    invoke-interface {p4}, LMf/a;->invoke()Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    :goto_0
    return-wide v0
.end method

.method public static final D(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic a(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->x(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->t(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->w(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->u(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->v(C)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(C)Z
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->y(C)Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lkotlin/time/q;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->j(Lkotlin/time/q;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Ljava/lang/CharSequence;)Lkotlin/time/z;
    .locals 0

    invoke-static {p0}, Lkotlin/time/y;->r(Ljava/lang/CharSequence;)Lkotlin/time/z;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/y;->D(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lkotlin/time/q;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkotlin/time/K;->h:Lkotlin/time/K$a;

    invoke-virtual {v1, p0}, Lkotlin/time/K$a;->a(Lkotlin/time/q;)Lkotlin/time/K;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/time/K;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x2710

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCharAt(...)"

    if-ltz v1, :cond_0

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-lt v1, v6, :cond_2

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/K;->d()I

    move-result v2

    invoke-static {v0, v0, v2}, Lkotlin/time/y;->k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/K;->a()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/y;->k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/K;->b()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/y;->k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/K;->c()I

    move-result v2

    invoke-static {v0, v0, v2}, Lkotlin/time/y;->k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/K;->f()I

    move-result v1

    invoke-static {v0, v0, v1}, Lkotlin/time/y;->k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Lkotlin/time/K;->e()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Lkotlin/time/K;->e()I

    move-result v1

    sget-object v2, Lkotlin/time/y;->n:[I

    add-int/lit8 v3, v4, 0x1

    aget v6, v2, v3

    rem-int/2addr v1, v6

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    rem-int/lit8 v1, v4, 0x3

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lkotlin/time/K;->e()I

    move-result p0

    aget v1, v2, v4

    div-int/2addr p0, v1

    rsub-int/lit8 v1, v4, 0x9

    aget v1, v2, v1

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "substring(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Ljava/lang/Appendable;Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 v0, 0x30

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final l(Lkotlin/time/q;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {v0}, Lkotlin/time/q$a;->e()Lkotlin/time/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/time/q;->c(Lkotlin/time/q;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(Lkotlin/time/q;)V
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.3"
    .end annotation

    return-void
.end method

.method public static final n(Lkotlin/time/q;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    invoke-virtual {v0}, Lkotlin/time/q$a;->f()Lkotlin/time/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/time/q;->c(Lkotlin/time/q;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic o(Lkotlin/time/q;)V
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lkotlin/time/o;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.3"
    .end annotation

    return-void
.end method

.method public static final p(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final q(IZ)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    const/16 p0, 0x1f

    goto :goto_0

    :cond_0
    const/16 p0, 0x1e

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/16 p0, 0x1d

    goto :goto_0

    :cond_2
    const/16 p0, 0x1c

    :goto_0
    return p0
.end method

.method public static final r(Ljava/lang/CharSequence;)Lkotlin/time/z;
    .locals 24

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lkotlin/time/z$a;

    const-string v2, "An empty string is not a valid Instant"

    invoke-direct {v1, v2, v0}, Lkotlin/time/z$a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v5, :cond_1

    move v7, v1

    move v2, v3

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    move v9, v1

    move v8, v7

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/16 v11, 0x3a

    const/16 v12, 0x30

    if-ge v8, v10, :cond_2

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-gt v12, v10, :cond_2

    if-ge v10, v11, :cond_2

    mul-int/lit8 v9, v9, 0xa

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v12

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    sub-int v10, v8, v7

    const-string v13, " digits"

    const/16 v14, 0xa

    if-le v10, v14, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at most 10 digits for the year number, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v10, v14, :cond_4

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v15, 0x32

    invoke-static {v7, v15}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v7

    if-ltz v7, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v7, 0x4

    if-ge v10, v7, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The year number must be padded to 4 digits, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v2, v4, :cond_6

    if-ne v10, v7, :cond_6

    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v2, v3, :cond_7

    if-eq v10, v7, :cond_7

    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_7
    if-ne v2, v5, :cond_8

    neg-int v9, v9

    :cond_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v3, v8, 0x10

    if-ge v2, v3, :cond_9

    const-string v1, "The input string is too short"

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v2, Lkotlin/time/s;

    invoke-direct {v2}, Lkotlin/time/s;-><init>()V

    const-string v10, "\'-\'"

    invoke-static {v0, v10, v8, v2}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v2

    if-eqz v2, :cond_a

    return-object v2

    :cond_a
    add-int/lit8 v2, v8, 0x3

    new-instance v15, Lkotlin/time/t;

    invoke-direct {v15}, Lkotlin/time/t;-><init>()V

    invoke-static {v0, v10, v2, v15}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v2

    if-eqz v2, :cond_b

    return-object v2

    :cond_b
    add-int/lit8 v2, v8, 0x6

    new-instance v10, Lkotlin/time/u;

    invoke-direct {v10}, Lkotlin/time/u;-><init>()V

    const-string v15, "\'T\' or \'t\'"

    invoke-static {v0, v15, v2, v10}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v2

    if-eqz v2, :cond_c

    return-object v2

    :cond_c
    add-int/lit8 v2, v8, 0x9

    new-instance v10, Lkotlin/time/v;

    invoke-direct {v10}, Lkotlin/time/v;-><init>()V

    const-string v15, "\':\'"

    invoke-static {v0, v15, v2, v10}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v2

    if-eqz v2, :cond_d

    return-object v2

    :cond_d
    add-int/lit8 v2, v8, 0xc

    new-instance v10, Lkotlin/time/w;

    invoke-direct {v10}, Lkotlin/time/w;-><init>()V

    invoke-static {v0, v15, v2, v10}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v2

    if-eqz v2, :cond_e

    return-object v2

    :cond_e
    sget-object v2, Lkotlin/time/y;->o:[I

    array-length v10, v2

    move v15, v1

    :goto_2
    if-ge v15, v10, :cond_10

    aget v16, v2, v15

    add-int v1, v8, v16

    new-instance v7, Lkotlin/time/x;

    invoke-direct {v7}, Lkotlin/time/x;-><init>()V

    const-string v5, "an ASCII digit"

    invoke-static {v0, v5, v1, v7}, Lkotlin/time/y;->s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    const/16 v5, 0x2d

    const/4 v7, 0x4

    goto :goto_2

    :cond_10
    add-int/lit8 v1, v8, 0x1

    invoke-static {v0, v1}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/lit8 v2, v8, 0x4

    invoke-static {v0, v2}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v5, v8, 0x7

    invoke-static {v0, v5}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v5

    add-int/lit8 v7, v8, 0xa

    invoke-static {v0, v7}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v7

    add-int/lit8 v10, v8, 0xd

    invoke-static {v0, v10}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v10

    add-int/lit8 v8, v8, 0xf

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v4, 0x2e

    const/16 v14, 0x9

    if-ne v15, v4, :cond_13

    move v8, v3

    const/4 v4, 0x0

    :goto_3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v8, v15, :cond_11

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-gt v12, v15, :cond_11

    if-ge v15, v11, :cond_11

    mul-int/lit8 v4, v4, 0xa

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    sub-int/2addr v15, v12

    add-int/2addr v4, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_11
    sub-int v3, v8, v3

    if-gt v6, v3, :cond_12

    const/16 v15, 0xa

    if-ge v3, v15, :cond_12

    sget-object v13, Lkotlin/time/y;->n:[I

    rsub-int/lit8 v3, v3, 0x9

    aget v3, v13, v3

    mul-int/2addr v4, v3

    move/from16 v22, v4

    goto :goto_4

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_13
    const/16 v22, 0x0

    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v8, v3, :cond_14

    const-string v1, "The UTC offset at the end of the string is missing"

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    const-string v13, ", got \'"

    const/16 v15, 0x2b

    if-eq v3, v15, :cond_17

    const/16 v15, 0x2d

    if-eq v3, v15, :cond_17

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_15

    const/16 v11, 0x7a

    if-eq v3, v11, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected the UTC offset at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v8, v6

    if-ne v3, v8, :cond_16

    move v4, v6

    const/4 v3, 0x0

    const/4 v6, 0x3

    goto/16 :goto_d

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extra text after the instant at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    sub-int/2addr v15, v8

    if-le v15, v14, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The UTC offset string \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/time/y;->D(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is too long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_18
    rem-int/lit8 v14, v15, 0x3

    if-eqz v14, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UTC offset string \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_19
    sget-object v14, Lkotlin/time/y;->p:[I

    array-length v6, v14

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v6, :cond_1c

    aget v21, v14, v12

    add-int v4, v8, v21

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lt v4, v11, :cond_1a

    goto :goto_6

    :cond_1a
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move/from16 v23, v6

    const/16 v6, 0x3a

    if-eq v11, v6, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \':\' at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_1b
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v23

    const/16 v4, 0x27

    const/16 v11, 0x3a

    goto :goto_5

    :cond_1c
    :goto_6
    sget-object v4, Lkotlin/time/y;->q:[I

    array-length v6, v4

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_1f

    aget v12, v4, v11

    add-int/2addr v12, v8

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lt v12, v14, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move-object/from16 v23, v4

    const/16 v4, 0x30

    if-gt v4, v14, :cond_1e

    const/16 v4, 0x3a

    if-ge v14, v4, :cond_1e

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v23

    goto :goto_7

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an ASCII digit at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_8
    add-int/lit8 v4, v8, 0x1

    invoke-static {v0, v4}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v6, 0x3

    if-le v15, v6, :cond_20

    add-int/lit8 v11, v8, 0x4

    invoke-static {v0, v11}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v11

    goto :goto_9

    :cond_20
    const/4 v11, 0x0

    :goto_9
    const/4 v12, 0x6

    if-le v15, v12, :cond_21

    add-int/lit8 v12, v8, 0x7

    invoke-static {v0, v12}, Lkotlin/time/y;->A(Ljava/lang/CharSequence;I)I

    move-result v12

    :goto_a
    const/16 v13, 0x3b

    goto :goto_b

    :cond_21
    const/4 v12, 0x0

    goto :goto_a

    :goto_b
    if-le v11, v13, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_22
    if-le v12, v13, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_23
    const/16 v13, 0x11

    if-le v4, v13, :cond_25

    const/16 v13, 0x12

    if-ne v4, v13, :cond_24

    if-nez v11, :cond_24

    if-eqz v12, :cond_25

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an offset in -18:00..+18:00, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_25
    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit8 v11, v11, 0x3c

    add-int/2addr v4, v11

    add-int/2addr v4, v12

    const/16 v8, 0x2d

    if-ne v3, v8, :cond_26

    const/4 v3, -0x1

    goto :goto_c

    :cond_26
    const/4 v3, 0x1

    :goto_c
    mul-int/2addr v3, v4

    const/4 v4, 0x1

    :goto_d
    if-gt v4, v1, :cond_2e

    const/16 v8, 0xd

    if-ge v1, v8, :cond_2e

    if-gt v4, v2, :cond_2d

    invoke-static {v9}, Lkotlin/time/y;->p(I)Z

    move-result v4

    invoke-static {v1, v4}, Lkotlin/time/y;->q(IZ)I

    move-result v4

    if-gt v2, v4, :cond_2d

    const/16 v4, 0x17

    if-le v5, v4, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected hour in 0..23, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_27
    const/16 v4, 0x3b

    if-le v7, v4, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected minute-of-hour in 0..59, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_28
    if-le v10, v4, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected second-of-minute in 0..59, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_29
    new-instance v0, Lkotlin/time/K;

    move v4, v6

    move-object v15, v0

    move/from16 v16, v9

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v10

    invoke-direct/range {v15 .. v22}, Lkotlin/time/K;-><init>(IIIIIII)V

    invoke-virtual {v0}, Lkotlin/time/K;->g()I

    move-result v1

    int-to-long v1, v1

    const/16 v5, 0x16d

    int-to-long v5, v5

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-ltz v7, :cond_2a

    int-to-long v7, v4

    add-long/2addr v7, v1

    const/4 v4, 0x4

    int-to-long v9, v4

    div-long/2addr v7, v9

    const/16 v4, 0x63

    int-to-long v9, v4

    add-long/2addr v9, v1

    const/16 v4, 0x64

    int-to-long v11, v4

    div-long/2addr v9, v11

    sub-long/2addr v7, v9

    const/16 v4, 0x18f

    int-to-long v9, v4

    add-long/2addr v1, v9

    const/16 v4, 0x190

    int-to-long v9, v4

    div-long/2addr v1, v9

    add-long/2addr v7, v1

    add-long/2addr v5, v7

    goto :goto_e

    :cond_2a
    const/4 v4, -0x4

    int-to-long v7, v4

    div-long v7, v1, v7

    const/16 v4, -0x64

    int-to-long v9, v4

    div-long v9, v1, v9

    sub-long/2addr v7, v9

    const/16 v4, -0x190

    int-to-long v9, v4

    div-long/2addr v1, v9

    add-long/2addr v7, v1

    sub-long/2addr v5, v7

    :goto_e
    invoke-virtual {v0}, Lkotlin/time/K;->d()I

    move-result v1

    mul-int/lit16 v1, v1, 0x16f

    add-int/lit16 v1, v1, -0x16a

    div-int/lit8 v1, v1, 0xc

    int-to-long v1, v1

    add-long/2addr v5, v1

    invoke-virtual {v0}, Lkotlin/time/K;->a()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v5, v1

    invoke-virtual {v0}, Lkotlin/time/K;->d()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2c

    const-wide/16 v1, -0x1

    add-long/2addr v1, v5

    invoke-virtual {v0}, Lkotlin/time/K;->g()I

    move-result v4

    invoke-static {v4}, Lkotlin/time/y;->p(I)Z

    move-result v4

    if-nez v4, :cond_2b

    const-wide/16 v1, -0x2

    add-long/2addr v5, v1

    goto :goto_f

    :cond_2b
    move-wide v5, v1

    :cond_2c
    :goto_f
    const v1, 0xafaa8

    int-to-long v1, v1

    sub-long/2addr v5, v1

    invoke-virtual {v0}, Lkotlin/time/K;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    invoke-virtual {v0}, Lkotlin/time/K;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lkotlin/time/K;->f()I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x15180

    int-to-long v7, v2

    mul-long/2addr v5, v7

    int-to-long v1, v1

    add-long/2addr v5, v1

    int-to-long v1, v3

    sub-long/2addr v5, v1

    invoke-virtual {v0}, Lkotlin/time/K;->e()I

    move-result v0

    new-instance v1, Lkotlin/time/z$b;

    invoke-direct {v1, v5, v6, v0}, Lkotlin/time/z$b;-><init>(JI)V

    return-object v1

    :cond_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a valid day-of-month for month "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of year "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0

    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a month number in 1..12, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object v0

    return-object v0
.end method

.method public static final s(Ljava/lang/CharSequence;Ljava/lang/String;ILMf/l;)Lkotlin/time/z$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "I",
            "LMf/l<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/time/z$a;"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p3, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but got \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' at position "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/time/y;->z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final t(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final u(C)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final v(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final w(C)Z
    .locals 1

    const/16 v0, 0x54

    if-eq p0, v0, :cond_1

    const/16 v0, 0x74

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final x(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final y(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final z(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/z$a;
    .locals 2

    new-instance v0, Lkotlin/time/z$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " when parsing an Instant from \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x40

    invoke-static {p0, p1}, Lkotlin/time/y;->D(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lkotlin/time/z$a;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method
