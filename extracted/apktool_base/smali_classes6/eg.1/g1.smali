.class public final Leg/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Log/l;)V
    .locals 0
    .param p0    # Log/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Log/l;->k()V

    return-void
.end method

.method public static final b(Log/k;)Log/l;
    .locals 0
    .param p0    # Log/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Log/k;->c:Log/l;

    return-object p0
.end method

.method public static synthetic c(Log/k;)V
    .locals 0

    return-void
.end method
