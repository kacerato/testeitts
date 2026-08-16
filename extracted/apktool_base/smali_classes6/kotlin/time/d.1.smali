.class public final Lkotlin/time/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/H;


# instance fields
.field public final b:Lkotlin/time/H;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:J


# direct methods
.method public constructor <init>(Lkotlin/time/H;J)V
    .locals 1

    const-string v0, "mark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/time/d;->b:Lkotlin/time/H;

    iput-wide p2, p0, Lkotlin/time/d;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/time/H;JLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlin/time/d;-><init>(Lkotlin/time/H;J)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lkotlin/time/d;->b:Lkotlin/time/H;

    invoke-interface {v0}, Lkotlin/time/H;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/h;->V(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge b()Z
    .locals 1

    invoke-static {p0}, Lkotlin/time/H$a;->a(Lkotlin/time/H;)Z

    move-result v0

    return v0
.end method

.method public bridge c()Z
    .locals 1

    invoke-static {p0}, Lkotlin/time/H$a;->b(Lkotlin/time/H;)Z

    move-result v0

    return v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/d;->c:J

    return-wide v0
.end method

.method public final e()Lkotlin/time/H;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/time/d;->b:Lkotlin/time/H;

    return-object v0
.end method

.method public f(J)Lkotlin/time/H;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/time/d;

    iget-object v1, p0, Lkotlin/time/d;->b:Lkotlin/time/H;

    iget-wide v2, p0, Lkotlin/time/d;->c:J

    invoke-static {v2, v3, p1, p2}, Lkotlin/time/h;->W(JJ)J

    move-result-wide p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lkotlin/time/d;-><init>(Lkotlin/time/H;JLkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public bridge l(J)Lkotlin/time/H;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/time/H$a;->c(Lkotlin/time/H;J)Lkotlin/time/H;

    move-result-object p1

    return-object p1
.end method
