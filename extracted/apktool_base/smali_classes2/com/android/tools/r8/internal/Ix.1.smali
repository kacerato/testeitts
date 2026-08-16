.class public final Lcom/android/tools/r8/internal/Ix;
.super Lcom/android/tools/r8/internal/Jx;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/graph/F5;

.field public f:Lcom/android/tools/r8/internal/Iw0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Iw0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jx;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Ix;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Iw0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    return-void
.end method

.method public final d()Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ix;->f:Lcom/android/tools/r8/internal/Iw0;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ix;->e:Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
