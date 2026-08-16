.class public final Lcom/android/tools/r8/internal/js0;
.super Lcom/android/tools/r8/internal/is0;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final synthetic i:I

.field public final synthetic j:Lcom/android/tools/r8/internal/ls0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/ls0;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/js0;->j:Lcom/android/tools/r8/internal/ls0;

    iput p4, p0, Lcom/android/tools/r8/internal/js0;->i:I

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/is0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/is0;)V
    .locals 10

    .line 1
    sget-boolean p2, Lcom/android/tools/r8/internal/js0;->k:Z

    const-wide/16 v0, 0x0

    if-nez p2, :cond_1

    .line 2
    iget-wide v2, p0, Lcom/android/tools/r8/internal/is0;->d:J

    cmp-long p2, v2, v0

    if-ltz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/is0;->b(I)V

    .line 5
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/js0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 6
    iget v2, p0, Lcom/android/tools/r8/internal/js0;->i:I

    if-gtz v2, :cond_2

    .line 7
    const-string v2, " (unknown thread count)"

    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/js0;->j:Lcom/android/tools/r8/internal/ls0;

    iget-object v4, v3, Lcom/android/tools/r8/internal/ls0;->a:Lcom/android/tools/r8/internal/is0;

    .line 9
    iget-wide v4, v4, Lcom/android/tools/r8/internal/is0;->d:J

    .line 10
    iget-wide v6, p0, Lcom/android/tools/r8/internal/is0;->d:J

    int-to-long v8, v2

    .line 11
    div-long/2addr v6, v8

    .line 12
    iget v3, v3, Lcom/android/tools/r8/internal/ls0;->c:I

    .line 13
    invoke-static {v6, v7, v4, v5}, Lcom/android/tools/r8/internal/ns0;->a(JJ)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", tasks: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", threads: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", utilization: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p2, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :goto_1
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/is0;->b:Z

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/is0;->a(I)V

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/bg1;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/internal/bg1;-><init>(Lcom/android/tools/r8/internal/js0;I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 18
    iget-object v2, p0, Lcom/android/tools/r8/internal/js0;->j:Lcom/android/tools/r8/internal/ls0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/android/tools/r8/internal/is0;->d:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/is0;->b(I)V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/js0;->j:Lcom/android/tools/r8/internal/ls0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/is0;->a(Lcom/android/tools/r8/internal/is0;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLOWEST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/js0;->j:Lcom/android/tools/r8/internal/ls0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/is0;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/cg1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/cg1;-><init>(Lcom/android/tools/r8/internal/js0;I)V

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_4
    return-void
.end method

.method public final synthetic a(ILjava/lang/String;Lcom/android/tools/r8/internal/is0;)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 22
    invoke-virtual {p3, p1, p0}, Lcom/android/tools/r8/internal/is0;->a(ILcom/android/tools/r8/internal/is0;)V

    return-void
.end method

.method public final synthetic b(ILjava/lang/String;Lcom/android/tools/r8/internal/is0;)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1, p0}, Lcom/android/tools/r8/internal/is0;->a(ILcom/android/tools/r8/internal/is0;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/is0;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MERGE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
