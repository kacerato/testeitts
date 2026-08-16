.class public final Lcom/android/tools/r8/graph/p4;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/E0;

.field public final d:Lcom/android/tools/r8/graph/r4;

.field public final e:Lcom/android/tools/r8/graph/h4;

.field public final f:Z

.field public final g:Lcom/android/tools/r8/origin/Origin;

.field public final h:Lcom/android/tools/r8/graph/q4;

.field public i:Lcom/android/tools/r8/internal/Xc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/r4;Lcom/android/tools/r8/graph/h4;ZLcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/q4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/p4;->c:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/p4;->d:Lcom/android/tools/r8/graph/r4;

    iput-object p3, p0, Lcom/android/tools/r8/graph/p4;->e:Lcom/android/tools/r8/graph/h4;

    iput-boolean p4, p0, Lcom/android/tools/r8/graph/p4;->f:Z

    iput-object p5, p0, Lcom/android/tools/r8/graph/p4;->g:Lcom/android/tools/r8/origin/Origin;

    iput-object p6, p0, Lcom/android/tools/r8/graph/p4;->h:Lcom/android/tools/r8/graph/q4;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 10

    invoke-static {p1, p2}, Lcom/android/tools/r8/graph/o4;->a(ILjava/lang/String;)Lcom/android/tools/r8/graph/L4;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/graph/p4;->d:Lcom/android/tools/r8/graph/r4;

    invoke-virtual {p4, p2, p3}, Lcom/android/tools/r8/graph/r4;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/android/tools/r8/graph/u4;

    if-eqz v3, :cond_1

    iget-object p4, p0, Lcom/android/tools/r8/graph/p4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v0, p0, Lcom/android/tools/r8/graph/p4;->c:Lcom/android/tools/r8/graph/E0;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p4, v0, p2, p3}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    new-instance p4, Lcom/android/tools/r8/graph/t4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/p4;->e:Lcom/android/tools/r8/graph/h4;

    iget-object v4, p0, Lcom/android/tools/r8/graph/p4;->g:Lcom/android/tools/r8/origin/Origin;

    iget-object v5, p0, Lcom/android/tools/r8/graph/p4;->h:Lcom/android/tools/r8/graph/q4;

    new-instance v6, Lcom/android/tools/r8/graph/pf;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/graph/pf;-><init>(Lcom/android/tools/r8/graph/p4;)V

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/graph/t4;-><init>(Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u4;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/q4;Ljava/util/function/Supplier;)V

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/p4;->f:Z

    if-nez v0, :cond_0

    return-object p4

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/OK;

    move-object v4, v0

    move-object v5, p4

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/internal/OK;-><init>(Lcom/android/tools/r8/graph/t4;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/x1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/p4;->i:Lcom/android/tools/r8/internal/Xc0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Xc0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Xc0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/p4;->i:Lcom/android/tools/r8/internal/Xc0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/p4;->i:Lcom/android/tools/r8/internal/Xc0;

    return-object v0
.end method
