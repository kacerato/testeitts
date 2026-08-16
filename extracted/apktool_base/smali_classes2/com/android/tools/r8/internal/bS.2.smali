.class public final Lcom/android/tools/r8/internal/bS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Lcom/android/tools/r8/internal/QC;

.field public final c:Lcom/android/tools/r8/internal/QC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bS;->a:Lcom/android/tools/r8/internal/nC;

    sget p1, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance p1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$b;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$b;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$b;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->y4:Lcom/android/tools/r8/graph/E1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->y4:Lcom/android/tools/r8/graph/E1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->y4:Lcom/android/tools/r8/graph/E1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->z4:Lcom/android/tools/r8/graph/F1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/F1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->z4:Lcom/android/tools/r8/graph/F1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/F1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->z4:Lcom/android/tools/r8/graph/F1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/F1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->L4:Lcom/android/tools/r8/graph/I1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I1;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->A4:Lcom/android/tools/r8/graph/K1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/K1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->A4:Lcom/android/tools/r8/graph/K1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/K1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->A4:Lcom/android/tools/r8/graph/K1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/K1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/N1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/N1;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->B4:Lcom/android/tools/r8/graph/N1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/N1;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->C4:Lcom/android/tools/r8/graph/f2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/f2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->C4:Lcom/android/tools/r8/graph/f2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/f2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->C4:Lcom/android/tools/r8/graph/f2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/f2;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/h2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->H4:Lcom/android/tools/r8/graph/n2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/n2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->I4:Lcom/android/tools/r8/graph/p2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/p2;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->I4:Lcom/android/tools/r8/graph/p2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/p2;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->I4:Lcom/android/tools/r8/graph/p2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/p2;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->r:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->x:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->B:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->C:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    iget-object v1, v0, Lcom/android/tools/r8/graph/u1;->H3:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bS;->b:Lcom/android/tools/r8/internal/QC;

    iget-object p1, v0, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v0, p1, Lcom/android/tools/r8/graph/u1$c;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1$c;->e:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->h:Lcom/android/tools/r8/graph/A2;

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {v0, v0, p1}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/bS;->c:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/nC;
    .locals 3

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->y4:Lcom/android/tools/r8/graph/E1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E1;->b:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/F51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/F51;-><init>()V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/G51;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/G51;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->e:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/H51;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/H51;-><init>()V

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$d;->A:Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/internal/I51;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/I51;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    move-result-object p0

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v1, v0, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/J51;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/J51;-><init>(Lcom/android/tools/r8/graph/q2;)V

    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v0, p1, Lcom/android/tools/r8/graph/q2;->u:Lcom/android/tools/r8/internal/QC;

    .line 24
    new-instance v1, Lcom/android/tools/r8/internal/J51;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/J51;-><init>(Lcom/android/tools/r8/graph/q2;)V

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kC;->a()Lcom/android/tools/r8/internal/nC;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/PK;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 0

    .line 2
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/PK;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->O()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/bS;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/bS;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bS;->a:Lcom/android/tools/r8/internal/nC;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/h6;->a()Ljava/util/function/BiPredicate;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 6
    :cond_0
    check-cast v1, Ljava/util/function/BiPredicate;

    .line 7
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/A4;)Z
    .locals 1

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/bS;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/bS;->c:Lcom/android/tools/r8/internal/QC;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
