.class public final Li1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/l;",
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
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/p0;Li1/p0;Li1/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/p0<",
            "Landroid/app/Application;",
            ">;",
            "Li1/p0<",
            "Li1/n;",
            ">;",
            "Li1/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/m;->a:Li1/p0;

    iput-object p2, p0, Li1/m;->b:Li1/p0;

    iput-object p3, p0, Li1/m;->c:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/m;->a()Li1/l;

    move-result-object v0

    return-object v0
.end method

.method public final a()Li1/l;
    .locals 4

    iget-object v0, p0, Li1/m;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Li1/m;->b:Li1/p0;

    invoke-interface {v1}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li1/n;

    sget-object v2, Li1/h0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Li1/l;

    invoke-direct {v3, v0, v1, v2}, Li1/l;-><init>(Landroid/app/Application;Li1/n;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method
