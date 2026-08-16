.class public final Li1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/I;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/O;",
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
            "Li1/K;",
            ">;",
            "Li1/p0<",
            "Landroid/os/Handler;",
            ">;",
            "Li1/p0<",
            "Li1/O;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/J;->a:Li1/p0;

    iput-object p2, p0, Li1/J;->b:Li1/p0;

    iput-object p3, p0, Li1/J;->c:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/J;->a()Li1/I;

    move-result-object v0

    return-object v0
.end method

.method public final a()Li1/I;
    .locals 4

    iget-object v0, p0, Li1/J;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/K;

    sget-object v1, Li1/h0;->a:Landroid/os/Handler;

    invoke-static {v1}, Li1/o0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Li1/J;->c:Li1/p0;

    check-cast v2, Li1/P;

    invoke-virtual {v2}, Li1/P;->a()Li1/O;

    move-result-object v2

    new-instance v3, Li1/I;

    invoke-direct {v3, v0, v1, v2}, Li1/I;-><init>(Li1/K;Landroid/os/Handler;Li1/O;)V

    return-object v3
.end method
