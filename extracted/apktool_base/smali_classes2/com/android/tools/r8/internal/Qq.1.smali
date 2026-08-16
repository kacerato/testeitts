.class public Lcom/android/tools/r8/internal/Qq;
.super Lcom/android/tools/r8/internal/kp;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/kp;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/kp;-><init>(Lcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    iget v1, p0, Lcom/android/tools/r8/internal/kp;->f:I

    iget v2, p0, Lcom/android/tools/r8/internal/kp;->g:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/Mw0;II)V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "MoveWide16"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "move-wide/16"

    return-object v0
.end method
