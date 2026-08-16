.class public final Lcom/android/tools/r8/internal/jg0;
.super Lcom/android/tools/r8/internal/Fj0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/By;


# instance fields
.field public c:Ljava/util/Iterator;

.field public d:Lcom/android/tools/r8/internal/zh0;

.field public e:Ljava/util/Iterator;

.field public f:Lcom/android/tools/r8/internal/Vi0;

.field public g:Ljava/util/Iterator;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/android/tools/r8/internal/ci0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/jg0;->j:Lcom/android/tools/r8/internal/ci0;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/Fj0;-><init>(Lcom/android/tools/r8/internal/fi;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ol0;Lcom/android/tools/r8/internal/ol0;)Lcom/android/tools/r8/internal/fi;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/jg0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg0;->j:Lcom/android/tools/r8/internal/ci0;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/jg0;-><init>(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/fi;)V

    iput-object p1, v0, Lcom/android/tools/r8/internal/jg0;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/ol0;

    check-cast p2, Lcom/android/tools/r8/internal/fi;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/jg0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg0;->j:Lcom/android/tools/r8/internal/ci0;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/jg0;-><init>(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/fi;)V

    iput-object p1, v0, Lcom/android/tools/r8/internal/jg0;->i:Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jg0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/android/tools/r8/internal/ji;->b:Lcom/android/tools/r8/internal/ji;

    iget v1, p0, Lcom/android/tools/r8/internal/jg0;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg0;->g:Ljava/util/Iterator;

    iget-object v3, p0, Lcom/android/tools/r8/internal/jg0;->f:Lcom/android/tools/r8/internal/Vi0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/jg0;->e:Ljava/util/Iterator;

    iget-object v5, p0, Lcom/android/tools/r8/internal/jg0;->d:Lcom/android/tools/r8/internal/zh0;

    iget-object v6, p0, Lcom/android/tools/r8/internal/jg0;->c:Ljava/util/Iterator;

    iget-object v7, p0, Lcom/android/tools/r8/internal/jg0;->i:Ljava/lang/Object;

    check-cast v7, Lcom/android/tools/r8/internal/ol0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Hj0;->a(Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Hj0;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/jg0;->i:Ljava/lang/Object;

    check-cast p1, Lcom/android/tools/r8/internal/ol0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jg0;->j:Lcom/android/tools/r8/internal/ci0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zh0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/zh0;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Vi0;

    iget-object v6, v3, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v13, v6

    move-object v6, v1

    move-object v1, v13

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Ug0;

    const-string v8, "resourcePackage"

    invoke-static {v5, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "resourceType"

    invoke-static {v3, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "resourceEntry"

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3, v7}, Lcom/android/tools/r8/internal/kg0;->a(Lcom/android/tools/r8/internal/zh0;Lcom/android/tools/r8/internal/Vi0;Lcom/android/tools/r8/internal/Ug0;)I

    move-result v8

    new-instance v9, Lcom/android/tools/r8/internal/lu;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zh0;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, "resourcePackage.packageName"

    invoke-static {v10, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v3, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    check-cast v11, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/android/tools/r8/internal/Vi0;->c:Ljava/lang/String;

    :goto_2
    const-string v12, "resourceType.name"

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v8, v10, v11, v7}, Lcom/android/tools/r8/internal/lu;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Ug0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jg0;->i:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/tools/r8/internal/jg0;->c:Ljava/util/Iterator;

    iput-object v5, p0, Lcom/android/tools/r8/internal/jg0;->d:Lcom/android/tools/r8/internal/zh0;

    iput-object v4, p0, Lcom/android/tools/r8/internal/jg0;->e:Ljava/util/Iterator;

    iput-object v3, p0, Lcom/android/tools/r8/internal/jg0;->f:Lcom/android/tools/r8/internal/Vi0;

    iput-object v1, p0, Lcom/android/tools/r8/internal/jg0;->g:Ljava/util/Iterator;

    iput v2, p0, Lcom/android/tools/r8/internal/jg0;->h:I

    iput-object v9, p1, Lcom/android/tools/r8/internal/ol0;->c:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, p1, Lcom/android/tools/r8/internal/ol0;->b:I

    iput-object p0, p1, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    return-object v0

    :cond_4
    move-object v1, v6

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p1
.end method
