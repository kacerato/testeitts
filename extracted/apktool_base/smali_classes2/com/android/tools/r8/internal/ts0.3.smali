.class public final Lcom/android/tools/r8/internal/ts0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Tf0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tf0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/ts0;->a:Lcom/android/tools/r8/internal/Tf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c338b4

    if-eq v0, v1, :cond_3

    const v1, 0x322b85

    const v2, 0x7fffffff

    const/4 v3, 0x1

    const/16 v4, 0x2c

    const-string v5, "value"

    if-eq v0, v1, :cond_2

    const v1, 0x639f089e

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "discard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/ts0;->a:Lcom/android/tools/r8/internal/Tf0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-static {p2, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    new-instance v1, Lcom/android/tools/r8/internal/zn0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/zn0;-><init>(Lcom/android/tools/r8/internal/Qb;)V

    sget-object v0, Lcom/android/tools/r8/internal/Ub;->c:Lcom/android/tools/r8/internal/Ub;

    sget-object v0, Lcom/android/tools/r8/internal/Vb;->d:Lcom/android/tools/r8/internal/Vb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/tools/r8/internal/En0;

    invoke-direct {v4, v1, v3, v0, v2}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;ZLcom/android/tools/r8/internal/Sb;I)V

    invoke-interface {v1, v4, p2}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ig0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "keep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/ts0;->a:Lcom/android/tools/r8/internal/Tf0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-static {p2, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/tools/r8/internal/Qb;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/Qb;-><init>(C)V

    new-instance v1, Lcom/android/tools/r8/internal/zn0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/zn0;-><init>(Lcom/android/tools/r8/internal/Qb;)V

    sget-object v0, Lcom/android/tools/r8/internal/Ub;->c:Lcom/android/tools/r8/internal/Ub;

    sget-object v0, Lcom/android/tools/r8/internal/Vb;->d:Lcom/android/tools/r8/internal/Vb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/tools/r8/internal/En0;

    invoke-direct {v4, v1, v3, v0, v2}, Lcom/android/tools/r8/internal/En0;-><init>(Lcom/android/tools/r8/internal/Dn0;ZLcom/android/tools/r8/internal/Sb;I)V

    invoke-interface {v1, v4, p2}, Lcom/android/tools/r8/internal/Dn0;->a(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/internal/Cn0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Cn0;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/tools/r8/internal/ig0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v0, "shrinkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x352aa137    # -6991716.5f

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "strict"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/internal/ts0;->a:Lcom/android/tools/r8/internal/Tf0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/tools/r8/internal/ig0;->h:Z

    :cond_6
    :goto_2
    return-void
.end method
