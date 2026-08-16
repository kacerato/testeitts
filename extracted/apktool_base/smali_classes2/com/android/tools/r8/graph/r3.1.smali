.class public final Lcom/android/tools/r8/graph/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public final b:Lcom/android/tools/r8/graph/s3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/s3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/F0;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/s3;->f()I

    move-result v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/graph/yf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/yf;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/r3;->a(Ljava/util/function/Consumer;)V

    .line 12
    new-instance v1, Lcom/android/tools/r8/graph/md;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/md;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 4

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected field `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "` to have holder `"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/zf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/zf;-><init>(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/F0;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v0, :cond_0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/r3;->a(Lcom/android/tools/r8/graph/g1;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/xf;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/xf;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    iget-object v2, p0, Lcom/android/tools/r8/graph/r3;->a:Lcom/android/tools/r8/graph/E0;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/E0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/wf;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/wf;-><init>(Lcom/android/tools/r8/graph/r3;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/r3;->a(Ljava/util/function/Consumer;)V

    sget-boolean v0, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_0
    return-void
.end method
