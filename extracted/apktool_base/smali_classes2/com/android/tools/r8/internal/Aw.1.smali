.class public final Lcom/android/tools/r8/internal/Aw;
.super Lcom/android/tools/r8/internal/Bw;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/W5;

.field public final synthetic d:Lcom/android/tools/r8/internal/Cw;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Cw;Lcom/android/tools/r8/internal/W5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Aw;->d:Lcom/android/tools/r8/internal/Cw;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Bw;-><init>(Lcom/android/tools/r8/internal/Cw;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Aw;->c:Lcom/android/tools/r8/internal/W5;

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aw;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bw;->a()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Zs0;->a(Z)Lcom/android/tools/r8/internal/Zs0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aw;->d:Lcom/android/tools/r8/internal/Cw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Aw;->c:Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Dw;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/Dw;->f:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Aw;->c:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Bw;->a(Lcom/android/tools/r8/internal/W5;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Aw;->c:Lcom/android/tools/r8/internal/W5;

    iget-object v0, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Bw;->a(Lcom/android/tools/r8/internal/zE;)I

    move-result v0

    sget-boolean v1, Lcom/android/tools/r8/internal/Aw;->e:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/android/tools/r8/internal/yw;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

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
.end method
