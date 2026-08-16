.class public abstract Lkotlin/time/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/I$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/a$a;
    }
.end annotation

.annotation build Lkotlin/time/o;
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation

.annotation runtime Lnf/o;
    level = .enum Lnf/q;->ERROR:Lnf/q;
    message = "Using AbstractDoubleTimeSource is no longer recommended, use AbstractLongTimeSource instead."
.end annotation


# instance fields
.field public final b:Lkotlin/time/k;
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

    iput-object p1, p0, Lkotlin/time/a;->b:Lkotlin/time/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/H;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/time/a;->a()Lkotlin/time/g;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkotlin/time/g;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v7, Lkotlin/time/a$a;

    invoke-virtual {p0}, Lkotlin/time/a;->c()D

    move-result-wide v1

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->W()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/time/a$a;-><init>(DLkotlin/time/a;JLkotlin/jvm/internal/x;)V

    return-object v7
.end method

.method public final b()Lkotlin/time/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/time/a;->b:Lkotlin/time/k;

    return-object v0
.end method

.method public abstract c()D
.end method
