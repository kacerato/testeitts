.class public final Lcom/android/tools/r8/internal/Nz;
.super Lcom/android/tools/r8/internal/wl0;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/wl0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vt0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Nz;->a:Lcom/android/tools/r8/internal/vt0;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
