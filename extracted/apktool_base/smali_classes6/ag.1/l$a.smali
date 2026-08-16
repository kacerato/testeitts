.class public final Lag/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Lag/l$b$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lag/l$d$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lnf/f0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lag/l;->d:Lag/l$c;

    invoke-virtual {v0}, Lag/l$c;->a()Lag/l;

    move-result-object v0

    invoke-virtual {v0}, Lag/l;->e()Z

    move-result v0

    iput-boolean v0, p0, Lag/l$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lag/l;
    .locals 4
    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lag/l;

    iget-boolean v1, p0, Lag/l$a;->a:Z

    iget-object v2, p0, Lag/l$a;->b:Lag/l$b$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lag/l$b$a;->a()Lag/l$b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lag/l$b;->j:Lag/l$b$b;

    invoke-virtual {v2}, Lag/l$b$b;->a()Lag/l$b;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lag/l$a;->c:Lag/l$d$a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lag/l$d$a;->a()Lag/l$d;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v3, Lag/l$d;->h:Lag/l$d$b;

    invoke-virtual {v3}, Lag/l$d$b;->a()Lag/l$d;

    move-result-object v3

    :cond_3
    invoke-direct {v0, v1, v2, v3}, Lag/l;-><init>(ZLag/l$b;Lag/l$d;)V

    return-object v0
.end method

.method public final b(LMf/l;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Lag/l$b$a;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/l$a;->c()Lag/l$b$a;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lag/l$b$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lag/l$a;->b:Lag/l$b$a;

    if-nez v0, :cond_0

    new-instance v0, Lag/l$b$a;

    invoke-direct {v0}, Lag/l$b$a;-><init>()V

    iput-object v0, p0, Lag/l$a;->b:Lag/l$b$a;

    :cond_0
    iget-object v0, p0, Lag/l$a;->b:Lag/l$b$a;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Lag/l$d$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lag/l$a;->c:Lag/l$d$a;

    if-nez v0, :cond_0

    new-instance v0, Lag/l$d$a;

    invoke-direct {v0}, Lag/l$d$a;-><init>()V

    iput-object v0, p0, Lag/l$a;->c:Lag/l$d$a;

    :cond_0
    iget-object v0, p0, Lag/l$a;->c:Lag/l$d$a;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lag/l$a;->a:Z

    return v0
.end method

.method public final f(LMf/l;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Lag/l$d$a;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lag/l$a;->d()Lag/l$d$a;

    move-result-object v0

    invoke-interface {p1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lag/l$a;->a:Z

    return-void
.end method
