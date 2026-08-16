.class public final Lcom/android/tools/r8/ir/optimize/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Nv;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-static {p3, p2, v0}, Lcom/android/tools/r8/internal/Nv;->a(Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 10
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/X;->b:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->getAccessFlags()Lcom/android/tools/r8/graph/g;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 12
    invoke-static {p2, v0, p3, v1}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-static {p2, v0, p1, v1}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/g;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/ir/optimize/O;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/X;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->l()Lcom/android/tools/r8/graph/D3$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 5
    iget-object v1, p1, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p1, p1, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v1, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    .line 6
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/ir/optimize/X;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object p1

    return-object p1
.end method
