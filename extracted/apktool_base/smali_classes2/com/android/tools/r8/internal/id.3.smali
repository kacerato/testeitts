.class public final Lcom/android/tools/r8/internal/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public b:Lcom/android/tools/r8/internal/jd;

.field public c:Lcom/android/tools/r8/internal/Ud;

.field public d:Lcom/android/tools/r8/graph/M2;

.field public e:Lcom/android/tools/r8/graph/E0;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/jd;Lcom/android/tools/r8/internal/Ud;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/id;->f:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/id;->c:Lcom/android/tools/r8/internal/Ud;

    iput-object p3, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/E0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/id;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/id;->f:Z

    if-nez v0, :cond_3

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/id;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->c:Lcom/android/tools/r8/internal/Ud;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->c:Lcom/android/tools/r8/internal/Ud;

    iget-object v1, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/xe1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/xe1;-><init>(Lcom/android/tools/r8/internal/id;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ud;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/internal/id;->c:Lcom/android/tools/r8/internal/Ud;

    .line 9
    iput-object v0, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/id;->f:Z

    .line 11
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/id;->g:Z

    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/id;->f:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->c:Lcom/android/tools/r8/internal/Ud;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    return-object v0

    .line 15
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E0;)V
    .locals 4

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/id;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jd;->c()Lcom/android/tools/r8/graph/V;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/V;->a(Lcom/android/tools/r8/graph/E0;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 18
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/id;->f:Z

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 19
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_7

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    if-nez v0, :cond_6

    .line 21
    iput-object p1, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    return-void

    :cond_6
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/id;->b:Lcom/android/tools/r8/internal/jd;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/id;->e:Lcom/android/tools/r8/graph/E0;

    return-void

    .line 24
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/If;

    iget-object v1, p0, Lcom/android/tools/r8/internal/id;->d:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class content provided for type descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actually defines class "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/id;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    return-object v0
.end method
