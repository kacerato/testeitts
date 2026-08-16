.class public abstract Lkotlin/time/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/I$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/c$a;
    }
.end annotation

.annotation build Lnf/T0;
    markerClass = {
        Lkotlin/time/o;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.9"
.end annotation


# instance fields
.field public final b:Lkotlin/time/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lnf/I;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/time/k;)V
    .locals 1
    .param p1    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/time/c;->b:Lkotlin/time/k;

    new-instance p1, Lkotlin/time/b;

    invoke-direct {p1, p0}, Lkotlin/time/b;-><init>(Lkotlin/time/c;)V

    invoke-static {p1}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object p1

    iput-object p1, p0, Lkotlin/time/c;->c:Lnf/I;

    return-void
.end method

.method public static synthetic b(Lkotlin/time/c;)J
    .locals 2

    invoke-static {p0}, Lkotlin/time/c;->h(Lkotlin/time/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic c(Lkotlin/time/c;)J
    .locals 2

    invoke-virtual {p0}, Lkotlin/time/c;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final h(Lkotlin/time/c;)J
    .locals 2

    invoke-virtual {p0}, Lkotlin/time/c;->g()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/H;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/time/c;->a()Lkotlin/time/g;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkotlin/time/g;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v7, Lkotlin/time/c$a;

    invoke-virtual {p0}, Lkotlin/time/c;->d()J

    move-result-wide v1

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->W()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/time/c$a;-><init>(JLkotlin/time/c;JLkotlin/jvm/internal/x;)V

    return-object v7
.end method

.method public final d()J
    .locals 4

    invoke-virtual {p0}, Lkotlin/time/c;->g()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/time/c;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Lkotlin/time/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/time/c;->b:Lkotlin/time/k;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lkotlin/time/c;->c:Lnf/I;

    invoke-interface {v0}, Lnf/I;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract g()J
.end method
