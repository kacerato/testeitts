.class public final Lcom/android/tools/r8/internal/zw;
.super Lcom/android/tools/r8/internal/Bw;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/Cw;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/zw;->c:Lcom/android/tools/r8/internal/Cw;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Bw;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/Zs0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/zw;->c:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, v0, Lcom/android/tools/r8/internal/Dw;->a:Lcom/android/tools/r8/internal/tZ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Cw;->i:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v0

    sget-boolean v2, Lcom/android/tools/r8/internal/yw;->a:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v0

    sget-boolean v2, Lcom/android/tools/r8/internal/yw;->a:Z

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/zw;->c:Lcom/android/tools/r8/internal/Cw;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Dw;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/zw;->c:Lcom/android/tools/r8/internal/Cw;

    iget-object v4, v2, Lcom/android/tools/r8/internal/Dw;->a:Lcom/android/tools/r8/internal/tZ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    iget-object v2, v2, Lcom/android/tools/r8/internal/Dw;->c:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Bw;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v0

    sget-boolean v2, Lcom/android/tools/r8/internal/yw;->a:Z

    if-nez v2, :cond_b

    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v2

    if-nez v2, :cond_b

    if-ne v0, v1, :cond_a

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    :goto_4
    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    return-object v0
.end method
