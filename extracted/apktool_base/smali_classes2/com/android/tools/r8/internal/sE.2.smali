.class public abstract Lcom/android/tools/r8/internal/sE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/xw0;

.field public b:Lcom/android/tools/r8/internal/B60;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/sE;
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;
    .locals 1

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/sE;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sE;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz p2, :cond_2

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sE;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sE;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, p2, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sE;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
