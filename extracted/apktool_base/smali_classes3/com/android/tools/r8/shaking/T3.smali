.class public Lcom/android/tools/r8/shaking/T3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/S3;

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/kU;

.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:Lcom/android/tools/r8/graph/L2;

.field public final f:Lcom/android/tools/r8/internal/p10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/internal/p10;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/shaking/S3;->c:Lcom/android/tools/r8/shaking/S3;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    .line 14
    iput-object p2, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    .line 15
    iput-object p3, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/kU;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/android/tools/r8/shaking/S3;->e:Lcom/android/tools/r8/shaking/S3;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    .line 29
    iput-object v1, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    sget-boolean v1, Lcom/android/tools/r8/internal/kU;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_1
    :goto_0
    iget-wide v1, p1, Lcom/android/tools/r8/internal/kU;->a:J

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 33
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->c()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    goto :goto_1

    .line 34
    :cond_2
    iget-wide v0, p1, Lcom/android/tools/r8/internal/kU;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-wide v0, p1, Lcom/android/tools/r8/internal/kU;->b:J

    cmp-long p1, v2, v0

    if-gtz p1, :cond_3

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    goto :goto_1

    .line 36
    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    .line 37
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/p10;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/shaking/S3;->d:Lcom/android/tools/r8/shaking/S3;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    .line 21
    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    .line 22
    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    .line 23
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/tools/r8/shaking/S3;->b:Lcom/android/tools/r8/shaking/S3;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/F1;
    .locals 3

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 p1, 0x2

    if-eq v1, p1, :cond_6

    const/4 p1, 0x3

    if-ne v1, p1, :cond_5

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-eqz p1, :cond_0

    .line 7
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    .line 11
    sget-boolean p2, Lcom/android/tools/r8/internal/kU;->c:Z

    if-nez p2, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_0
    iget-wide p1, p1, Lcom/android/tools/r8/internal/kU;->a:J

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object v1

    .line 16
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide v1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/x10;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/tools/r8/internal/x10;-><init>(JJ)V

    return-object v0

    .line 21
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object p1, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-object p1

    .line 25
    :cond_7
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 26
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance p2, Lcom/android/tools/r8/internal/Nm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Nm0;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object p2

    .line 30
    :cond_9
    sget p1, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    .line 31
    :cond_a
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    .line 32
    invoke-static {p1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result p1

    int-to-long p1, p1

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->e()Lcom/android/tools/r8/internal/n7;

    move-result-object v1

    .line 33
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/G1;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    return v0
.end method

.method public b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/graph/L2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/p10;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/internal/kU;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    return-object v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    sget-object v1, Lcom/android/tools/r8/shaking/S3;->b:Lcom/android/tools/r8/shaking/S3;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    sget-object v1, Lcom/android/tools/r8/shaking/S3;->c:Lcom/android/tools/r8/shaking/S3;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    sget-object v1, Lcom/android/tools/r8/shaking/S3;->d:Lcom/android/tools/r8/shaking/S3;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/T3;->a:Lcom/android/tools/r8/shaking/S3;

    sget-object v1, Lcom/android/tools/r8/shaking/S3;->e:Lcom/android/tools/r8/shaking/S3;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " return "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/T3;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_NONNULL_ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->f:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    goto :goto_0

    :cond_3
    const-string v1, "_NONNULL_"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/shaking/T3;->g:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/T3;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kU;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kU;->c()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/T3;->c:Lcom/android/tools/r8/internal/kU;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kU;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
