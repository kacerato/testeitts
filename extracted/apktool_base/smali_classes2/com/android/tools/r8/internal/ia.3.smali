.class public final Lcom/android/tools/r8/internal/ia;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/ia;->c:I

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xa9

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Invalid compilation of code with reachable jump subroutine RET instruction"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/hv;

    const-string p2, "Unexpected JSR/RET instruction"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Invalid compilation of code with reachable jump subroutine RET instruction"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Va;->a()V

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/Va;->e:Ljava/lang/StringBuilder;

    const-string v0, "ret "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/ia;->c:I

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Invalid compilation of code with reachable jump subroutine RET instruction"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string v0, "Invalid compilation of code with reachable jump subroutine RET instruction"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y()I
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Invalid compilation of code with reachable jump subroutine RET instruction"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method
