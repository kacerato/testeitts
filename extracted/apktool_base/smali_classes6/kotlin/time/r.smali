.class public final Lkotlin/time/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/time/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LEf/n;->a:LEf/m;

    invoke-virtual {v0}, LEf/m;->e()Lkotlin/time/e;

    move-result-object v0

    sput-object v0, Lkotlin/time/r;->a:Lkotlin/time/e;

    return-void
.end method

.method public static final a(Lkotlin/time/q;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lkotlin/time/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "instant"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/time/A;

    invoke-virtual {p0}, Lkotlin/time/q;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lkotlin/time/q;->e()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lkotlin/time/A;-><init>(JI)V

    return-object v0
.end method

.method public static final b()Lkotlin/time/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/time/r;->a:Lkotlin/time/e;

    invoke-interface {v0}, Lkotlin/time/e;->a()Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method
