.class public final Lcom/android/tools/r8/internal/Cd;
.super Lcom/android/tools/r8/internal/ge;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public final h:Ljava/util/ArrayList;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ge;-><init>(Lcom/android/tools/r8/internal/Cd;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cd;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cd;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cd;->m:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/tools/r8/internal/DX;
    .locals 6

    .line 18
    new-instance p4, Lcom/android/tools/r8/internal/QW;

    const/high16 v1, 0x90000

    move-object v0, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/QW;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cd;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p4
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/mu0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/mu0;-><init>(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cd;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->e:Ljava/util/List;

    return-object v0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cd;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->f:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/J2;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/J2;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cd;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->c:Ljava/util/List;

    return-object v0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Cd;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->d:Ljava/util/List;

    return-object v0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/TX;
    .locals 0

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/PX;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/PX;-><init>()V

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Uw;
    .locals 0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/tw;

    invoke-direct {p1, p5}, Lcom/android/tools/r8/internal/tw;-><init>(Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cd;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p6}, Lcom/android/tools/r8/internal/uw0;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/LD;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/LD;-><init>()V

    .line 15
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cd;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cd;->g:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->g:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/hc0;
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/gc0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/gc0;-><init>()V

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/Cd;->k:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cd;->k:Ljava/util/List;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Cd;->i:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->i:Ljava/util/List;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cd;->j:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/uw0;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cd;->j:Ljava/util/List;

    return-void
.end method
