.class public Lcom/android/tools/r8/internal/WR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/xU;

.field public b:Ljava/lang/String;

.field public volatile c:Lcom/android/tools/r8/internal/zm;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public e:Lcom/android/tools/r8/internal/Tr0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/wU;

    new-instance v8, Lcom/android/tools/r8/internal/EU;

    sget-object v2, Lcom/android/tools/r8/internal/C2;->c:Lcom/android/tools/r8/internal/C2;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const-string v3, "unused"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    sget-boolean v1, Lcom/android/tools/r8/internal/CU;->s:Z

    new-instance v1, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/BU;-><init>()V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/android/tools/r8/internal/wU;-><init>(Lcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/WR;->d:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/xU;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    const-string v0, "Load machine specification"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Tr0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/vm;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/WR;->b(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V
    .locals 3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/WR;->f:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 6
    const-string p2, "com.android.tools.r8.synthesizedClassPrefix"

    invoke-static {p2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_4
    const-string v0, "com.android.tools.r8.desugaredLibraryPostPrefix"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/WR;->b(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    if-nez v0, :cond_5

    move-object p1, v1

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V
    .locals 0

    .line 12
    invoke-interface {p1, p4, p3}, Lcom/android/tools/r8/internal/vm;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 13
    iget-object p3, p0, Lcom/android/tools/r8/internal/WR;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/xU;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/xU;

    move-result-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/xU;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/zm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    if-nez v0, :cond_3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->m()Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/xm;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xm;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/ym;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WR;->d:Lcom/android/tools/r8/internal/nJ;

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ym;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xU;)V

    .line 12
    :goto_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    .line 13
    :cond_2
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 14
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->c:Lcom/android/tools/r8/internal/zm;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/internal/vm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/x01;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/x01;-><init>(Lcom/android/tools/r8/internal/WR;Lcom/android/tools/r8/internal/vm;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/WR;->e:Lcom/android/tools/r8/internal/Tr0;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WR;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
