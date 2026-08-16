.class public final Lcom/android/tools/r8/internal/PQ;
.super Lcom/android/tools/r8/internal/NQ;
.source "SourceFile"


# instance fields
.field public b:Lcom/android/tools/r8/internal/rQ;

.field public c:Lcom/android/tools/r8/internal/ML;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/S;)V
    .locals 13

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    sget-object v4, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lcom/android/tools/r8/internal/N6;->a([Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/pM;->a(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lcom/android/tools/r8/internal/VL;

    move-result-object v7

    sget-object v0, Lcom/android/tools/r8/internal/n90;->w:Lcom/android/tools/r8/internal/l90;

    invoke-virtual {v0, v5, v4}, Lcom/android/tools/r8/internal/j1;->a(Ljava/io/InputStream;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/j1;->a(Lcom/android/tools/r8/internal/O0;)Lcom/android/tools/r8/internal/O0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/n90;

    new-instance v2, Lcom/android/tools/r8/internal/ML;

    iget-object v4, p1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    new-instance v4, Lcom/android/tools/r8/internal/ML;

    const/4 v5, 0x4

    invoke-direct {v4, v3, v5, v1}, Lcom/android/tools/r8/internal/ML;-><init>(III)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v2

    if-gez v2, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v1

    :goto_0
    const-string v2, "<this>"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/rQ;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/rQ;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/Kb0;

    new-instance v8, Lcom/android/tools/r8/internal/Bu0;

    iget-object v5, v0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    const-string v6, "getTypeTable(...)"

    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v5}, Lcom/android/tools/r8/internal/Bu0;-><init>(Lcom/android/tools/r8/internal/W90;)V

    sget-object v9, Lcom/android/tools/r8/internal/Zw0;->b:Lcom/android/tools/r8/internal/Zw0;

    const/4 v11, 0x0

    const/16 v12, 0x30

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/tools/r8/internal/Kb0;-><init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLjava/util/List;I)V

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/n90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/pQ;

    move-result-object v0

    iput-object v0, v2, Lcom/android/tools/r8/internal/rQ;->a:Lcom/android/tools/r8/internal/pQ;

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/ML;

    iget-object v4, p1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    iget p1, p1, Lcom/android/tools/r8/kotlin/S;->e:I

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/NQ;-><init>(I)V

    iput-object v2, p0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    iput-object v0, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    iput p1, p0, Lcom/android/tools/r8/internal/PQ;->d:I

    iput-boolean v3, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ML;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ML;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/KL;
    .locals 10

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    if-eqz v1, :cond_0

    const-string v1, "lambda"

    goto :goto_0

    :cond_0
    const-string v1, "synthetic class"

    :goto_0
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/OQ;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    invoke-static {v0}, Lcom/android/tools/r8/internal/OQ;->a(Lcom/android/tools/r8/internal/ML;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/rM;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/rM;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/by0;

    sget-object v3, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/by0;-><init>(Lcom/android/tools/r8/internal/rM;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/rQ;->a:Lcom/android/tools/r8/internal/pQ;

    if-eqz v0, :cond_2

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/ey0;->a(Lcom/android/tools/r8/internal/by0;Lcom/android/tools/r8/internal/pQ;)Lcom/android/tools/r8/internal/m90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m90;->c()Lcom/android/tools/r8/internal/n90;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/n90;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/uM;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/p50;

    move-result-object v0

    iget-object v2, v0, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    iget v1, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v2, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v1, v2, v0}, [I

    move-result-object v4

    iget v0, p0, Lcom/android/tools/r8/internal/PQ;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x30

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0

    :cond_2
    const-string v0, "function"

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Kotlin metadata is not correct and can not be written"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_4
    :goto_2
    throw v0

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    iget v2, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v2, v3, v0}, [I

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/PQ;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x30

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0
.end method
