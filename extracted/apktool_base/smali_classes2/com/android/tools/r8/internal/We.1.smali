.class public final Lcom/android/tools/r8/internal/We;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xt0;

.field public final b:Lcom/android/tools/r8/internal/z30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Oz;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/z30;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/xt0;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/tools/r8/internal/xt0;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/We;->a:Lcom/android/tools/r8/internal/xt0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/We;->b:Lcom/android/tools/r8/internal/z30;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/We;->b:Lcom/android/tools/r8/internal/z30;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/z30;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/We;->a:Lcom/android/tools/r8/internal/xt0;

    .line 13
    iget-object v1, v1, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->d()V

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/We;->a:Lcom/android/tools/r8/internal/xt0;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/internal/xt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->f()V

    return-void
.end method
