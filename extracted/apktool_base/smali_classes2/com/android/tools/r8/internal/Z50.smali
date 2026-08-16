.class public final Lcom/android/tools/r8/internal/Z50;
.super Lcom/android/tools/r8/internal/e60;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/WM;

.field public final e:Lcom/android/tools/r8/internal/WM;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Lcom/android/tools/r8/internal/d60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/oP;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/e60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    iget-object p1, p3, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z50;->d:Lcom/android/tools/r8/internal/WM;

    iget-object p1, p4, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z50;->e:Lcom/android/tools/r8/internal/WM;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Z50;->f:Ljava/util/Map;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Z50;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Z50;->h:Ljava/util/List;

    iput-object p8, p0, Lcom/android/tools/r8/internal/Z50;->i:Lcom/android/tools/r8/internal/d60;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->g:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->d:Lcom/android/tools/r8/internal/WM;

    new-instance v1, Lcom/android/tools/r8/internal/P31;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/P31;-><init>(Lcom/android/tools/r8/internal/Z50;)V

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/OO;

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 7
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/OO;Lcom/android/tools/r8/internal/Mk0;)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 2
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/Mk0;)Lcom/android/tools/r8/internal/Mk0;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->i:Lcom/android/tools/r8/internal/d60;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/d60;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/OO;

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Mk0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Mk0;-><init>(Ljava/lang/StringBuilder;)V

    .line 5
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Nk0;->a(Lcom/android/tools/r8/internal/OO;Lcom/android/tools/r8/internal/Mk0;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->h:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->e:Lcom/android/tools/r8/internal/WM;

    new-instance v1, Lcom/android/tools/r8/internal/P31;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/P31;-><init>(Lcom/android/tools/r8/internal/Z50;)V

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->h:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z50;->i:Lcom/android/tools/r8/internal/d60;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/tools/r8/internal/d60;->f:Lcom/android/tools/r8/internal/d60;

    if-eq v0, v1, :cond_0

    .line 7
    const-string v0, " { void finalize(); }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
