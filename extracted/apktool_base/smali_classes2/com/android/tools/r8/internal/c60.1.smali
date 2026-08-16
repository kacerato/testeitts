.class public final Lcom/android/tools/r8/internal/c60;
.super Lcom/android/tools/r8/internal/e60;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/internal/mP;

.field public final e:Lcom/android/tools/r8/internal/WM;

.field public final f:Lcom/android/tools/r8/internal/d60;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/cP;Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/internal/d60;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/internal/e60;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/cP;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/c60;->i:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/d60;->c:Lcom/android/tools/r8/internal/d60;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/oP;->a:Lcom/android/tools/r8/internal/WM;

    iget-object p2, p1, Lcom/android/tools/r8/internal/WM;->b:Lcom/android/tools/r8/internal/YM;

    iget-object p2, p2, Lcom/android/tools/r8/internal/YM;->a:Lcom/android/tools/r8/internal/mP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/c60;->d:Lcom/android/tools/r8/internal/mP;

    iput-object p1, p0, Lcom/android/tools/r8/internal/c60;->e:Lcom/android/tools/r8/internal/WM;

    iput-object p6, p0, Lcom/android/tools/r8/internal/c60;->f:Lcom/android/tools/r8/internal/d60;

    iput-object p4, p0, Lcom/android/tools/r8/internal/c60;->h:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/internal/c60;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->f:Lcom/android/tools/r8/internal/d60;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/d60;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/PM;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->h:Ljava/util/Map;

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

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->g:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->e:Lcom/android/tools/r8/internal/WM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c60;->d:Lcom/android/tools/r8/internal/mP;

    invoke-static {v1}, Lcom/android/tools/r8/internal/e60;->a(Lcom/android/tools/r8/internal/mP;)Ljava/util/function/BiConsumer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Nk0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/WM;Ljava/util/function/BiConsumer;)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->g:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/c60;->f:Lcom/android/tools/r8/internal/d60;

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
