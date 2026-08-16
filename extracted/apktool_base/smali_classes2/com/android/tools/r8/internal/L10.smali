.class public final Lcom/android/tools/r8/internal/L10;
.super Lcom/android/tools/r8/graph/n0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/internal/M10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/M10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/L10;->f:Lcom/android/tools/r8/internal/M10;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2, p3, p1}, Lcom/android/tools/r8/graph/n0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/L10;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/L10;->f:Lcom/android/tools/r8/internal/M10;

    iget-object v1, v0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/internal/L10;->f:Lcom/android/tools/r8/internal/M10;

    iget-object v0, v0, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    .line 6
    iget-object v5, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 7
    sget-object v6, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v2, p1

    move-object v4, p2

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 10
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 11
    sget-boolean p2, Lcom/android/tools/r8/internal/L10;->g:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/L10;->f:Lcom/android/tools/r8/internal/M10;

    .line 13
    iget-object p2, p2, Lcom/android/tools/r8/internal/M10;->b:Lcom/android/tools/r8/internal/K10;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/lZ;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/L10;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/L10;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/L10;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/L10;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 1
    return-void
.end method
