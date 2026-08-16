.class public final Lcom/android/tools/r8/internal/a60;
.super Lcom/android/tools/r8/internal/e60;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/internal/mP;

.field public final e:Lcom/android/tools/r8/internal/WM;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Lcom/android/tools/r8/internal/d60;

.field public j:I

.field public k:Ljava/lang/String;

.field public final l:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/e60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/tools/r8/internal/a60;->j:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/tools/r8/internal/a60;->k:Ljava/lang/String;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/a60;->l:Ljava/util/HashMap;

    iget-object p2, p4, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    iget-object p3, p2, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    iget-object p3, p3, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    iput-object p3, p0, Lcom/android/tools/r8/internal/a60;->d:Lcom/android/tools/r8/internal/mP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/a60;->e:Lcom/android/tools/r8/internal/WM;

    iput-object p5, p0, Lcom/android/tools/r8/internal/a60;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/internal/a60;->g:Ljava/util/List;

    iput-object p6, p0, Lcom/android/tools/r8/internal/a60;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/android/tools/r8/internal/a60;->i:Lcom/android/tools/r8/internal/d60;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->g:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->e:Lcom/android/tools/r8/internal/WM;

    new-instance v1, Lcom/android/tools/r8/internal/E41;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/E41;-><init>(Lcom/android/tools/r8/internal/a60;Ljava/lang/StringBuilder;)V

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/OO;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/C41;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/C41;-><init>(Lcom/android/tools/r8/internal/a60;)V

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/Kk0;

    invoke-direct {v2, p1, v1}, Lcom/android/tools/r8/internal/Kk0;-><init>(Ljava/lang/StringBuilder;Ljava/util/function/Supplier;)V

    .line 11
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/OO;Lcom/android/tools/r8/internal/Mk0;)V

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/a60;->l:Ljava/util/HashMap;

    .line 13
    iget-object v0, v2, Lcom/android/tools/r8/internal/Kk0;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V
    .locals 0

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/C41;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/C41;-><init>(Lcom/android/tools/r8/internal/a60;)V

    .line 4
    new-instance p3, Lcom/android/tools/r8/internal/Kk0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/Kk0;-><init>(Ljava/lang/StringBuilder;Ljava/util/function/Supplier;)V

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/a60;->d:Lcom/android/tools/r8/internal/mP;

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    .line 6
    iget-object p1, p3, Lcom/android/tools/r8/internal/Kk0;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/a60;->k:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->i:Lcom/android/tools/r8/internal/d60;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/d60;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/a60;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/OO;

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 15
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/OO;Lcom/android/tools/r8/internal/Mk0;)V

    return-void
.end method

.method public final b(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/a60;->m:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/a60;->d:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/a60;->d()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/a60;->k:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    if-nez v0, :cond_4

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/a60;->k:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/a60;->d:Lcom/android/tools/r8/internal/mP;

    .line 8
    new-instance p3, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 9
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->h:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->e:Lcom/android/tools/r8/internal/WM;

    new-instance v1, Lcom/android/tools/r8/internal/D41;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/D41;-><init>(Lcom/android/tools/r8/internal/a60;Ljava/lang/StringBuilder;)V

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->h:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->i:Lcom/android/tools/r8/internal/d60;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/d60;->f:Lcom/android/tools/r8/internal/d60;

    if-eq v0, v1, :cond_0

    .line 8
    const-string v0, " { void finalize(); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/a60;->i:Lcom/android/tools/r8/internal/d60;

    sget-object v2, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/a60;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/a60;->j:I

    return v0
.end method
