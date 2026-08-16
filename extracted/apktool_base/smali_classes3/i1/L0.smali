.class public final Li1/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/K0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/C;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/O0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/u0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/p0<",
            "Landroid/app/Application;",
            ">;",
            "Li1/p0<",
            "Li1/d;",
            ">;",
            "Li1/p0<",
            "Landroid/os/Handler;",
            ">;",
            "Li1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Li1/p0<",
            "Li1/n;",
            ">;",
            "Li1/p0<",
            "Li1/C;",
            ">;",
            "Li1/p0<",
            "Li1/z0;",
            ">;",
            "Li1/p0<",
            "Li1/O0;",
            ">;",
            "Li1/p0<",
            "Li1/u0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/L0;->a:Li1/p0;

    iput-object p2, p0, Li1/L0;->b:Li1/p0;

    iput-object p3, p0, Li1/L0;->c:Li1/p0;

    iput-object p4, p0, Li1/L0;->d:Li1/p0;

    iput-object p5, p0, Li1/L0;->e:Li1/p0;

    iput-object p6, p0, Li1/L0;->f:Li1/p0;

    iput-object p7, p0, Li1/L0;->g:Li1/p0;

    iput-object p8, p0, Li1/L0;->h:Li1/p0;

    iput-object p9, p0, Li1/L0;->i:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/L0;->a()Li1/K0;

    move-result-object v0

    return-object v0
.end method

.method public final a()Li1/K0;
    .locals 11

    iget-object v0, p0, Li1/L0;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Li1/L0;->b:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Li1/d;

    sget-object v4, Li1/h0;->a:Landroid/os/Handler;

    invoke-static {v4}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Li1/h0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v5}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li1/L0;->e:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li1/n;

    iget-object v0, p0, Li1/L0;->f:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Li1/C;

    iget-object v0, p0, Li1/L0;->g:Li1/p0;

    check-cast v0, Li1/E0;

    invoke-virtual {v0}, Li1/E0;->a()Li1/z0;

    move-result-object v8

    iget-object v0, p0, Li1/L0;->h:Li1/p0;

    check-cast v0, Li1/c;

    invoke-virtual {v0}, Li1/c;->a()Li1/O0;

    move-result-object v9

    iget-object v0, p0, Li1/L0;->i:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Li1/u0;

    new-instance v0, Li1/K0;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Li1/K0;-><init>(Landroid/app/Application;Li1/d;Landroid/os/Handler;Ljava/util/concurrent/Executor;Li1/n;Li1/C;Li1/z0;Li1/O0;Li1/u0;)V

    return-object v0
.end method
