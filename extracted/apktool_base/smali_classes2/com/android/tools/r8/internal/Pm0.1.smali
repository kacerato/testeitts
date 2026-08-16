.class public abstract Lcom/android/tools/r8/internal/Pm0;
.super Lcom/android/tools/r8/internal/F1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/SD;


# static fields
.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
.end method

.method public bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Pm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/Pm0;->b:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 9
    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 10
    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/internal/G2;->a(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
.end method

.method public abstract i0()Z
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w()Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    return-object p0
.end method
