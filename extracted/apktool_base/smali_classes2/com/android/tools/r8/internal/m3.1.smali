.class public final Lcom/android/tools/r8/internal/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j40;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/graph/O5;

.field public final synthetic c:Lcom/android/tools/r8/internal/n3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/n3;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/m3;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/internal/m3;->b:Lcom/android/tools/r8/graph/O5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/VY;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object v1, v0, Lcom/android/tools/r8/internal/n3;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/m3;->a:Lcom/android/tools/r8/internal/Hz;

    .line 2
    iget-object v3, p2, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0, v2}, Lcom/android/tools/r8/internal/F1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/VY;->a(Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/internal/VY;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object v1, v0, Lcom/android/tools/r8/internal/n3;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/m3;->a:Lcom/android/tools/r8/internal/Hz;

    .line 6
    iget-object v3, p2, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Y0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0, v2}, Lcom/android/tools/r8/internal/F1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object v1, v0, Lcom/android/tools/r8/internal/n3;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/m3;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/internal/m3;->b:Lcom/android/tools/r8/graph/O5;

    .line 9
    iget-object v4, p2, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 10
    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/android/tools/r8/internal/gE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/gE;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object v0, v0, Lcom/android/tools/r8/internal/n3;->g:Lcom/android/tools/r8/internal/u3;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/u3;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v0, Lcom/android/tools/r8/graph/S5;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/S5;-><init>(Lcom/android/tools/r8/graph/proto/j;)V

    .line 18
    iget-object p1, p0, Lcom/android/tools/r8/internal/m3;->c:Lcom/android/tools/r8/internal/n3;

    iget-object p1, p1, Lcom/android/tools/r8/internal/n3;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/S5;)V

    :cond_0
    return-void
.end method
