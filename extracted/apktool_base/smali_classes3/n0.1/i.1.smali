.class public final Ln0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln0/i;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n+ 2 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1152#2:1172\n1152#2:1173\n1152#2:1174\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n*L\n574#1:1172\n647#1:1173\n693#1:1174\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n+ 2 Half.kt\ncom/google/android/filament/utils/HalfKt\n*L\n1#1,1171:1\n1152#2:1172\n1152#2:1173\n1152#2:1174\n*S KotlinDebug\n*F\n+ 1 Half.kt\ncom/google/android/filament/utils/Half\n*L\n574#1:1172\n647#1:1173\n693#1:1174\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Ln0/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I = 0x10

.field public static final e:S

.field public static final f:I = 0xf

.field public static final g:I = -0xe

.field public static final h:S

.field public static final i:S

.field public static final j:S

.field public static final k:S

.field public static final l:S

.field public static final m:S

.field public static final n:S

.field public static final o:S

.field public static final p:S


# instance fields
.field public final b:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln0/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln0/i$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Ln0/i;->c:Ln0/i$a;

    const/16 v0, 0x1400

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->e:S

    const v0, 0xfbff

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->h:S

    const/16 v0, 0x7bff

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->i:S

    const/16 v0, 0x400

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->j:S

    const/4 v0, 0x1

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->k:S

    const/16 v0, 0x7e00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->l:S

    const v0, 0xfc00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->m:S

    const v0, 0x8000

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->n:S

    const/16 v0, 0x7c00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->o:S

    const/4 v0, 0x0

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    sput-short v0, Ln0/i;->p:S

    return-void
.end method

.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Ln0/i;->b:S

    return-void
.end method

.method public static final A(S)S
    .locals 2

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-short p0, Ln0/i;->l:S

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ln0/i;->E(S)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short p0, Ln0/i;->o:S

    goto :goto_0

    :cond_1
    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7bff

    if-ne v0, v1, :cond_2

    const/16 p0, 0x4c00

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ln0/i;->w(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->L(S)S

    move-result v0

    invoke-static {v0, p0}, Ln0/i;->I(SS)S

    move-result p0

    :goto_0
    return p0
.end method

.method public static B(S)I
    .locals 0

    invoke-static {p0}, Lnf/L0;->y(S)I

    move-result p0

    return p0
.end method

.method public static final C(S)S
    .locals 1

    const/16 v0, 0x3c00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    invoke-static {p0, v0}, Ln0/i;->M(SS)S

    move-result p0

    return p0
.end method

.method public static final D(S)Z
    .locals 1

    const/16 v0, 0x7c00

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final E(S)Z
    .locals 1

    and-int/lit16 p0, p0, 0x7fff

    const/16 v0, 0x7c00

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final F(S)Z
    .locals 1

    and-int/lit16 p0, p0, 0x7fff

    const/16 v0, 0x7c00

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final G(S)Z
    .locals 1

    const/16 v0, 0x7c00

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final H(S)Z
    .locals 0

    and-int/lit16 p0, p0, 0x7fff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final I(SS)S
    .locals 0

    invoke-static {p1}, Ln0/i;->Z(S)S

    move-result p1

    invoke-static {p0, p1}, Ln0/i;->M(SS)S

    move-result p0

    return p0
.end method

.method public static final J(S)S
    .locals 2

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-nez v0, :cond_3

    sget-short v0, Ln0/i;->m:S

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ln0/i;->H(S)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short p0, Ln0/i;->k:S

    invoke-static {p0}, Ln0/i;->Z(S)S

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result v0

    const v1, 0x8000

    and-int/2addr p0, v1

    if-nez p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    add-int/2addr v0, p0

    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    :cond_3
    :goto_1
    return p0
.end method

.method public static final K(SS)S
    .locals 1

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ln0/i;->F(S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Ln0/i;->v(SS)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p0}, Ln0/i;->q(SS)I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {p0}, Ln0/i;->L(S)S

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ln0/i;->J(S)S

    move-result p0

    goto :goto_1

    :cond_3
    :goto_0
    sget-short p0, Ln0/i;->l:S

    :goto_1
    return p0
.end method

.method public static final L(S)S
    .locals 2

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-nez v0, :cond_3

    sget-short v0, Ln0/i;->o:S

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ln0/i;->H(S)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-short p0, Ln0/i;->k:S

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result v0

    const v1, 0x8000

    and-int/2addr p0, v1

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    add-int/2addr v0, p0

    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    :cond_3
    :goto_1
    return p0
.end method

.method public static final M(SS)S
    .locals 10

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result v0

    invoke-static {p1}, Ln0/i;->Q(S)I

    move-result v1

    xor-int v2, v0, v1

    const v3, 0x8000

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit16 v6, v0, 0x7fff

    and-int/lit16 v7, v1, 0x7fff

    const/16 v8, 0x7c00

    if-ge v6, v8, :cond_12

    if-lt v7, v8, :cond_1

    goto/16 :goto_9

    :cond_1
    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    and-int p0, v0, v1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p1

    :goto_1
    return p1

    :cond_3
    if-nez v7, :cond_4

    return p0

    :cond_4
    if-eqz v2, :cond_5

    if-le v7, v6, :cond_5

    move v0, v1

    :cond_5
    and-int p0, v0, v3

    if-le v7, v6, :cond_6

    move v9, v7

    move v7, v6

    move v6, v9

    :cond_6
    shr-int/lit8 p1, v6, 0xa

    const/16 v0, 0x3ff

    if-gt v6, v0, :cond_7

    move v1, v5

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    add-int/2addr p1, v1

    shr-int/lit8 v1, v7, 0xa

    sub-int v1, p1, v1

    if-gt v7, v0, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    sub-int/2addr v1, v3

    and-int/lit16 v3, v6, 0x3ff

    if-le v6, v0, :cond_9

    move v6, v5

    goto :goto_4

    :cond_9
    move v6, v4

    :goto_4
    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x3

    const/16 v6, 0xd

    if-ge v1, v6, :cond_c

    and-int/lit16 v6, v7, 0x3ff

    if-le v7, v0, :cond_a

    move v0, v5

    goto :goto_5

    :cond_a
    move v0, v4

    :goto_5
    shl-int/lit8 v0, v0, 0xa

    or-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x3

    shr-int v6, v0, v1

    shl-int v1, v5, v1

    sub-int/2addr v1, v5

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    move v0, v5

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    or-int/2addr v0, v6

    goto :goto_7

    :cond_c
    move v0, v5

    :goto_7
    if-eqz v2, :cond_e

    sub-int/2addr v3, v0

    if-nez v3, :cond_d

    sget-short p0, Ln0/i;->p:S

    return p0

    :cond_d
    :goto_8
    const/16 v0, 0x2000

    if-ge v3, v0, :cond_10

    if-le p1, v5, :cond_10

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_e
    add-int/2addr v3, v0

    shr-int/lit8 v0, v3, 0xe

    add-int/2addr p1, v0

    const/16 v1, 0x1e

    if-le p1, v1, :cond_f

    or-int/2addr p0, v8

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_f
    shr-int v1, v3, v0

    and-int/2addr v0, v3

    or-int v3, v1, v0

    :cond_10
    sub-int/2addr p1, v5

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    shr-int/lit8 p1, v3, 0x3

    add-int/2addr p0, p1

    shr-int/lit8 p1, v3, 0x2

    and-int/2addr p1, v5

    and-int/lit8 v0, v3, 0x3

    if-eqz v0, :cond_11

    move v4, v5

    :cond_11
    or-int v0, v4, p0

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_12
    :goto_9
    if-gt v6, v8, :cond_16

    if-le v7, v8, :cond_13

    goto :goto_a

    :cond_13
    if-eq v7, v8, :cond_14

    goto :goto_c

    :cond_14
    if-eqz v2, :cond_15

    if-ne v6, v8, :cond_15

    const/16 v0, 0x7fff

    goto :goto_c

    :cond_15
    move v0, v1

    goto :goto_c

    :cond_16
    :goto_a
    and-int/lit16 p0, v0, 0x7fff

    if-le p0, v8, :cond_17

    goto :goto_b

    :cond_17
    move v6, v7

    :goto_b
    or-int/lit16 v0, v6, 0x200

    :goto_c
    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final N(S)I
    .locals 1

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ln0/m;->r(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->V(S)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final O(S)J
    .locals 2

    invoke-static {p0}, Ln0/i;->F(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ln0/m;->r(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->W(S)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final P(SS)S
    .locals 6

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    invoke-static {p1}, Ln0/i;->Q(S)I

    move-result p1

    xor-int v0, p0, p1

    const v1, 0x8000

    and-int/2addr v0, v1

    and-int/lit16 v1, p0, 0x7fff

    const/16 v2, 0x7fff

    and-int/2addr p1, v2

    const/16 v3, 0x7c00

    if-ge v1, v3, :cond_7

    if-lt p1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/16 p0, -0x10

    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_2

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, v2, :cond_3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    and-int/lit16 v4, v1, 0x3ff

    or-int/2addr v4, v2

    invoke-static {v4}, Lnf/B0;->o(I)I

    move-result v4

    and-int/lit16 v5, p1, 0x3ff

    or-int/2addr v2, v5

    invoke-static {v2}, Lnf/B0;->o(I)I

    move-result v2

    mul-int/2addr v4, v2

    invoke-static {v4}, Lnf/B0;->o(I)I

    move-result v2

    ushr-int/lit8 v4, v2, 0x15

    invoke-static {v4}, Lnf/B0;->o(I)I

    move-result v4

    shr-int/lit8 v1, v1, 0xa

    shr-int/lit8 p1, p1, 0xa

    add-int/2addr v1, p1

    add-int/2addr v1, v4

    add-int/2addr p0, v1

    const/16 p1, 0x1d

    if-le p0, p1, :cond_4

    or-int/lit16 p0, v0, 0x7c00

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_4
    const/16 p1, -0xb

    if-ge p0, p1, :cond_5

    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_5
    ushr-int p1, v2, v4

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    and-int v1, v2, v4

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v0, p0, p1, v1, v2}, Ln0/m;->e(IIIII)S

    move-result p0

    return p0

    :cond_6
    :goto_2
    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_7
    :goto_3
    if-gt v1, v3, :cond_b

    if-le p1, v3, :cond_8

    goto :goto_4

    :cond_8
    if-ne v1, v3, :cond_9

    if-eqz p1, :cond_d

    :cond_9
    if-ne p1, v3, :cond_a

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    or-int/lit16 v2, v0, 0x7c00

    goto :goto_6

    :cond_b
    :goto_4
    and-int/2addr p0, v2

    if-le p0, v3, :cond_c

    goto :goto_5

    :cond_c
    move v1, p1

    :goto_5
    or-int/lit16 v2, v1, 0x200

    :cond_d
    :goto_6
    int-to-short p0, v2

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final Q(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final R(S)B
    .locals 0

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    float-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static final S(S)D
    .locals 2

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static final T(S)F
    .locals 0

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    return p0
.end method

.method public static final U(S)Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0xffff

    and-int/2addr v1, p0

    ushr-int/lit8 v2, v1, 0xf

    ushr-int/lit8 v1, v1, 0xa

    const/16 v3, 0x1f

    and-int/2addr v1, v3

    and-int/lit16 p0, p0, 0x3ff

    const/16 v4, 0x2d

    const-string v5, "toString(...)"

    if-ne v1, v3, :cond_2

    if-nez p0, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "Infinity"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "NaN"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, ""

    const-string v3, "0{2,}$"

    const/16 v4, 0x10

    if-nez v1, :cond_5

    if-nez p0, :cond_4

    const-string p0, "0x0.0p0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "0x0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lag/e;->a(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lag/v;

    invoke-direct {v1, v3}, Lag/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lag/v;->r(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "p-14"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v6, "0x1."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lag/e;->a(I)I

    move-result v4

    invoke-static {p0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lag/v;

    invoke-direct {v4, v3}, Lag/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v2}, Lag/v;->r(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x70

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0xf

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final V(S)I
    .locals 0

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final W(S)J
    .locals 2

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    float-to-long v0, p0

    return-wide v0
.end method

.method public static final X(S)S
    .locals 0

    invoke-static {p0}, Ln0/m;->f(S)F

    move-result p0

    float-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static Y(S)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Ln0/i;->T(S)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(S)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    const v0, 0x8000

    xor-int/2addr p0, v0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final synthetic a()S
    .locals 1

    sget-short v0, Ln0/i;->e:S

    return v0
.end method

.method public static final a0(S)S
    .locals 0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final synthetic b()S
    .locals 1

    sget-short v0, Ln0/i;->h:S

    return v0
.end method

.method public static final synthetic c()S
    .locals 1

    sget-short v0, Ln0/i;->i:S

    return v0
.end method

.method public static final c0(SS)S
    .locals 1

    const v0, 0x8000

    and-int/2addr p1, v0

    and-int/lit16 p0, p0, 0x7fff

    or-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final synthetic d()S
    .locals 1

    sget-short v0, Ln0/i;->j:S

    return v0
.end method

.method public static final synthetic e()S
    .locals 1

    sget-short v0, Ln0/i;->k:S

    return v0
.end method

.method public static final synthetic g()S
    .locals 1

    sget-short v0, Ln0/i;->m:S

    return v0
.end method

.method public static final synthetic h()S
    .locals 1

    sget-short v0, Ln0/i;->n:S

    return v0
.end method

.method public static final synthetic i()S
    .locals 1

    sget-short v0, Ln0/i;->l:S

    return v0
.end method

.method public static final synthetic j()S
    .locals 1

    sget-short v0, Ln0/i;->o:S

    return v0
.end method

.method public static final synthetic k()S
    .locals 1

    sget-short v0, Ln0/i;->p:S

    return v0
.end method

.method public static final synthetic m(S)Ln0/i;
    .locals 1

    new-instance v0, Ln0/i;

    invoke-direct {v0, p0}, Ln0/i;-><init>(S)V

    return-object v0
.end method

.method public static q(SS)I
    .locals 3

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7e00

    const/16 v2, 0x7c00

    if-le v0, v2, :cond_0

    move p0, v1

    :cond_0
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v2, :cond_1

    move p1, v1

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    shr-int/lit8 v0, p0, 0xf

    const v1, 0x8000

    sub-int v2, v1, v0

    or-int/2addr v2, v1

    xor-int/2addr p0, v2

    add-int/2addr p0, v0

    shr-int/lit8 v0, p1, 0xf

    sub-int v2, v1, v0

    or-int/2addr v1, v2

    xor-int/2addr p1, v1

    add-int/2addr p1, v0

    if-ge p0, p1, :cond_3

    const/4 p0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static r(S)S
    .locals 0

    return p0
.end method

.method public static final s(S)S
    .locals 1

    const v0, 0xbc00

    int-to-short v0, v0

    invoke-static {v0}, Lnf/L0;->i(S)S

    move-result v0

    invoke-static {v0}, Ln0/i;->r(S)S

    move-result v0

    invoke-static {p0, v0}, Ln0/i;->M(SS)S

    move-result p0

    return p0
.end method

.method public static final t(SS)S
    .locals 8

    invoke-static {p0}, Ln0/i;->Q(S)I

    move-result p0

    invoke-static {p1}, Ln0/i;->Q(S)I

    move-result p1

    xor-int v0, p0, p1

    const v1, 0x8000

    and-int/2addr v0, v1

    and-int/lit16 v1, p0, 0x7fff

    const/16 v2, 0x7fff

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/16 v4, 0x7c00

    if-ge v1, v4, :cond_a

    if-lt p1, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez v1, :cond_2

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_2
    if-nez p1, :cond_3

    or-int/lit16 p0, v0, 0x7c00

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_3
    const/16 p0, 0xe

    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_4

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge p1, v2, :cond_5

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    and-int/lit16 v5, v1, 0x3ff

    or-int/2addr v5, v2

    invoke-static {v5}, Lnf/B0;->o(I)I

    move-result v5

    and-int/lit16 v6, p1, 0x3ff

    or-int/2addr v2, v6

    invoke-static {v2}, Lnf/B0;->o(I)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_6

    move v6, v7

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    shr-int/lit8 v1, v1, 0xa

    shr-int/lit8 p1, p1, 0xa

    sub-int/2addr v1, p1

    sub-int/2addr v1, v6

    add-int/2addr p0, v1

    const/16 p1, 0x1d

    if-le p0, p1, :cond_7

    or-int/lit16 p0, v0, 0x7c00

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_7
    const/16 p1, -0xb

    if-ge p0, p1, :cond_8

    int-to-short p0, v0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v6, v6, 0xc

    shl-int p1, v5, v6

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    shl-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v2

    invoke-static {p1, v1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p1

    if-eqz p1, :cond_9

    move v3, v7

    :cond_9
    const/16 p1, 0xb

    invoke-static {v0, p0, v2, v3, p1}, Ln0/m;->e(IIIII)S

    move-result p0

    return p0

    :cond_a
    :goto_3
    if-gt v1, v4, :cond_e

    if-le p1, v4, :cond_b

    goto :goto_4

    :cond_b
    if-ne v1, p1, :cond_c

    goto :goto_6

    :cond_c
    if-ne v1, v4, :cond_d

    move v3, v4

    :cond_d
    or-int v2, v0, v3

    goto :goto_6

    :cond_e
    :goto_4
    and-int/2addr p0, v2

    if-le p0, v4, :cond_f

    goto :goto_5

    :cond_f
    move v1, p1

    :goto_5
    or-int/lit16 v2, v1, 0x200

    :goto_6
    int-to-short p0, v2

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static u(SLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln0/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln0/i;

    invoke-virtual {p1}, Ln0/i;->b0()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final v(SS)Z
    .locals 0

    invoke-static {p0, p1}, Lnf/L0;->s(SS)Z

    move-result p0

    return p0
.end method

.method public static final w(S)S
    .locals 0

    and-int/lit16 p0, p0, 0x7fff

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    invoke-static {p0}, Ln0/i;->r(S)S

    move-result p0

    return p0
.end method

.method public static final x(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, -0xf

    return p0
.end method

.method public static final y(S)S
    .locals 2

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_0

    sget-short p0, Ln0/i;->l:S

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    sget-short p0, Ln0/i;->p:S

    goto :goto_1

    :cond_1
    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p0}, Ln0/m;->b(F)S

    move-result p0

    goto :goto_1

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static final z(S)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method


# virtual methods
.method public final synthetic b0()S
    .locals 1

    iget-short v0, p0, Ln0/i;->b:S

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln0/i;

    invoke-virtual {p1}, Ln0/i;->b0()S

    move-result p1

    invoke-virtual {p0, p1}, Ln0/i;->o(S)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-short v0, p0, Ln0/i;->b:S

    invoke-static {v0, p1}, Ln0/i;->u(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Ln0/i;->b:S

    invoke-static {v0}, Ln0/i;->B(S)I

    move-result v0

    return v0
.end method

.method public o(S)I
    .locals 1

    iget-short v0, p0, Ln0/i;->b:S

    invoke-static {v0, p1}, Ln0/i;->q(SS)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Ln0/i;->b:S

    invoke-static {v0}, Ln0/i;->Y(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
