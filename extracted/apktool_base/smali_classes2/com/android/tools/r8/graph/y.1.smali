.class public Lcom/android/tools/r8/graph/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;
.implements Lcom/android/tools/r8/shaking/i2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/tools/r8/graph/h;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/graph/d1;",
        "Lcom/android/tools/r8/shaking/i2;"
    }
.end annotation


# static fields
.field public static final synthetic W:Z = true


# instance fields
.field public A:Lcom/android/tools/r8/internal/l3;

.field public final B:Lcom/android/tools/r8/internal/XR;

.field public final C:Lcom/android/tools/r8/internal/Oa0;

.field public D:Z

.field public E:Ljava/util/function/Predicate;

.field public F:Lcom/android/tools/r8/internal/wD;

.field public G:Lcom/android/tools/r8/internal/CA;

.field public H:Lcom/android/tools/r8/internal/nx0;

.field public I:Lcom/android/tools/r8/internal/nu;

.field public J:Lcom/android/tools/r8/internal/i40;

.field public K:Ljava/util/Set;

.field public final L:Ljava/util/IdentityHashMap;

.field public final M:Ljava/util/IdentityHashMap;

.field public N:Lcom/android/tools/r8/naming/S0;

.field public final O:Lcom/android/tools/r8/internal/yb0;

.field public P:Ljava/util/Set;

.field public final Q:Lcom/android/tools/r8/internal/Hf;

.field public final R:Ljava/lang/Thread;

.field public final S:Lcom/android/tools/r8/androidapi/a;

.field public final T:Lcom/android/tools/r8/androidapi/f;

.field public U:Z

.field public final V:I

.field public a:Lcom/android/tools/r8/graph/h;

.field public b:Lcom/android/tools/r8/graph/j;

.field public c:Lcom/android/tools/r8/graph/l;

.field public d:Lcom/android/tools/r8/internal/l4;

.field public e:Lcom/android/tools/r8/shaking/l;

.field public final f:Lcom/android/tools/r8/internal/et;

.field public g:Lcom/android/tools/r8/internal/Hz;

.field public h:Lcom/android/tools/r8/internal/Hz;

.field public i:Lcom/android/tools/r8/internal/Hz;

.field public j:Lcom/android/tools/r8/internal/uD;

.field public k:Lcom/android/tools/r8/internal/Hz;

.field public l:Lcom/android/tools/r8/naming/r0;

.field public m:Lcom/android/tools/r8/shaking/n3;

.field public n:Lcom/android/tools/r8/shaking/D4;

.field public o:Lcom/android/tools/r8/internal/rX;

.field public p:Lcom/android/tools/r8/shaking/B4;

.field public q:Lcom/android/tools/r8/internal/qo0;

.field public r:Lcom/android/tools/r8/shaking/y1;

.field public s:Lcom/android/tools/r8/internal/Mf;

.field public final t:Lcom/android/tools/r8/internal/G1;

.field public final u:Lcom/android/tools/r8/internal/H1;

.field public final v:Lcom/android/tools/r8/internal/I1;

.field public final w:Lcom/android/tools/r8/internal/J1;

.field public final x:Lcom/android/tools/r8/internal/VD;

.field public final y:Lcom/android/tools/r8/internal/cm0;

.field public final z:Lcom/android/tools/r8/internal/bS;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/k;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/k;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k;->a()Lcom/android/tools/r8/shaking/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->h:Lcom/android/tools/r8/internal/Hz;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->i:Lcom/android/tools/r8/internal/Hz;

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    sget-object v0, Lcom/android/tools/r8/internal/rX;->b:Lcom/android/tools/r8/internal/rX;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->o:Lcom/android/tools/r8/internal/rX;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->s:Lcom/android/tools/r8/internal/Mf;

    new-instance v1, Lcom/android/tools/r8/internal/VD;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VD;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/graph/y;->x:Lcom/android/tools/r8/internal/VD;

    new-instance v1, Lcom/android/tools/r8/internal/cm0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/cm0;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/graph/y;->y:Lcom/android/tools/r8/internal/cm0;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/graph/y;->D:Z

    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->E:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/tools/r8/internal/CA;

    new-instance v3, Lcom/android/tools/r8/internal/Jt;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/Jt;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/CA;-><init>(Lcom/android/tools/r8/internal/o6;)V

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->I:Lcom/android/tools/r8/internal/nu;

    sget-boolean v2, Lcom/android/tools/r8/internal/i40;->a:Z

    sget-object v2, Lcom/android/tools/r8/internal/Ij;->b:Lcom/android/tools/r8/internal/Ij;

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    sget v2, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v2, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->L:Ljava/util/IdentityHashMap;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->M:Ljava/util/IdentityHashMap;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->P:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/tools/r8/graph/y;->R:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/android/tools/r8/graph/y;->U:Z

    sget-boolean v2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    new-instance p1, Lcom/android/tools/r8/graph/Nh;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Nh;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string v2, "Compilation context"

    invoke-virtual {p5, v2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Hf;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->Q:Lcom/android/tools/r8/internal/Hf;

    iput p4, p0, Lcom/android/tools/r8/graph/y;->V:I

    new-instance p1, Lcom/android/tools/r8/internal/G1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/G1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    new-instance p1, Lcom/android/tools/r8/internal/H1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/H1;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->u:Lcom/android/tools/r8/internal/H1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/tools/r8/internal/I1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/android/tools/r8/internal/I1;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->v:Lcom/android/tools/r8/internal/I1;

    new-instance p1, Lcom/android/tools/r8/internal/J1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/android/tools/r8/internal/J1;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->v:Lcom/android/tools/r8/internal/I1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->w:Lcom/android/tools/r8/internal/J1;

    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    iput-object p3, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    new-instance p1, Lcom/android/tools/r8/graph/Oh;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Oh;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string p2, "Dont warn config"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/et;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    new-instance p1, Lcom/android/tools/r8/graph/Ph;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/Ph;-><init>()V

    const-string p2, "Init class lens"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/uD;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->j:Lcom/android/tools/r8/internal/uD;

    const-string p1, "Create argument propagator"

    invoke-virtual {p5, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p1

    iget-object p2, p1, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/android/tools/r8/internal/nJ$b;->e:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/nJ$b;->a:Z

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    new-instance p1, Lcom/android/tools/r8/internal/l3;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/l3;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    goto :goto_3

    :cond_5
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/android/tools/r8/internal/Wf0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/yb0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    :cond_6
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance p1, Lcom/android/tools/r8/graph/Qh;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Qh;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string p2, "Library side-effects"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/bS;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->z:Lcom/android/tools/r8/internal/bS;

    new-instance p1, Lcom/android/tools/r8/graph/Rh;

    invoke-direct {p1, p0, p5}, Lcom/android/tools/r8/graph/Rh;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    const-string p2, "Library optimizer"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/XR;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    new-instance p1, Lcom/android/tools/r8/graph/Sh;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Sh;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string p2, "Proto shrinker"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Oa0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    new-instance p1, Lcom/android/tools/r8/graph/Th;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Th;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string p2, "ApiLevel compute"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/androidapi/a;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    new-instance p1, Lcom/android/tools/r8/graph/Fh;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/graph/Fh;-><init>(Lcom/android/tools/r8/graph/y;)V

    const-string p2, "ApiLevel computed"

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/androidapi/f;

    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/tools/r8/graph/h;",
            ">(TT;)",
            "Lcom/android/tools/r8/graph/y<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/l4;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v3

    const/4 v4, 0x2

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    return-object v6
.end method

.method public static a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/tools/r8/graph/h;",
            ">(TT;",
            "Lcom/android/tools/r8/internal/ns0;",
            ")",
            "Lcom/android/tools/r8/graph/y<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v6, Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/l4;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/qo0;

    move-result-object v3

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    return-object v6
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/x0;",
            ")",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/graph/j;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/y;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/y;
    .locals 8

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    .line 12
    sget-boolean v1, Lcom/android/tools/r8/internal/Zd;->c:Z

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/internal/pb0;->c:Lcom/android/tools/r8/internal/Zd;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Qv;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/Zd;

    move-result-object v0

    .line 20
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v1

    .line 21
    invoke-static {p0, v0, p1, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/j;

    move-result-object v3

    .line 22
    new-instance p1, Lcom/android/tools/r8/graph/y;

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/l4;

    move-result-object v4

    .line 24
    invoke-static {p0}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/qo0;

    move-result-object v5

    const/4 v6, 0x1

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v7

    move-object v2, p1

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Hz;
    .locals 3

    .line 157
    const-string v0, "Compute new member rebinding lens"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 158
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 159
    instance-of v1, p2, Lcom/android/tools/r8/internal/XV;

    if-nez v1, :cond_1

    .line 160
    instance-of v1, p2, Lcom/android/tools/r8/internal/TV;

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Lcom/android/tools/r8/graph/Eh;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Eh;-><init>()V

    .line 162
    iget-object p2, p2, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 163
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 164
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hz;->c()Lcom/android/tools/r8/internal/TV;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 167
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/android/tools/r8/internal/TV;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/TV;

    move-result-object v0

    .line 168
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->h()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    .line 187
    iget-object p1, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 188
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 131
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 133
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/concurrent/ExecutorService;)I

    move-result v4

    const-string v5, "Rewrite AppView concurrently"

    move-object/from16 v6, p2

    invoke-virtual {v6, v4, v5}, Lcom/android/tools/r8/internal/ns0;->a(ILjava/lang/String;)Lcom/android/tools/r8/internal/ls0;

    move-result-object v4

    const/4 v5, 0x0

    .line 135
    iput-object v5, v4, Lcom/android/tools/r8/internal/ls0;->d:Lcom/android/tools/r8/internal/is0;

    .line 136
    new-instance v6, Lcom/android/tools/r8/graph/p;

    move-object/from16 v7, p3

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/android/tools/r8/graph/p;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v7, Lcom/android/tools/r8/graph/q;

    invoke-direct {v7, v0, v1}, Lcom/android/tools/r8/graph/q;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v8, Lcom/android/tools/r8/graph/r;

    invoke-direct {v8, v0, v1}, Lcom/android/tools/r8/graph/r;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v9, Lcom/android/tools/r8/graph/s;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/tools/r8/graph/s;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v10, Lcom/android/tools/r8/graph/t;

    invoke-direct {v10, v0, v1}, Lcom/android/tools/r8/graph/t;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v11, Lcom/android/tools/r8/graph/u;

    invoke-direct {v11, v0, v1}, Lcom/android/tools/r8/graph/u;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v12, Lcom/android/tools/r8/graph/v;

    invoke-direct {v12, v0, v1}, Lcom/android/tools/r8/graph/v;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v13, Lcom/android/tools/r8/graph/w;

    invoke-direct {v13, v0, v1}, Lcom/android/tools/r8/graph/w;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v14, Lcom/android/tools/r8/graph/x;

    invoke-direct {v14, v0, v1}, Lcom/android/tools/r8/graph/x;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v15, Lcom/android/tools/r8/graph/m;

    invoke-direct {v15, v0, v1}, Lcom/android/tools/r8/graph/m;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V

    new-instance v5, Lcom/android/tools/r8/graph/n;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/tools/r8/graph/n;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    new-instance v2, Lcom/android/tools/r8/graph/o;

    move-object/from16 v16, v4

    move-object/from16 v4, p5

    invoke-direct {v2, v0, v1, v4}, Lcom/android/tools/r8/graph/o;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    const/16 v0, 0xc

    new-array v1, v0, [Lcom/android/tools/r8/internal/Ir0;

    const/4 v4, 0x0

    aput-object v6, v1, v4

    const/4 v6, 0x1

    aput-object v7, v1, v6

    const/4 v7, 0x2

    aput-object v8, v1, v7

    const/4 v7, 0x3

    aput-object v9, v1, v7

    const/4 v7, 0x4

    aput-object v10, v1, v7

    const/4 v7, 0x5

    aput-object v11, v1, v7

    const/4 v7, 0x6

    aput-object v12, v1, v7

    const/4 v7, 0x7

    aput-object v13, v1, v7

    const/16 v7, 0x8

    aput-object v14, v1, v7

    const/16 v7, 0x9

    aput-object v15, v1, v7

    const/16 v7, 0xa

    aput-object v5, v1, v7

    const/16 v5, 0xb

    aput-object v2, v1, v5

    .line 137
    new-instance v2, Lcom/android/tools/r8/internal/xr0;

    .line 138
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v5

    move-object/from16 v7, p0

    invoke-direct {v2, v5, v7, v0}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    move-object/from16 v5, v16

    .line 139
    instance-of v7, v5, Lcom/android/tools/r8/internal/fs0;

    if-eqz v7, :cond_2

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_1

    .line 140
    aget-object v5, v1, v3

    .line 141
    invoke-interface {v5}, Lcom/android/tools/r8/internal/Ir0;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    invoke-static {v5, v2}, Lcom/android/tools/r8/internal/Jr0;->a(Lcom/android/tools/r8/internal/Ir0;Lcom/android/tools/r8/internal/xr0;)V

    :cond_0
    add-int/2addr v3, v6

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 143
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 144
    :cond_2
    new-array v7, v0, [Lcom/android/tools/r8/internal/ns0;

    .line 145
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v8

    sget-boolean v9, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 146
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move v8, v4

    move v9, v8

    :goto_1
    if-ge v8, v0, :cond_4

    .line 148
    aget-object v10, v1, v8

    .line 149
    invoke-interface {v10}, Lcom/android/tools/r8/internal/Ir0;->b()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v11, v9, 0x1

    .line 150
    invoke-static {v3, v10, v9, v2, v7}, Lcom/android/tools/r8/internal/Jr0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/Ir0;ILcom/android/tools/r8/internal/xr0;Ljava/util/List;)V

    move v9, v11

    :cond_3
    add-int/2addr v8, v6

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 151
    invoke-virtual {v2, v8}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    .line 152
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/ls0;->a(Ljava/util/Collection;)V

    .line 153
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ls0;->a()V

    :goto_2
    if-ge v4, v0, :cond_6

    .line 154
    aget-object v2, v1, v4

    .line 155
    invoke-interface {v2}, Lcom/android/tools/r8/internal/Ir0;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 156
    invoke-interface {v2}, Lcom/android/tools/r8/internal/Ir0;->a()V

    :cond_5
    add-int/2addr v4, v6

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/tools/r8/graph/Lh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Lh;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/tools/r8/graph/y;->c(Lcom/android/tools/r8/graph/H5;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 10

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_3
    :goto_1
    const-string v1, "Rewrite AppView"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 33
    invoke-virtual {p1, p4}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result v1

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 34
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    instance-of v1, p4, Lcom/android/tools/r8/internal/xA;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 36
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_b

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-boolean v1, Lcom/android/tools/r8/graph/g3;->m:Z

    if-nez v1, :cond_a

    .line 39
    iget-object v0, v0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    .line 40
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 42
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    .line 44
    invoke-virtual {p4, v2, v1}, Lcom/android/tools/r8/internal/R00;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    if-eq v2, v1, :cond_6

    .line 46
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 47
    :cond_8
    sget-boolean v3, Lcom/android/tools/r8/graph/g3;->m:Z

    if-nez v3, :cond_6

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-eq v1, v2, :cond_6

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/graph/g3;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "The lens and app is inconsistent"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 48
    :cond_a
    sget-boolean v0, Lcom/android/tools/r8/graph/g3;->m:Z

    if-nez v0, :cond_b

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g3;->l()V

    :cond_b
    move-object v0, p4

    .line 49
    :goto_4
    iget-object v1, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    if-eq v1, p5, :cond_10

    .line 50
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_5
    if-nez v0, :cond_f

    .line 51
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    if-eq v1, v0, :cond_e

    goto :goto_6

    .line 52
    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 53
    :cond_f
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    goto :goto_4

    .line 54
    :cond_10
    invoke-static {p1, p5, v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    .line 55
    new-instance v9, Lcom/android/tools/r8/graph/Gh;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/Gh;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    .line 56
    iget-object p0, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 57
    iput-object v1, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 58
    invoke-interface {v9}, Lcom/android/tools/r8/internal/Sr0;->a()V

    .line 59
    iput-object p0, v0, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 60
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 5

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p0

    new-instance v4, Lcom/android/tools/r8/graph/Kh;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/graph/Kh;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 13
    invoke-virtual {v0, v3, p0, v4}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V

    return v1
.end method


# virtual methods
.method public final A()Lcom/android/tools/r8/internal/Oa0;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/La0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iget-object v3, v1, Lcom/android/tools/r8/internal/La0;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v4, "Ignoring -shrinkunusedprotofields since the protobuf-lite runtime is missing"

    invoke-direct {v3, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$n;->a:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$n;->b:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$n;->c:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$n;->d:Z

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ$n;->e:Z

    return-object v2

    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/Oa0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Oa0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/La0;)V

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final synthetic B()Lcom/android/tools/r8/androidapi/a;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/androidapi/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic C()Lcom/android/tools/r8/androidapi/f;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    return-object v0
.end method

.method public final D()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/o3;->d()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/naming/S0;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/naming/S0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->N:Lcom/android/tools/r8/naming/S0;

    :cond_0
    return-void
.end method

.method public E()Lcom/android/tools/r8/internal/nJ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->j()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    return-object v0
.end method

.method public final F()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    return-void
.end method

.method public G()Lcom/android/tools/r8/shaking/D4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->n:Lcom/android/tools/r8/shaking/D4;

    return-object v0
.end method

.method public H()Lcom/android/tools/r8/internal/nJ$p;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    return-object v0
.end method

.method public final I()Lcom/android/tools/r8/internal/nu;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->I:Lcom/android/tools/r8/internal/nu;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/nu;

    sget-object v1, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/nu;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    return-object v0
.end method

.method public final J()V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->I:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lcom/android/tools/r8/internal/nu;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    sget-boolean v2, Lcom/android/tools/r8/graph/y;->W:Z

    const-string v3, "Enum "

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been unboxed but is still in the program."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has been unboxed but was not pruned."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Mh;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Mh;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final L()Lcom/android/tools/r8/graph/y;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M()Lcom/android/tools/r8/graph/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/graph/y<",
            "Lcom/android/tools/r8/shaking/i;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final N()Lcom/android/tools/r8/graph/y;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/XR;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/XR;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/XR;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1

    :cond_0
    if-eq p1, p2, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 74
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;
    .locals 4

    .line 44
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Hh;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/graph/Hh;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V

    new-instance v2, Lcom/android/tools/r8/graph/Ih;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/graph/Ih;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V

    new-instance v3, Lcom/android/tools/r8/graph/Jh;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/graph/Jh;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/J2;->a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/t1;

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/shaking/t1;
    .locals 0

    .line 49
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/t1;
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/t1;
    .locals 0

    .line 48
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/Oa0;->e:Lcom/android/tools/r8/internal/bz;

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O5;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-boolean p2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p2

    .line 85
    iget-object p1, p1, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    const-string v0, "Prune AppView"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 88
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/i;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    goto :goto_1

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/j;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 95
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    if-eqz p2, :cond_5

    .line 96
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/l;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/l;)V

    .line 97
    :cond_5
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 98
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;

    move-result-object p2

    .line 99
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 100
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 101
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/shaking/l;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/l;

    move-result-object p2

    .line 102
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    .line 103
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    if-eqz p2, :cond_a

    .line 104
    const-string v0, "Prune ProguardCompatibilityActions"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 105
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 106
    iget-object p2, p2, Lcom/android/tools/r8/shaking/n3;->a:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 107
    iget-object v2, p1, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 108
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_7
    new-instance p2, Lcom/android/tools/r8/shaking/n3;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/shaking/n3;-><init>(Ljava/util/Set;)V

    .line 111
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 112
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 113
    :cond_9
    :goto_3
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    .line 114
    :cond_a
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->n:Lcom/android/tools/r8/shaking/D4;

    if-eqz p2, :cond_b

    .line 115
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)V

    .line 116
    :cond_b
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 117
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    .line 118
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/qo0;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/qo0;

    move-result-object p2

    .line 119
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 120
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    if-eqz p2, :cond_c

    .line 121
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/shaking/B4;->b(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/B4;

    move-result-object p2

    .line 122
    iput-object p2, p0, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 123
    :cond_c
    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    .line 124
    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/i40;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/i40;)V

    .line 126
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/l;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/CA;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    .line 57
    iget-object v0, v0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    .line 58
    invoke-interface {v0}, Lcom/android/tools/r8/internal/j6;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 60
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->z:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/graph/g3;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 128
    iget-object v5, p1, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    move-object v0, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    .line 129
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/graph/y;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/g3;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V

    .line 130
    sget-boolean p1, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->K()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Wr0;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Oa0;->e:Lcom/android/tools/r8/internal/bz;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/i40;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->J:Lcom/android/tools/r8/internal/i40;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/l4;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/lZ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    move-result v1

    .line 171
    sget-boolean v2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    instance-of v1, p1, Lcom/android/tools/r8/internal/xA;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 175
    iget-object v2, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 176
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v3

    invoke-virtual {v3, v2, p1, p2}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 179
    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 180
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/tools/r8/internal/l4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/l4;

    move-result-object p1

    .line 181
    iput-object p1, v0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nu;)V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 68
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->I:Lcom/android/tools/r8/internal/nu;

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->E:Ljava/util/function/BiConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nx0;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 62
    sget-boolean p2, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ$p;->F:Ljava/util/function/BiConsumer;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/C0;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    return-void
.end method

.method public a(Lcom/android/tools/r8/shaking/D4;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->n:Lcom/android/tools/r8/shaking/D4;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/l;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->e:Lcom/android/tools/r8/shaking/l;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$e;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 183
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->P:Ljava/util/Set;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 184
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->P:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->o0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 78
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 80
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->e1:Ljava/util/function/Predicate;

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ$p;->e1:Ljava/util/function/Predicate;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->h:Lcom/android/tools/r8/internal/Hz;

    if-eq p1, v0, :cond_2

    .line 38
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->h:Lcom/android/tools/r8/internal/Hz;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    instance-of v0, p1, Lcom/android/tools/r8/internal/g3;

    if-nez v0, :cond_0

    .line 41
    instance-of v0, p1, Lcom/android/tools/r8/internal/ke;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/function/Supplier;)Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->L0:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(TU;)",
            "Lcom/android/tools/r8/graph/y<",
            "TU;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/tools/r8/graph/y;->b:Lcom/android/tools/r8/graph/j;

    if-eq p1, v0, :cond_2

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/shaking/i;->v:Lcom/android/tools/r8/shaking/y1;

    .line 13
    iput-object p1, p0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    :cond_3
    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Oa0;->d:Lcom/android/tools/r8/internal/cz;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/x0;)V
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->h()Lcom/android/tools/r8/shaking/i;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v2

    .line 22
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/i;->c(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/dW;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dW;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dW;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    .line 3
    iget-object v1, v1, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/internal/j6;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->G:Lcom/android/tools/r8/internal/CA;

    .line 6
    iget-object v2, v0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/y;->H:Lcom/android/tools/r8/internal/nx0;

    if-eqz v1, :cond_1

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/internal/dW;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/androidapi/a;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    return-object v0
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->B:Lcom/android/tools/r8/internal/XR;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lcom/android/tools/r8/graph/x0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/android/tools/r8/graph/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    return-object v0
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/android/tools/r8/graph/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->b:Lcom/android/tools/r8/graph/j;

    if-nez v0, :cond_7

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 8
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/tools/r8/graph/j;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 9
    iput-object v1, p0, Lcom/android/tools/r8/graph/y;->b:Lcom/android/tools/r8/graph/j;

    .line 10
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->b:Lcom/android/tools/r8/graph/j;

    return-object v0
.end method

.method public final h()Lcom/android/tools/r8/shaking/i;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->E:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/y;->U:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->N:Lcom/android/tools/r8/naming/S0;

    return-void
.end method

.method public final k()Lcom/android/tools/r8/internal/Ef;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->R:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->Q:Lcom/android/tools/r8/internal/Hf;

    new-instance v1, Lcom/android/tools/r8/internal/Ef;

    iget v2, v0, Lcom/android/tools/r8/internal/Hf;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/tools/r8/internal/Hf;->d:I

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/Ef;-><init>(Lcom/android/tools/r8/internal/Hf;I)V

    sget-boolean v2, Lcom/android/tools/r8/internal/Hf;->e:Z

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hf;->a(Lcom/android/tools/r8/internal/Bf;)V

    :cond_2
    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hf;->b:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invoked on another thread than main"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/y;->U:Z

    return-void
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/y;->V:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    new-instance v1, Lcom/android/tools/r8/internal/g3;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/g3;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    return-void
.end method

.method public final o()Lcom/android/tools/r8/internal/l4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    return-object v0
.end method

.method public final p()Lcom/android/tools/r8/internal/Mf;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->s:Lcom/android/tools/r8/internal/Mf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Mf;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Mf;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->s:Lcom/android/tools/r8/internal/Mf;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->s:Lcom/android/tools/r8/internal/Mf;

    return-object v0
.end method

.method public final q()Lcom/android/tools/r8/internal/et;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    return-object v0
.end method

.method public final r()Lcom/android/tools/r8/shaking/y1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->r:Lcom/android/tools/r8/shaking/y1;

    return-object v0
.end method

.method public s()Lcom/android/tools/r8/naming/r0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    return-object v0
.end method

.method public final t()Lcom/android/tools/r8/internal/qo0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/synthesis/J;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/android/tools/r8/internal/Hz;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->h:Lcom/android/tools/r8/internal/Hz;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->I:Lcom/android/tools/r8/internal/nu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Hf;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Hf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Hf;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    return-object v1
.end method

.method public final synthetic y()Lcom/android/tools/r8/internal/et;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/shaking/o3;)Lcom/android/tools/r8/internal/et;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic z()Lcom/android/tools/r8/internal/bS;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/bS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bS;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0
.end method
