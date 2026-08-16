.class public Lag/E;
.super Lag/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lag/D;-><init>()V

    return-void
.end method

.method public static final y(Ljava/util/regex/Pattern;)Lag/v;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lag/v;

    invoke-direct {v0, p0}, Lag/v;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
