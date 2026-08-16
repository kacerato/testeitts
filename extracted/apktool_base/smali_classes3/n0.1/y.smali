.class public final Ln0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,509:1\n424#1:541\n426#1:542\n426#1:549\n426#1:551\n323#1:555\n622#2:510\n622#2:511\n622#2:512\n622#2:513\n622#2:514\n622#2:515\n622#2:516\n622#2:517\n622#2:518\n622#2:519\n622#2:520\n622#2:521\n622#2:522\n622#2:523\n622#2:524\n622#2:525\n622#2:526\n622#2:527\n622#2:528\n622#2:529\n622#2:530\n622#2:531\n622#2:532\n622#2:533\n622#2:534\n622#2:535\n622#2:536\n622#2:537\n622#2:538\n622#2:539\n622#2:540\n285#3,6:543\n265#3,2:552\n283#3:554\n283#3:556\n34#4:550\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n*L\n432#1:541\n439#1:542\n449#1:549\n469#1:551\n492#1:555\n383#1:510\n384#1:511\n385#1:512\n386#1:513\n384#1:514\n385#1:515\n386#1:516\n390#1:517\n391#1:518\n392#1:519\n393#1:520\n390#1:521\n391#1:522\n392#1:523\n393#1:524\n397#1:525\n398#1:526\n399#1:527\n400#1:528\n397#1:529\n398#1:530\n399#1:531\n400#1:532\n404#1:533\n405#1:534\n406#1:535\n407#1:536\n404#1:537\n405#1:538\n406#1:539\n407#1:540\n444#1:543,6\n484#1:552,2\n484#1:554\n492#1:556\n449#1:550\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nQuaternion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n+ 2 Vector.kt\ncom/google/android/filament/utils/VectorKt\n+ 3 Quaternion.kt\ncom/google/android/filament/utils/Quaternion\n+ 4 Scalar.kt\ncom/google/android/filament/utils/ScalarKt\n*L\n1#1,509:1\n424#1:541\n426#1:542\n426#1:549\n426#1:551\n323#1:555\n622#2:510\n622#2:511\n622#2:512\n622#2:513\n622#2:514\n622#2:515\n622#2:516\n622#2:517\n622#2:518\n622#2:519\n622#2:520\n622#2:521\n622#2:522\n622#2:523\n622#2:524\n622#2:525\n622#2:526\n622#2:527\n622#2:528\n622#2:529\n622#2:530\n622#2:531\n622#2:532\n622#2:533\n622#2:534\n622#2:535\n622#2:536\n622#2:537\n622#2:538\n622#2:539\n622#2:540\n285#3,6:543\n265#3,2:552\n283#3:554\n283#3:556\n34#4:550\n*S KotlinDebug\n*F\n+ 1 Quaternion.kt\ncom/google/android/filament/utils/QuaternionKt\n*L\n432#1:541\n439#1:542\n449#1:549\n469#1:551\n492#1:555\n383#1:510\n384#1:511\n385#1:512\n386#1:513\n384#1:514\n385#1:515\n386#1:516\n390#1:517\n391#1:518\n392#1:519\n393#1:520\n390#1:521\n391#1:522\n392#1:523\n393#1:524\n397#1:525\n398#1:526\n399#1:527\n400#1:528\n397#1:529\n398#1:530\n399#1:531\n400#1:532\n404#1:533\n405#1:534\n406#1:535\n407#1:536\n404#1:537\n405#1:538\n406#1:539\n407#1:540\n444#1:543,6\n484#1:552,2\n484#1:554\n492#1:556\n449#1:550\n*E\n"
    }
.end annotation


# direct methods
.method public static final A(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final B(Ln0/w;Ln0/w;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final C(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final D(Ln0/w;Ln0/w;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final E(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final F(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final G(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final H(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final I(FLn0/w;)Ln0/w;
    .locals 4
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    sub-float v1, p0, v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    sub-float v2, p0, v2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    sub-float v3, p0, v3

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final J(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    xor-int/2addr v4, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    xor-int/2addr v5, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    invoke-direct {v0, v1, v4, v5, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final K(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    xor-int/2addr v4, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    xor-int/2addr v5, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    invoke-direct {v0, v1, v4, v5, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final L(Ln0/w;Ln0/w;F)Ln0/w;
    .locals 1
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ln0/y;->z(Ln0/w;Ln0/w;F)Ln0/w;

    move-result-object p0

    invoke-static {p0}, Ln0/y;->M(Ln0/w;)Ln0/w;

    move-result-object p0

    return-object p0
.end method

.method public static final M(Ln0/w;)Ln0/w;
    .locals 5
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, v3, v4, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final N(Ln0/w;FF)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    xor-int/2addr v4, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    xor-int/2addr v5, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    invoke-direct {v0, v1, v4, v5, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final O(Ln0/w;Ln0/w;F)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    xor-int/2addr v4, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    xor-int/2addr v5, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    invoke-direct {v0, v1, v4, v5, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static synthetic P(Ln0/w;FFILjava/lang/Object;)Ln0/c;
    .locals 4

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "a"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    xor-int/2addr p4, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    xor-int/2addr v2, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    xor-int/2addr v3, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    xor-int/lit8 p0, v0, 0x1

    invoke-direct {p3, p4, v2, v3, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method

.method public static synthetic Q(Ln0/w;Ln0/w;FILjava/lang/Object;)Ln0/c;
    .locals 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "a"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "b"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    xor-int/2addr p4, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    xor-int/2addr v2, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    xor-int/2addr v3, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    xor-int/lit8 p0, v0, 0x1

    invoke-direct {p3, p4, v2, v3, p0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method

.method public static final R(FLn0/w;)Ln0/w;
    .locals 4
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    add-float/2addr v1, p0

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    add-float/2addr v2, p0

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    add-float/2addr v3, p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final S(Ln0/w;Ln0/w;FF)Ln0/w;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    invoke-virtual {p1}, Ln0/w;->f0()Ln0/w;

    move-result-object p1

    :cond_0
    cmpg-float p3, v0, p3

    if-gez p3, :cond_1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v1, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v2, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v2, v3, v4, v5, p0}, Ln0/w;-><init>(FFFF)V

    new-instance p0, Ln0/w;

    invoke-virtual {v2}, Ln0/w;->y()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {v2}, Ln0/w;->B()F

    move-result v3

    div-float/2addr v3, v0

    invoke-virtual {v2}, Ln0/w;->C()F

    move-result v4

    div-float/2addr v4, v0

    invoke-virtual {v2}, Ln0/w;->x()F

    move-result v2

    div-float/2addr v2, v0

    invoke-direct {p0, v1, v3, v4, v2}, Ln0/w;-><init>(FFFF)V

    mul-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    new-instance p3, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-direct {p3, v1, v2, v3, p1}, Ln0/w;-><init>(FFFF)V

    new-instance p1, Ln0/w;

    invoke-virtual {p3}, Ln0/w;->y()F

    move-result p2

    div-float/2addr p2, v0

    invoke-virtual {p3}, Ln0/w;->B()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p3}, Ln0/w;->C()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p3}, Ln0/w;->x()F

    move-result p3

    div-float/2addr p3, v0

    invoke-direct {p1, p2, v1, v2, p3}, Ln0/w;-><init>(FFFF)V

    new-instance p2, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p3

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v0

    add-float/2addr p3, v0

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v0

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    add-float/2addr p0, p1

    invoke-direct {p2, p3, v0, v1, p0}, Ln0/w;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Ln0/y;->L(Ln0/w;Ln0/w;F)Ln0/w;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public static synthetic T(Ln0/w;Ln0/w;FFILjava/lang/Object;)Ln0/w;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const p3, 0x3f7fdf3b    # 0.9995f

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ln0/y;->S(Ln0/w;Ln0/w;FF)Ln0/w;

    move-result-object p0

    return-object p0
.end method

.method public static final U(FLn0/w;)Ln0/w;
    .locals 4
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v2, p0

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v3, p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final a(Ln0/w;)Ln0/w;
    .locals 4
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final b(Ln0/w;Ln0/w;)F
    .locals 3
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p1, v0, p0

    if-gez p1, :cond_0

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public static final c(Ln0/w;)Ln0/w;
    .locals 4
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final d(Ln0/w;Ln0/w;)Ln0/w;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result p1

    mul-float/2addr p0, p1

    sub-float/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Ln0/w;-><init>(FFFF)V

    new-instance p0, Ln0/w;

    invoke-virtual {v0}, Ln0/w;->y()F

    move-result p1

    invoke-virtual {v0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {v0}, Ln0/w;->C()F

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Ln0/w;-><init>(FFFF)V

    return-object p0
.end method

.method public static final e(FLn0/w;)Ln0/w;
    .locals 4
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    div-float v1, p0, v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    div-float v2, p0, v2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    div-float v3, p0, v3

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    div-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final f(Ln0/w;Ln0/w;)F
    .locals 3
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final g(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpg-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpg-float v4, v4, p1

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final h(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpg-float v5, v5, v6

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpg-float p0, p0, p1

    if-nez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final i(Ln0/w;FF)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final j(Ln0/w;Ln0/w;F)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, p2

    if-gez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static synthetic k(Ln0/w;FFILjava/lang/Object;)Ln0/c;
    .locals 4

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "a"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p3, p4, v2, v3, v0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method

.method public static synthetic l(Ln0/w;Ln0/w;FILjava/lang/Object;)Ln0/c;
    .locals 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const-string p3, "a"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "b"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result p4

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpg-float p4, p4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_4

    move v0, v1

    :cond_4
    invoke-direct {p3, p4, v2, v3, v0}, Ln0/c;-><init>(ZZZZ)V

    return-object p3
.end method

.method public static final m(Ln0/w;Ln0/C;)Ln0/f;
    .locals 1
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/C;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ln0/s;->O(Ln0/w;)Ln0/q;

    move-result-object p0

    invoke-static {p0, p1}, Ln0/s;->m(Ln0/q;Ln0/C;)Ln0/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ln0/w;Ln0/C;ILjava/lang/Object;)Ln0/f;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    sget-object p1, Ln0/C;->ZYX:Ln0/C;

    :cond_0
    invoke-static {p0, p1}, Ln0/y;->m(Ln0/w;Ln0/C;)Ln0/f;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final p(Ln0/w;Ln0/w;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final q(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final r(Ln0/w;Ln0/w;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final s(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final t(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final u(Ln0/w;F)Ln0/c;
    .locals 6
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    cmpl-float v1, v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    cmpl-float v5, v5, p1

    if-ltz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final v(Ln0/w;Ln0/g;)Ln0/c;
    .locals 7
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln0/c;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    invoke-virtual {p1}, Ln0/g;->Q()F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v4

    invoke-virtual {p1}, Ln0/g;->U()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v5

    invoke-virtual {p1}, Ln0/g;->V()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    invoke-virtual {p1}, Ln0/g;->P()F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {v0, v1, v4, v5, v2}, Ln0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final w(Ln0/w;)Ln0/w;
    .locals 5
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    new-instance v0, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, v3, v4, p0}, Ln0/w;-><init>(FFFF)V

    return-object v0
.end method

.method public static final x(Ln0/w;)F
    .locals 3
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final y(Ln0/w;)F
    .locals 3
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "q"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public static final z(Ln0/w;Ln0/w;F)Ln0/w;
    .locals 5
    .param p0    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ln0/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    new-instance v1, Ln0/w;

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    mul-float/2addr v0, p0

    invoke-direct {v1, v2, v3, v4, v0}, Ln0/w;-><init>(FFFF)V

    new-instance p0, Ln0/w;

    invoke-virtual {p1}, Ln0/w;->y()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Ln0/w;->B()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-virtual {p1}, Ln0/w;->C()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {p1}, Ln0/w;->x()F

    move-result p1

    mul-float/2addr p2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Ln0/w;-><init>(FFFF)V

    new-instance p1, Ln0/w;

    invoke-virtual {v1}, Ln0/w;->y()F

    move-result p2

    invoke-virtual {p0}, Ln0/w;->y()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {v1}, Ln0/w;->B()F

    move-result v0

    invoke-virtual {p0}, Ln0/w;->B()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Ln0/w;->C()F

    move-result v2

    invoke-virtual {p0}, Ln0/w;->C()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Ln0/w;->x()F

    move-result v1

    invoke-virtual {p0}, Ln0/w;->x()F

    move-result p0

    add-float/2addr v1, p0

    invoke-direct {p1, p2, v0, v2, v1}, Ln0/w;-><init>(FFFF)V

    return-object p1
.end method
