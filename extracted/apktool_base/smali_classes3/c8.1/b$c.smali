.class public Lc8/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->u(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->M()V

    invoke-static {}, Lyb/b;->r()V

    invoke-static {}, Lwb/c;->j()V

    invoke-static {}, Lda/h;->p()V

    invoke-static {}, LFb/c;->x()V

    invoke-static {}, Lc8/b;->e()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, LK8/d;->h(F)V

    invoke-static {}, Ld8/j;->l0()V

    return-void
.end method
