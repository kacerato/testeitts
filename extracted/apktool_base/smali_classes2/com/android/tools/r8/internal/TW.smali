.class public abstract Lcom/android/tools/r8/internal/TW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/KV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/KV;"
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


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
.method public abstract A()Z
.end method

.method public abstract B()Lcom/android/tools/r8/internal/t40;
.end method

.method public abstract C()Z
.end method

.method public abstract D()Z
.end method

.method public abstract E()Z
.end method

.method public abstract F()Z
.end method

.method public abstract G()Z
.end method

.method public abstract H()Z
.end method

.method public abstract a(Lcom/android/tools/r8/internal/QJ;)Lcom/android/tools/r8/internal/fE;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/VJ;)Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lcom/android/tools/r8/internal/r;
.end method

.method public abstract i()Lcom/android/tools/r8/internal/F1;
.end method

.method public abstract j()Lcom/android/tools/r8/internal/F8;
.end method

.method public abstract k()Lcom/android/tools/r8/internal/S7;
.end method

.method public abstract l()Lcom/android/tools/r8/internal/Zc;
.end method

.method public abstract m()Lcom/android/tools/r8/internal/fE;
.end method

.method public abstract n()Lcom/android/tools/r8/internal/xt;
.end method

.method public abstract o()Lcom/android/tools/r8/internal/Au;
.end method

.method public abstract p()Ljava/util/Set;
.end method

.method public abstract q()I
.end method

.method public abstract r()Ljava/util/BitSet;
.end method

.method public abstract s()Ljava/util/BitSet;
.end method

.method public abstract t()I
.end method

.method public abstract u()Lcom/android/tools/r8/internal/Xl0;
.end method

.method public abstract v()Ljava/util/BitSet;
.end method

.method public abstract w()Z
.end method

.method public final x()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/TW;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/TW;->v()Ljava/util/BitSet;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public abstract y()Z
.end method

.method public abstract z()Z
.end method
