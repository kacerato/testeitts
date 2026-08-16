.class public final Ln0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1149#1:1172\n1149#1:1173\n1149#1:1174\n1149#1:1175\n1149#1:1176\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n821#1:1172\n954#1:1173\n988#1:1174\n1023#1:1175\n1055#1:1176\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1149#1:1172\n1149#1:1173\n1149#1:1174\n1149#1:1175\n1149#1:1176\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n821#1:1172\n954#1:1173\n988#1:1174\n1023#1:1175\n1055#1:1176\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0xf

.field public static final b:I = 0x8000

.field public static final c:I = 0xa

.field public static final d:I = 0x1f

.field public static final e:I = 0x3ff

.field public static final f:I = 0xf

.field public static final g:I = 0x7fff

.field public static final h:I = 0x7c00

.field public static final i:I = 0x7e00

.field public static final j:I = 0x7fff

.field public static final k:I = 0x1f

.field public static final l:I = 0x17

.field public static final m:I = 0xff

.field public static final n:I = 0x7fffff

.field public static final o:I = 0x7f

.field public static final p:I = 0x400000

.field public static final q:I = 0x3f000000

.field public static final r:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/B;->a:Lkotlin/jvm/internal/B;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sput v0, Ln0/m;->r:F

    return-void
.end method

.method public static final a(D)S
    .locals 0

    double-to-float p0, p0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final b(F)S
    .locals 0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;)S
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final d(S)S
    .locals 0

    invoke-static {p0}, Ln0/i;->w(S)S

    move-result p0

    return p0
.end method

.method public static final synthetic e(IIIII)S
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ln0/m;->h(IIIII)S

    move-result p0

    return p0
.end method

.method public static final synthetic f(S)F
    .locals 0

    invoke-static {p0}, Ln0/m;->m(S)F

    move-result p0

    return p0
.end method

.method public static final g(S)S
    .locals 4

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    and-int/lit16 v0, p0, 0x7fff

    const/4 v1, 0x1

    const/16 v2, 0x3c00

    if-ge v0, v2, :cond_1

    const v3, 0x8000

    and-int/2addr v3, p0

    shr-int/lit8 p0, p0, 0xf

    not-int p0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p0, v1

    neg-int p0, p0

    and-int/2addr p0, v2

    or-int/2addr p0, v3

    goto :goto_1

    :cond_1
    const/16 v2, 0x6400

    if-ge v0, v2, :cond_2

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x19

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0xf

    sub-int/2addr v2, v1

    and-int v1, v0, v2

    add-int/2addr p0, v1

    not-int v0, v0

    and-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x7c00

    if-le v0, v1, :cond_3

    or-int/lit16 p0, p0, 0x200

    :cond_3
    :goto_1
    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final h(IIIII)S
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    add-int/lit8 v2, p4, -0xa

    sub-int/2addr v2, p1

    ushr-int v2, p2, v2

    invoke-static {v2}, Lnf/B0;->o(I)I

    move-result v2

    add-int/2addr p0, v2

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    add-int/lit8 p4, p4, -0xb

    sub-int/2addr p4, p1

    ushr-int p1, p2, p4

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    and-int/2addr p1, v1

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    shl-int p4, v1, p4

    invoke-static {p4}, Lnf/B0;->o(I)I

    move-result p4

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v2

    sub-int/2addr p4, v2

    invoke-static {p4}, Lnf/B0;->o(I)I

    move-result p4

    and-int/2addr p2, p4

    invoke-static {p2}, Lnf/B0;->o(I)I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p2}, Lnf/B0;->o(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    add-int/lit8 p1, p4, -0xa

    ushr-int p1, p2, p1

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    add-int/lit8 p4, p4, -0xb

    ushr-int p1, p2, p4

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    and-int/2addr p1, v1

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    shl-int p4, v1, p4

    invoke-static {p4}, Lnf/B0;->o(I)I

    move-result p4

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v2

    sub-int/2addr p4, v2

    invoke-static {p4}, Lnf/B0;->o(I)I

    move-result p4

    and-int/2addr p2, p4

    invoke-static {p2}, Lnf/B0;->o(I)I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result p2

    or-int/2addr p2, p3

    invoke-static {p2}, Lnf/B0;->o(I)I

    move-result p2

    :goto_0
    or-int/2addr p2, p0

    invoke-static {p2}, Lnf/B0;->o(I)I

    move-result p2

    and-int/2addr p1, p2

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final i(F)S
    .locals 6

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1f

    ushr-int/lit8 v1, p0, 0x17

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const v3, 0x7fffff

    and-int/2addr v3, p0

    const/16 v4, 0x1f

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    if-eqz v3, :cond_6

    const/16 v5, 0x200

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x70

    if-lt v1, v4, :cond_1

    const/16 v4, 0x31

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_4

    const/16 p0, -0xa

    if-lt v1, p0, :cond_3

    const/high16 p0, 0x800000

    or-int/2addr p0, v3

    rsub-int/lit8 v1, v1, 0x1

    shr-int/2addr p0, v1

    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    add-int/lit16 p0, p0, 0x2000

    :cond_2
    shr-int/lit8 p0, p0, 0xd

    move v4, v5

    move v5, p0

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    shr-int/lit8 v5, v3, 0xd

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_5

    shl-int/lit8 p0, v1, 0xa

    or-int/2addr p0, v5

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 v0, v0, 0xf

    or-int/2addr p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0

    :cond_5
    move v4, v1

    :cond_6
    :goto_0
    shl-int/lit8 p0, v0, 0xf

    shl-int/lit8 v0, v4, 0xa

    or-int/2addr p0, v0

    or-int/2addr p0, v5

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final j(S)S
    .locals 3

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x3c00

    if-ge v0, v1, :cond_1

    const v0, 0x8000

    and-int v2, p0, v0

    if-le p0, v0, :cond_0

    const p0, 0xffff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/2addr p0, v1

    or-int/2addr p0, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x6400

    if-ge v0, v1, :cond_2

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x19

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0xf

    neg-int v1, v1

    and-int/2addr v1, v0

    add-int/2addr p0, v1

    not-int v0, v0

    and-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x7c00

    if-le v0, v1, :cond_3

    or-int/lit16 p0, p0, 0x200

    :cond_3
    :goto_1
    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final k(D)S
    .locals 0

    double-to-float p0, p0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final l(F)S
    .locals 0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final m(S)F
    .locals 4

    const v0, 0xffff

    and-int/2addr v0, p0

    const v1, 0x8000

    and-int/2addr v1, p0

    ushr-int/lit8 v0, v0, 0xa

    const/16 v2, 0x1f

    and-int/2addr v0, v2

    and-int/lit16 p0, p0, 0x3ff

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    sget-object v0, Lkotlin/jvm/internal/B;->a:Lkotlin/jvm/internal/B;

    const/high16 v0, 0x3f000000    # 0.5f

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sget v0, Ln0/m;->r:F

    sub-float/2addr p0, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_2

    :cond_2
    shl-int/lit8 p0, p0, 0xd

    if-ne v0, v2, :cond_4

    const/16 v0, 0xff

    if-eqz p0, :cond_3

    const/high16 v2, 0x400000

    or-int/2addr p0, v2

    :cond_3
    :goto_1
    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x70

    goto :goto_1

    :goto_2
    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 p0, p0, 0x17

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    sget-object v0, Lkotlin/jvm/internal/B;->a:Lkotlin/jvm/internal/B;

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final n(SS)S
    .locals 5

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result v0

    and-int/lit16 v1, v0, 0x7fff

    const/16 v2, 0x7c00

    if-le v1, v2, :cond_0

    sget-object p0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p0}, Ln0/i$a;->i()S

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Ln0/i;->Q(S)I

    move-result v3

    and-int/lit16 v4, v3, 0x7fff

    if-le v4, v2, :cond_1

    sget-object p0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p0}, Ln0/i$a;->i()S

    move-result p0

    return p0

    :cond_1
    const v2, 0x8000

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move p0, p1

    :cond_2
    return p0

    :cond_3
    and-int v1, v0, v2

    const v4, 0xffff

    and-int/2addr v0, v4

    if-eqz v1, :cond_4

    sub-int v0, v2, v0

    :cond_4
    and-int v1, v3, v2

    if-eqz v1, :cond_5

    and-int v1, v3, v4

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_5
    and-int v2, v3, v4

    :goto_0
    if-le v0, v2, :cond_6

    goto :goto_1

    :cond_6
    move p0, p1

    :goto_1
    return p0
.end method

.method public static final o(SS)S
    .locals 5

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result v0

    and-int/lit16 v1, v0, 0x7fff

    const/16 v2, 0x7c00

    if-le v1, v2, :cond_0

    sget-object p0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p0}, Ln0/i$a;->i()S

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Ln0/i;->Q(S)I

    move-result v3

    and-int/lit16 v4, v3, 0x7fff

    if-le v4, v2, :cond_1

    sget-object p0, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {p0}, Ln0/i$a;->i()S

    move-result p0

    return p0

    :cond_1
    const v2, 0x8000

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    :goto_0
    return p0

    :cond_3
    and-int v1, v0, v2

    const v4, 0xffff

    and-int/2addr v0, v4

    if-eqz v1, :cond_4

    sub-int v0, v2, v0

    :cond_4
    and-int v1, v3, v2

    if-eqz v1, :cond_5

    and-int v1, v3, v4

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_5
    and-int v2, v3, v4

    :goto_1
    if-ge v0, v2, :cond_6

    goto :goto_2

    :cond_6
    move p0, p1

    :goto_2
    return p0
.end method

.method public static final p(I)I
    .locals 0

    or-int/lit16 p0, p0, 0x200

    return p0
.end method

.method public static final q(II)I
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    or-int/lit16 p0, p0, 0x200

    return p0
.end method

.method public static final r(S)S
    .locals 3

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x3c00

    if-ge v0, v1, :cond_1

    const v2, 0x8000

    and-int/2addr p0, v2

    const/16 v2, 0x3800

    if-lt v0, v2, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

    or-int/2addr p0, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x6400

    if-ge v0, v1, :cond_2

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v1, v0, 0x19

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x18

    shl-int v0, v2, v0

    add-int/2addr p0, v0

    not-int v0, v1

    and-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x7c00

    if-le v0, v1, :cond_3

    or-int/lit16 p0, p0, 0x200

    :cond_3
    :goto_1
    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final s(S)S
    .locals 6

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-eqz v0, :cond_6

    if-lt v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 p0, 0xf

    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v2, v0, 0x3ff

    or-int/2addr v1, v2

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    shr-int/lit8 v0, v0, 0xa

    add-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x1

    shl-int/2addr v1, v0

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    const/high16 v0, 0x100000

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    add-int v4, v3, v0

    invoke-static {v4}, Lnf/B0;->o(I)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v5

    if-gez v5, :cond_2

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lnf/B0;->o(I)I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lnf/B0;->o(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    ushr-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lnf/B0;->o(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lnf/B0;->o(I)I

    move-result v3

    :goto_2
    ushr-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    goto :goto_1

    :cond_3
    shl-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 v0, v3, 0x3ff

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {v1, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    const/4 v3, 0x1

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    or-int v1, v2, p0

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_6
    :goto_4
    if-le v0, v1, :cond_7

    or-int/lit16 p0, p0, 0x200

    goto :goto_5

    :cond_7
    const v0, 0x8000

    if-le p0, v0, :cond_8

    const/16 p0, 0x7fff

    :cond_8
    :goto_5
    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final t(D)S
    .locals 0

    double-to-float p0, p0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final u(F)S
    .locals 0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final v(Ljava/lang/String;)S
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ln0/m;->i(F)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final w(S)S
    .locals 2

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x3c00

    if-ge v0, v1, :cond_0

    const v0, 0x8000

    :goto_0
    and-int/2addr p0, v0

    goto :goto_1

    :cond_0
    const/16 v1, 0x6400

    if-ge v0, v1, :cond_1

    shr-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0x19

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    not-int v0, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7c00

    if-le v0, v1, :cond_2

    or-int/lit16 p0, p0, 0x200

    :cond_2
    :goto_1
    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method
