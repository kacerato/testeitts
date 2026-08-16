.class public final Li1/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li1/l0<",
        "Li1/w0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/C;",
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
            "Li1/n;",
            ">;",
            "Li1/p0<",
            "Li1/K0;",
            ">;",
            "Li1/p0<",
            "Li1/C;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/x0;->a:Li1/p0;

    iput-object p2, p0, Li1/x0;->b:Li1/p0;

    iput-object p3, p0, Li1/x0;->c:Li1/p0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic O1()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Li1/x0;->a:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/n;

    iget-object v1, p0, Li1/x0;->b:Li1/p0;

    check-cast v1, Li1/L0;

    invoke-virtual {v1}, Li1/L0;->a()Li1/K0;

    move-result-object v1

    iget-object v2, p0, Li1/x0;->c:Li1/p0;

    invoke-interface {v2}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li1/C;

    new-instance v3, Li1/w0;

    invoke-direct {v3, v0, v1, v2}, Li1/w0;-><init>(Li1/n;Li1/K0;Li1/C;)V

    return-object v3
.end method
