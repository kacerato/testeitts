.class public final Lcom/android/tools/r8/internal/XR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/XR;->b:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/XR;->d:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    const-string v0, "Register optimizers"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v0, Lcom/android/tools/r8/internal/R11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/R11;-><init>(Lcom/android/tools/r8/internal/XR;)V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/A70;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)V

    new-instance v0, Lcom/android/tools/r8/internal/Dd;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Dd;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/if;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/if;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/ai;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/ai;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/yT;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/yT;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/QU;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/QU;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/WW;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/WW;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/H30;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/H30;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/W30;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/W30;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/zl0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/zl0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/tp0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/tp0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    new-instance v0, Lcom/android/tools/r8/internal/fq0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/fq0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    invoke-virtual {v0}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/wj0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/wj0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/wu;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/wu;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->i()I

    move-result v2

    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/TT;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/TT;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/XR;->a(Lcom/android/tools/r8/internal/ZR;)V

    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    new-instance v0, Lcom/android/tools/r8/internal/S11;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/S11;-><init>(Lcom/android/tools/r8/internal/XR;)V

    const-string v2, "Initialize final fields"

    invoke-virtual {p2, v2, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Initialize opt info"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance v0, Lcom/android/tools/r8/internal/cS;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cS;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    const/4 v2, 0x7

    if-eqz p1, :cond_5

    sget-object v3, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    iget-object v4, v0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    sget-object v5, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    new-instance v6, Lcom/android/tools/r8/internal/Y00;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v5, v7}, Lcom/android/tools/r8/internal/Y00;-><init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V

    new-instance v3, Lcom/android/tools/r8/internal/ei;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Y00;->a()Lcom/android/tools/r8/internal/Y00;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/ei;-><init>(Lcom/android/tools/r8/internal/Y00;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    iput-object v3, p1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    :cond_5
    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v3, p1, Lcom/android/tools/r8/graph/J1;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, v0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Nw;->a(Lcom/android/tools/r8/graph/y;)V

    iget-object v4, v0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->x:Lcom/android/tools/r8/internal/VD;

    new-instance v5, Lcom/android/tools/r8/internal/TD;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/TD;-><init>()V

    iget-object v6, p1, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/VD;->a(I)Lcom/android/tools/r8/internal/RD;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    move-result-object v5

    iget-object p1, p1, Lcom/android/tools/r8/graph/J1;->b:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/VD;->a(I)Lcom/android/tools/r8/internal/RD;

    move-result-object v1

    invoke-virtual {v5, p1, v1}, Lcom/android/tools/r8/internal/TD;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)Lcom/android/tools/r8/internal/TD;

    move-result-object p1

    iget-object v1, p1, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object p1, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/W00;

    iget-object p1, p1, Lcom/android/tools/r8/internal/TD;->a:Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/W00;-><init>(Ljava/util/TreeMap;)V

    move-object p1, v1

    :goto_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    sget-object v4, Lcom/android/tools/r8/internal/Ot;->a:Lcom/android/tools/r8/internal/Ot;

    iget-object v5, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1$c;->f:Lcom/android/tools/r8/graph/A2;

    new-instance v6, Lcom/android/tools/r8/internal/Y00;

    invoke-direct {v6, v2, p1, v4, v5}, Lcom/android/tools/r8/internal/Y00;-><init>(ILcom/android/tools/r8/internal/UD;Lcom/android/tools/r8/internal/p;Lcom/android/tools/r8/graph/A2;)V

    new-instance p1, Lcom/android/tools/r8/internal/ei;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Y00;->a()Lcom/android/tools/r8/internal/Y00;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/ei;-><init>(Lcom/android/tools/r8/internal/Y00;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    iput-object p1, v1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    :cond_7
    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    iget-object v1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$b;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/em0;->d:Lcom/android/tools/r8/internal/em0;

    sget-boolean v2, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v2, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/cS;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/em0;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->x4:Lcom/android/tools/r8/graph/u1$b;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1$b;->b:Lcom/android/tools/r8/graph/l1;

    sget-object v1, Lcom/android/tools/r8/internal/em0;->e:Lcom/android/tools/r8/internal/em0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/cS;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/em0;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cS;->a()V

    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->z6:Lcom/android/tools/r8/internal/QC;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-boolean v2, Lcom/android/tools/r8/internal/cS;->e:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->n()Lcom/android/tools/r8/internal/xt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    iget-object v3, v0, Lcom/android/tools/r8/internal/cS;->a:Lcom/android/tools/r8/graph/y;

    sget-boolean v4, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v4, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v2

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/xt;)V

    goto :goto_2

    :cond_b
    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->y6:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, v0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/WY;->b(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/cS;->b()V

    iget-object p1, v0, Lcom/android/tools/r8/internal/cS;->b:Lcom/android/tools/r8/graph/u1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j2;->h:Lcom/android/tools/r8/graph/A2;

    invoke-static {v1, v3, p1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/cS;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, v0, Lcom/android/tools/r8/internal/cS;->c:Lcom/android/tools/r8/internal/dS;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/WY;->b(I)V

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/tools/r8/internal/cS;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->q5:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e2;

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/internal/XR;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/KH0;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/KH0;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/e2;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ZR;)V
    .locals 2

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZR;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/XR;->d:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {v1, v0, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ZR;

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/XR;->e:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/XR;->c:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 8
    new-instance v13, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v13}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v14

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v15

    .line 11
    :cond_0
    :goto_0
    iget-object v1, v14, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 12
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v14, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v14, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 14
    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 16
    new-instance v11, Ljava/util/IdentityHashMap;

    invoke-direct {v11}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v4, v1

    .line 17
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v5

    .line 21
    iget-object v1, v0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/internal/XR;->d:Ljava/util/IdentityHashMap;

    .line 23
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ZR;

    if-nez v1, :cond_4

    goto :goto_1

    .line 24
    :cond_4
    new-instance v2, Lcom/android/tools/r8/internal/T11;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/T11;-><init>()V

    .line 25
    invoke-interface {v11, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/tools/r8/internal/YR;

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v10, p2

    move-object/from16 v16, v11

    move-object/from16 v11, p3

    .line 26
    invoke-interface/range {v1 .. v11}, Lcom/android/tools/r8/internal/ZR;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;Lcom/android/tools/r8/internal/YR;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/EE;

    move-result-object v4

    move-object/from16 v11, v16

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual {v12, v15}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    .line 28
    iget-object v1, v0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v13, v1, v12, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 31
    sget-boolean v1, Lcom/android/tools/r8/internal/XR;->e:Z

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/tools/r8/internal/XR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_7
    :goto_2
    return-void
.end method
