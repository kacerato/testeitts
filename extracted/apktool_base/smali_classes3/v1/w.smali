.class public final Lv1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lv1/k;

.field public final synthetic c:Lv1/x;


# direct methods
.method public constructor <init>(Lv1/x;Lv1/k;)V
    .locals 0

    iput-object p1, p0, Lv1/w;->c:Lv1/x;

    iput-object p2, p0, Lv1/w;->b:Lv1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv1/w;->b:Lv1/k;

    invoke-virtual {v0}, Lv1/k;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v0}, Lv1/x;->b(Lv1/x;)Lv1/Q;

    move-result-object v0

    invoke-virtual {v0}, Lv1/Q;->A()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v0}, Lv1/x;->a(Lv1/x;)Lv1/c;

    move-result-object v0

    iget-object v1, p0, Lv1/w;->b:Lv1/k;

    invoke-interface {v0, v1}, Lv1/c;->a(Lv1/k;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v1}, Lv1/x;->b(Lv1/x;)Lv1/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lv1/Q;->z(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v1}, Lv1/x;->b(Lv1/x;)Lv1/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v1}, Lv1/x;->b(Lv1/x;)Lv1/Q;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lv1/w;->c:Lv1/x;

    invoke-static {v1}, Lv1/x;->b(Lv1/x;)Lv1/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lv1/Q;->y(Ljava/lang/Exception;)V

    return-void
.end method
