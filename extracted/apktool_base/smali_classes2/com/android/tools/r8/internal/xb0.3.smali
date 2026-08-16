.class public final Lcom/android/tools/r8/internal/xb0;
.super Lcom/android/tools/r8/internal/Tf0;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Tl0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Tf0;-><init>(Lcom/android/tools/r8/internal/Tl0;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xb0;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ci0;Z)V
    .locals 2

    .line 29
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/jg0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/jg0;-><init>(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/fi;)V

    .line 31
    new-instance p1, Lcom/android/tools/r8/internal/ol0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/ol0;-><init>()V

    .line 32
    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/Fj0;->a(Lcom/android/tools/r8/internal/ol0;Lcom/android/tools/r8/internal/ol0;)Lcom/android/tools/r8/internal/fi;

    move-result-object v0

    .line 33
    iput-object v0, p1, Lcom/android/tools/r8/internal/ol0;->d:Lcom/android/tools/r8/internal/fi;

    .line 34
    new-instance v0, Lcom/android/tools/r8/internal/Gy1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/Gy1;-><init>(Lcom/android/tools/r8/internal/xb0;Z)V

    .line 35
    invoke-interface {p1, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(ZLcom/android/tools/r8/internal/lu;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/android/tools/r8/internal/lu;->c:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lg0;

    .line 3
    iget-object v1, p2, Lcom/android/tools/r8/internal/lu;->d:Lcom/android/tools/r8/internal/Ug0;

    .line 4
    iget v2, p2, Lcom/android/tools/r8/internal/lu;->a:I

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    iget-object v3, v1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 8
    sget-object v3, Lcom/android/tools/r8/internal/lg0;->x:Lcom/android/tools/r8/internal/lg0;

    if-ne v0, v3, :cond_3

    const/4 v3, 0x0

    .line 9
    iget-object v4, v1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Og0;

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    iget-object v3, v3, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v3, :cond_0

    .line 12
    sget-object v3, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    .line 13
    :cond_0
    iget v4, v3, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v3

    .line 15
    iget v4, v3, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 16
    iget-object v4, p0, Lcom/android/tools/r8/internal/xb0;->g:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 17
    iget v7, v3, Lcom/android/tools/r8/internal/hh0;->b:I

    if-ne v7, v5, :cond_1

    .line 18
    iget-object v3, v3, Lcom/android/tools/r8/internal/hh0;->c:Lcom/android/tools/r8/internal/kW;

    check-cast v3, Lcom/android/tools/r8/internal/oi0;

    goto :goto_0

    .line 19
    :cond_1
    sget-object v3, Lcom/android/tools/r8/internal/oi0;->d:Lcom/android/tools/r8/internal/oi0;

    .line 20
    :goto_0
    iget-object v5, v3, Lcom/android/tools/r8/internal/oi0;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    check-cast v5, Lcom/android/tools/r8/internal/m8;

    .line 22
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v5

    .line 23
    iput-object v5, v3, Lcom/android/tools/r8/internal/oi0;->b:Ljava/lang/String;

    .line 24
    :goto_1
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_5

    .line 25
    sget-object v3, Lcom/android/tools/r8/internal/lg0;->z:Lcom/android/tools/r8/internal/lg0;

    if-ne v0, v3, :cond_4

    if-eqz p1, :cond_5

    .line 26
    :cond_4
    iget-object p1, p2, Lcom/android/tools/r8/internal/lu;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/internal/Cj0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    new-instance v3, Lcom/android/tools/r8/internal/ng0;

    invoke-direct {v3, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/ng0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/ng0;)Lcom/android/tools/r8/internal/ng0;

    :cond_5
    return-void
.end method
