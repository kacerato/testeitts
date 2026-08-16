.class public final Lcom/android/tools/r8/internal/NW;
.super Lcom/android/tools/r8/internal/IV;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/t40;

.field public final d:Lcom/android/tools/r8/internal/kK;

.field public final e:Lcom/android/tools/r8/graph/proto/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/t40;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/proto/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/IV;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/v2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/NW;->c:Lcom/android/tools/r8/internal/t40;

    iput-object p4, p0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    iput-object p5, p0, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/NW;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/NW;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/g3;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/R00;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IV;->a()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/Nu;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/K10;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/N7;

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-object p0
.end method
