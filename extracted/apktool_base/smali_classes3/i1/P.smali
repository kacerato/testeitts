.class public final Li1/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/O;",
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
            "Li1/K;",
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
            "Li1/u0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/l;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/z;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/p0<",
            "Landroid/app/Application;",
            ">;",
            "Li1/p0<",
            "Li1/K;",
            ">;",
            "Li1/p0<",
            "Landroid/os/Handler;",
            ">;",
            "Li1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Li1/p0<",
            "Li1/u0;",
            ">;",
            "Li1/p0<",
            "Li1/l;",
            ">;",
            "Li1/p0<",
            "Li1/z;",
            ">;",
            "Li1/p0<",
            "Li1/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/P;->a:Li1/p0;

    iput-object p2, p0, Li1/P;->b:Li1/p0;

    iput-object p3, p0, Li1/P;->c:Li1/p0;

    iput-object p4, p0, Li1/P;->d:Li1/p0;

    iput-object p5, p0, Li1/P;->e:Li1/p0;

    iput-object p6, p0, Li1/P;->f:Li1/p0;

    iput-object p7, p0, Li1/P;->g:Li1/p0;

    iput-object p8, p0, Li1/P;->h:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/P;->a()Li1/O;

    move-result-object v0

    return-object v0
.end method

.method public final a()Li1/O;
    .locals 10

    iget-object v0, p0, Li1/P;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Li1/P;->b:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Li1/K;

    sget-object v4, Li1/h0;->a:Landroid/os/Handler;

    invoke-static {v4}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Li1/h0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v5}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Li1/P;->e:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li1/u0;

    iget-object v0, p0, Li1/P;->f:Li1/p0;

    check-cast v0, Li1/m;

    invoke-virtual {v0}, Li1/m;->a()Li1/l;

    move-result-object v7

    iget-object v0, p0, Li1/P;->g:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Li1/z;

    iget-object v0, p0, Li1/P;->h:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Li1/n;

    new-instance v0, Li1/O;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Li1/O;-><init>(Landroid/app/Application;Li1/K;Landroid/os/Handler;Ljava/util/concurrent/Executor;Li1/u0;Li1/l;Li1/z;Li1/n;)V

    return-object v0
.end method
