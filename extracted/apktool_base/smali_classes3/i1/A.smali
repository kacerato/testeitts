.class public final Li1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/z;",
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
            "Li1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/E;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V
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
            "Li1/K;",
            ">;",
            "Li1/p0<",
            "Li1/n;",
            ">;",
            "Li1/p0<",
            "Li1/E;",
            ">;",
            "Li1/p0<",
            "Li1/I;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/A;->a:Li1/p0;

    iput-object p2, p0, Li1/A;->b:Li1/p0;

    iput-object p3, p0, Li1/A;->c:Li1/p0;

    iput-object p4, p0, Li1/A;->d:Li1/p0;

    iput-object p5, p0, Li1/A;->e:Li1/p0;

    iput-object p6, p0, Li1/A;->f:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Li1/A;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Li1/A;->b:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Li1/d;

    iget-object v0, p0, Li1/A;->c:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Li1/K;

    iget-object v0, p0, Li1/A;->d:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Li1/n;

    iget-object v0, p0, Li1/A;->e:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Li1/E;

    iget-object v7, p0, Li1/A;->f:Li1/p0;

    new-instance v0, Li1/z;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Li1/z;-><init>(Landroid/app/Application;Li1/d;Li1/K;Li1/n;Li1/E;Li1/p0;)V

    return-object v0
.end method
