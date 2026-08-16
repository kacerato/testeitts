.class public final synthetic Lv1/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# instance fields
.field public final synthetic a:Ll1/a;

.field public final synthetic b:Lv1/l;

.field public final synthetic c:Lv1/v;


# direct methods
.method public synthetic constructor <init>(Ll1/a;Lv1/l;Lv1/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/T;->a:Ll1/a;

    iput-object p2, p0, Lv1/T;->b:Lv1/l;

    iput-object p3, p0, Lv1/T;->c:Lv1/v;

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 2

    iget-object v0, p0, Lv1/T;->a:Ll1/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/T;->b:Lv1/l;

    invoke-virtual {p1}, Lv1/k;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv1/l;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lv1/k;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lv1/T;->c:Lv1/v;

    invoke-virtual {p1}, Lv1/v;->c()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lv1/k;->q()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
