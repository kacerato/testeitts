.class public Lcom/android/tools/r8/graph/R2$l;
.super Lcom/android/tools/r8/graph/R2$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/R2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/R2$m<",
        "Lcom/android/tools/r8/graph/M2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/graph/R2$m;-><init>(Lcom/android/tools/r8/graph/d4;)V

    return-void
.end method


# virtual methods
.method public final E0()Lcom/android/tools/r8/graph/R2$l;
    .locals 0

    return-object p0
.end method

.method public final G0()Lcom/android/tools/r8/graph/V2;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V2;->m:Lcom/android/tools/r8/graph/V2;

    return-object v0
.end method

.method public final S0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic V0()V
    .locals 0

    return-void
.end method

.method public W0()Lcom/android/tools/r8/graph/d4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/G1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/R2;->E0()Lcom/android/tools/r8/graph/R2$l;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/pf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/R2$m;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/rA;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
