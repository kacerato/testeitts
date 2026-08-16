.class public final Lcom/android/tools/r8/internal/Cn;
.super Lcom/android/tools/r8/internal/Fn;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/internal/Np;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Fn;-><init>(Lcom/android/tools/r8/internal/zE;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Kn;)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fn;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Np;->e(I)V

    .line 2
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;Ljava/util/ArrayList;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Fn;Lcom/android/tools/r8/internal/Kn;)Z
    .locals 0

    .line 4
    instance-of p2, p1, Lcom/android/tools/r8/internal/Cn;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    check-cast p1, Lcom/android/tools/r8/internal/Cn;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Np;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cn;->e:Lcom/android/tools/r8/internal/Np;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    return v0
.end method
