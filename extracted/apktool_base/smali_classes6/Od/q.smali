.class public final LOd/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWhatIfExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatIfExtension.kt\ncom/skydoves/powerspinner/WhatIfExtensionKt\n*L\n1#1,53:1\n47#1,6:54\n*E\n*S KotlinDebug\n*F\n+ 1 WhatIfExtension.kt\ncom/skydoves/powerspinner/WhatIfExtensionKt\n*L\n32#1,6:54\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;LMf/l;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LMf/l<",
            "-",
            "Ljava/lang/String;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "whatIf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final b(Ljava/lang/String;LMf/l;LMf/a;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LMf/l<",
            "-",
            "Ljava/lang/String;",
            "Lnf/P0;",
            ">;",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "whatIf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatIfNot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p2}, LMf/a;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method
