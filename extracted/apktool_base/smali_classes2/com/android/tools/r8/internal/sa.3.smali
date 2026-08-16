.class public Lcom/android/tools/r8/internal/sa;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/XX;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XX;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sa;->c:Lcom/android/tools/r8/internal/XX;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sa;->c:Lcom/android/tools/r8/internal/XX;

    sget-object v1, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc2

    return v0

    :cond_0
    const/16 v0, 0xc3

    return v0
.end method

.method public V()Lcom/android/tools/r8/internal/XX;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sa;->c:Lcom/android/tools/r8/internal/XX;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sa;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/sa;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/internal/sa;->c:Lcom/android/tools/r8/internal/XX;

    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 7
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/WX;

    invoke-direct {v0, p3, p2}, Lcom/android/tools/r8/internal/WX;-><init>(Lcom/android/tools/r8/internal/XX;Lcom/android/tools/r8/internal/xw0;)V

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
