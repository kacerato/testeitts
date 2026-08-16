.class public final Lch/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1915#2,2:69\n*S KotlinDebug\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n*L\n55#1:69,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1915#2,2:69\n*S KotlinDebug\n*F\n+ 1 Utils.kt\norg/anastr/speedviewlib/util/UtilsKt\n*L\n55#1:69,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(LYg/j;LMf/l;)V
    .locals 3
    .param p0    # LYg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYg/j;",
            "LMf/l<",
            "-",
            "LZg/a;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, LYg/j;->getSections()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, LYg/j;->u()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZg/a;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LYg/j;->j(Ljava/util/List;)V

    return-void
.end method

.method public static final b(FF)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/16 v0, 0x168

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    float-to-double p0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v2

    div-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
