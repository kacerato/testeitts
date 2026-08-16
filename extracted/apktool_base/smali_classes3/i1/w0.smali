.class public final Li1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu2/c;


# instance fields
.field public final a:Li1/n;

.field public final b:Li1/K0;

.field public final c:Li1/C;


# direct methods
.method public constructor <init>(Li1/n;Li1/K0;Li1/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/w0;->a:Li1/n;

    iput-object p2, p0, Li1/w0;->b:Li1/K0;

    iput-object p3, p0, Li1/w0;->c:Li1/C;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Li1/w0;->a:Li1/n;

    invoke-virtual {v0}, Li1/n;->a()I

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Li1/w0;->c:Li1/C;

    invoke-virtual {v0}, Li1/C;->c()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/app/Activity;Lu2/d;Lu2/c$c;Lu2/c$b;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Li1/w0;->b:Li1/K0;

    invoke-virtual {v0, p1, p2, p3, p4}, Li1/K0;->c(Landroid/app/Activity;Lu2/d;Lu2/c$c;Lu2/c$b;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Li1/w0;->c:Li1/C;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li1/C;->b(Li1/E;)V

    iget-object v0, p0, Li1/w0;->a:Li1/n;

    invoke-virtual {v0}, Li1/n;->d()V

    return-void
.end method
