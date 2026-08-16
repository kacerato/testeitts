.class public Lag/F;
.super Lag/E;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lag/E;-><init>()V

    return-void
.end method

.method public static final A(Ljava/lang/String;Lag/x;)Lag/v;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lag/v;

    invoke-direct {v0, p0, p1}, Lag/v;-><init>(Ljava/lang/String;Lag/x;)V

    return-object v0
.end method

.method public static final B(Ljava/lang/String;Ljava/util/Set;)Lag/v;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lag/x;",
            ">;)",
            "Lag/v;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lag/v;

    invoke-direct {v0, p0, p1}, Lag/v;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public static final z(Ljava/lang/String;)Lag/v;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lag/v;

    invoke-direct {v0, p0}, Lag/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
