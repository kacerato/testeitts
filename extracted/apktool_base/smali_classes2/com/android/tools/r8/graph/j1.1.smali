.class public Lcom/android/tools/r8/graph/j1;
.super Lcom/android/tools/r8/graph/h1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/j1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/h1<",
        "Lcom/android/tools/r8/graph/j1;",
        "Lcom/android/tools/r8/graph/A2;",
        ">;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/j1;",
        ">;"
    }
.end annotation


# static fields
.field public static final u:[Lcom/android/tools/r8/graph/j1;

.field public static final v:Lcom/android/tools/r8/graph/j1;

.field public static final w:Lcom/android/tools/r8/internal/GG;

.field public static final synthetic x:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/graph/L4;

.field public final h:Z

.field public i:Lcom/android/tools/r8/graph/z5;

.field public j:Lcom/android/tools/r8/graph/i0;

.field public k:Lcom/android/tools/r8/graph/A2;

.field public l:Lcom/android/tools/r8/graph/k1;

.field public m:Lcom/android/tools/r8/internal/TW;

.field public n:Lcom/android/tools/r8/internal/Ib;

.field public o:Lcom/android/tools/r8/androidapi/f;

.field public p:Lcom/android/tools/r8/kotlin/d0;

.field public q:Lcom/android/tools/r8/graph/H3$g;

.field public r:Lcom/android/tools/r8/internal/t40;

.field public s:Lcom/android/tools/r8/internal/SG;

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/tools/r8/graph/j1;

    sput-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/j1;

    invoke-static {v0}, Lcom/android/tools/r8/graph/L4;->e(I)Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v5

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v12, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    sget-object v14, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-object v11, v12

    invoke-direct/range {v2 .. v15}, Lcom/android/tools/r8/graph/j1;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/H3$g;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/z5;Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/TW;Z)V

    sput-object v1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/internal/GG;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GG;-><init>(I)V

    sput-object v1, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/H3$g;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/z5;Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/androidapi/f;Lcom/android/tools/r8/internal/Ib;Lcom/android/tools/r8/internal/TW;Z)V
    .locals 0

    invoke-direct {p0, p1, p4, p8, p9}, Lcom/android/tools/r8/graph/h1;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/u0;ZLcom/android/tools/r8/androidapi/f;)V

    sget-object p1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    sget-object p1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->r:Lcom/android/tools/r8/internal/t40;

    sget-object p1, Lcom/android/tools/r8/graph/j1;->w:Lcom/android/tools/r8/internal/GG;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/graph/j1;->t:Z

    iput-object p2, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    iput-boolean p13, p0, Lcom/android/tools/r8/graph/j1;->h:Z

    iput-object p3, p0, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    iput-object p5, p0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    iput-object p6, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    iput-object p7, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    iput-object p11, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    iput-object p10, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-static {p12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p12, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    sget-boolean p1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p6, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_6

    iget-object p2, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez p1, :cond_8

    if-eqz p5, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    if-nez p1, :cond_a

    if-eqz p9, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_4
    if-nez p1, :cond_c

    if-eqz p10, :cond_b

    return-void

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_c
    return-void
.end method

.method public static K0()Lcom/android/tools/r8/graph/j1$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/pf;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->u0()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->u0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->l0()Lcom/android/tools/r8/graph/P;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->l0()Lcom/android/tools/r8/graph/P;

    move-result-object p1

    .line 21
    invoke-interface {p0}, Lcom/android/tools/r8/graph/P;->A()I

    move-result v2

    .line 22
    invoke-interface {p1}, Lcom/android/tools/r8/graph/P;->A()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 23
    invoke-static {v2, v3}, Lcom/android/tools/r8/c;->a(II)I

    move-result p0

    return p0

    .line 24
    :cond_3
    invoke-static {v2}, Lcom/android/tools/r8/c;->b(I)I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v1, :cond_5

    const/4 p0, 0x2

    if-ne v2, p0, :cond_4

    return v0

    .line 25
    :cond_4
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0

    :cond_5
    return v0

    .line 26
    :cond_6
    invoke-interface {p0}, Lcom/android/tools/r8/graph/P;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/tools/r8/graph/P;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/G;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->w0()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->w0()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/f3;Lcom/android/tools/r8/internal/pf;)I

    move-result p0

    return p0

    .line 29
    :cond_8
    new-instance p2, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected attempt to compare incompatible synthetic objects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    :goto_0
    if-eqz p0, :cond_a

    move p0, v1

    goto :goto_1

    :cond_a
    move p0, v0

    :goto_1
    if-eqz p1, :cond_b

    move v0, v1

    .line 30
    :cond_b
    invoke-virtual {p2, p0, v0}, Lcom/android/tools/r8/internal/pf;->a(ZZ)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Z)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 292
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 293
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 295
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    .line 296
    new-instance v2, Lcom/android/tools/r8/graph/L4;

    .line 297
    iget v3, v1, Lcom/android/tools/r8/graph/g;->b:I

    .line 298
    iget v1, v1, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 299
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    const/16 v1, 0x400

    .line 300
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/g;->b(I)V

    .line 301
    new-instance v1, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 302
    iput-object p1, v1, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p3, 0x0

    .line 303
    iput-boolean p3, v1, Lcom/android/tools/r8/internal/cy;->e:Z

    if-eqz p4, :cond_2

    .line 304
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    .line 306
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 307
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_5

    if-nez v0, :cond_4

    .line 308
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 309
    :cond_4
    :goto_2
    iput-boolean p3, v1, Lcom/android/tools/r8/internal/cy;->i:Z

    .line 310
    :cond_5
    new-instance p2, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 311
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 313
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p2

    .line 314
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 315
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p2

    .line 316
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->e:Lcom/android/tools/r8/graph/u0;

    .line 317
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 318
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    .line 319
    iget-object p2, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 320
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 321
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    .line 322
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 323
    iput-object p0, p1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 324
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/z5;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/L4;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 267
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->B()V

    .line 268
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->C()V

    .line 269
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->u()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/i0;ILcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p0

    .line 125
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object p2

    .line 126
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 127
    iget-object v0, p2, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/W0;)V

    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object p0

    .line 132
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/u1;)V

    return-void

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 134
    sget-boolean p1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 135
    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez p2, :cond_4

    goto :goto_1

    .line 136
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_1
    if-nez p1, :cond_7

    .line 137
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p0

    .line 138
    iget-object p0, p0, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    if-nez p0, :cond_6

    goto :goto_2

    .line 139
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/rA;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->A0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->o0()Lcom/android/tools/r8/internal/WS;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->u0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->l0()Lcom/android/tools/r8/graph/P;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/P;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void

    .line 35
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->w0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 36
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1$a;)V
    .locals 1

    .line 265
    new-instance v0, Lcom/android/tools/r8/graph/be;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/be;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/I9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/de;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/de;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ee;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ee;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/fe;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/fe;-><init>()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ge;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ge;-><init>()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/he;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/he;-><init>()V

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/ie;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/ie;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Od;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Od;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Pd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Pd;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/Qd;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Qd;-><init>()V

    new-instance v2, Lcom/android/tools/r8/graph/ce;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/ce;-><init>()V

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/Lq0;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/tools/r8/graph/p0;->c:Lcom/android/tools/r8/graph/p0;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/r0;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/Ib;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/r0;)Lcom/android/tools/r8/graph/r0;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/r0;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    invoke-interface {p0}, Lcom/android/tools/r8/graph/H3$d;->a()Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Lcom/android/tools/r8/graph/j1;Z)V

    return-object v0
.end method

.method public static w1()Lcom/android/tools/r8/graph/j1$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0()Lcom/android/tools/r8/graph/H3$d;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->S0()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Lcom/android/tools/r8/internal/KV;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    return-object v0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final I0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    return v0
.end method

.method public final J0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final L0()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/j1;->t:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public M0()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-nez v0, :cond_0

    const-string v0, "<no code>"

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-static {}, Lcom/android/tools/r8/naming/r0;->a()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O0()Lcom/android/tools/r8/graph/L4;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    return-object v0
.end method

.method public final P0()Lcom/android/tools/r8/internal/Ib;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    return-object v0
.end method

.method public Q0()Lcom/android/tools/r8/graph/i0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    return-object v0
.end method

.method public final R0()Lcom/android/tools/r8/graph/f3;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->w0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v0

    return-object v0
.end method

.method public S0()Lcom/android/tools/r8/graph/H3$g;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-object v0
.end method

.method public declared-synchronized T0()Lcom/android/tools/r8/internal/WY;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->a()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/WY;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public U0()Lcom/android/tools/r8/graph/z5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    return-object v0
.end method

.method public V0()Lcom/android/tools/r8/graph/O2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->x0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    return-object v0
.end method

.method public final W0()Lcom/android/tools/r8/internal/B60;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    return-object v0
.end method

.method public X0()Lcom/android/tools/r8/graph/I2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    return-object v0
.end method

.method public Y0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    return-object v0
.end method

.method public final Z0()Lcom/android/tools/r8/graph/F2;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/graph/D2;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/D2;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/G;
    .locals 14

    .line 193
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 194
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shaking error: Missing method in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    .line 197
    const-string v1, "[R8]"

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 198
    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->a4:Lcom/android/tools/r8/graph/M2;

    .line 199
    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 200
    invoke-virtual {p1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 201
    const-string v4, "getLogger"

    invoke-virtual {p1, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 202
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 203
    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 204
    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 205
    const-string v5, "severe"

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 206
    invoke-virtual {p1, v2, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 207
    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->t3:Lcom/android/tools/r8/graph/M2;

    .line 208
    iget-object v5, p1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v6}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 209
    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    iget-object v6, p1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 210
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 211
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 213
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v6, v5, 0x2

    :cond_0
    move v10, v6

    .line 214
    new-instance v5, Lcom/android/tools/r8/internal/eC;

    .line 215
    invoke-direct {v5}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 216
    new-instance v6, Lcom/android/tools/r8/internal/A9;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 217
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v6, Lcom/android/tools/r8/internal/ga;

    const/16 v7, 0xb8

    const/4 v8, 0x0

    invoke-direct {v6, v7, v3, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 218
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/yb;

    sget-object v6, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    add-int/lit8 v7, v10, -0x1

    invoke-direct {v3, v6, v7}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    .line 219
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v6, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    .line 220
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/A9;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 221
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    const/16 v6, 0xb6

    invoke-direct {v3, v6, v2, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 222
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/wa;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 223
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/kb;

    sget-object v3, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    .line 224
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/A9;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    .line 225
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ga;

    const/16 v2, 0xb7

    invoke-direct {v1, v2, p1, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    .line 227
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 228
    new-instance p1, Lcom/android/tools/r8/graph/G;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    .line 229
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v9, 0x3

    move-object v7, p1

    move-object v12, v13

    .line 230
    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;
    .locals 2

    .line 49
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 50
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H5;
    .locals 2

    .line 258
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 261
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 262
    new-instance v0, Lcom/android/tools/r8/graph/Nd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Nd;-><init>()V

    .line 263
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 264
    new-instance p3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;
    .locals 7

    .line 231
    new-instance v6, Lcom/android/tools/r8/graph/Yd;

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/Yd;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 233
    invoke-static {p0}, Lcom/android/tools/r8/graph/j1;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    .line 234
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    .line 235
    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    if-eq p3, v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    .line 237
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    .line 238
    invoke-interface {v6, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 270
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 272
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 273
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->a()Lcom/android/tools/r8/graph/g;

    .line 274
    invoke-static {p0}, Lcom/android/tools/r8/graph/j1;->e(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Sd;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Sd;-><init>()V

    .line 276
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v1

    .line 278
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->d:Lcom/android/tools/r8/graph/H3$g;

    .line 279
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/android/tools/r8/graph/Td;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/tools/r8/graph/Td;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;)V

    .line 280
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 283
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;
    .locals 2

    .line 98
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 100
    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 102
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$c$a;

    .line 104
    iput-object p1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 105
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$c$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object p1

    .line 106
    check-cast p1, Lcom/android/tools/r8/internal/B60$c$a;

    .line 107
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/WS;
    .locals 16

    move-object/from16 v0, p1

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-static {v2}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;

    move-result-object v2

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shaking error: Missing method in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    .line 145
    const-string v3, "[R8]"

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 146
    iget-object v4, v1, Lcom/android/tools/r8/graph/u1;->a4:Lcom/android/tools/r8/graph/M2;

    .line 147
    iget-object v5, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v5}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 148
    invoke-virtual {v1, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    .line 149
    const-string v6, "getLogger"

    invoke-virtual {v1, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    .line 150
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 151
    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 152
    invoke-virtual {v1, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 153
    const-string v7, "severe"

    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 154
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 155
    iget-object v7, v1, Lcom/android/tools/r8/graph/u1;->t3:Lcom/android/tools/r8/graph/M2;

    .line 156
    iget-object v8, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 157
    invoke-virtual {v1, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    iget-object v9, v1, Lcom/android/tools/r8/graph/u1;->i1:Lcom/android/tools/r8/graph/L2;

    .line 158
    invoke-virtual {v1, v7, v8, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v8

    .line 160
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 161
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v7, v9, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    .line 163
    new-instance v10, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {v11, v12, v10, v0}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v0

    const/4 v11, 0x0

    .line 165
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v13

    invoke-virtual {v12, v11, v13}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 167
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 168
    :cond_0
    new-instance v12, Lcom/android/tools/r8/internal/xw0;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v8, v13}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 169
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v14

    .line 170
    iget-object v15, v10, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v15, v14, v12}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v15, 0x12

    invoke-virtual {v0, v15, v3, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v3, v11, 0x1

    .line 173
    new-instance v15, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v15, v3, v4, v13}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 174
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v3

    .line 175
    iget-object v4, v10, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v4, v3, v15}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 176
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v12}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 177
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v5, 0xb8

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v3, v11, 0x2

    .line 178
    new-instance v4, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v4, v3, v8, v13}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 179
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v3

    .line 180
    iget-object v5, v10, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v5, v3, v4}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 181
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 182
    invoke-static {v15, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    const/16 v3, 0xb6

    .line 183
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v11, v11, 0x4

    .line 184
    new-instance v2, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v2, v11, v9, v13}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 185
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v3

    .line 186
    iget-object v5, v10, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v5, v3, v2}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    const/16 v3, 0xbb

    .line 187
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v14}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    move-result-object v3

    .line 188
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    .line 189
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v5, 0xcd

    invoke-virtual {v3, v5, v1, v4}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    const/16 v1, 0xbf

    .line 190
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v14, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 192
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 114
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/X;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cy;)V
    .locals 1

    .line 1
    iput-object p1, p3, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p3, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    .line 6
    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    .line 243
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v5

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    .line 244
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    .line 245
    invoke-virtual {p5, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    goto :goto_3

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p2

    .line 247
    sget-boolean p3, Lcom/android/tools/r8/graph/j1$a;->u:Z

    if-nez p3, :cond_3

    .line 248
    iget-object v0, p5, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 250
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_4
    if-nez p3, :cond_6

    .line 251
    iget-object p2, p5, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    if-nez p2, :cond_5

    goto :goto_2

    .line 252
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 253
    :cond_6
    :goto_2
    iput-object p1, p5, Lcom/android/tools/r8/graph/j1$a;->p:Lcom/android/tools/r8/graph/A2;

    :goto_3
    if-eqz p4, :cond_8

    .line 254
    iget-object p1, p5, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    .line 255
    invoke-interface {p4, p5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 256
    sget-boolean p2, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p2, :cond_8

    iget-object p2, p5, Lcom/android/tools/r8/graph/j1$a;->b:Lcom/android/tools/r8/graph/i0;

    if-ne p1, p2, :cond_7

    goto :goto_4

    .line 257
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/i0;)V
    .locals 4

    .line 85
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/U6;-><init>(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 88
    new-instance v2, Lcom/android/tools/r8/graph/Rd;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/graph/Rd;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/U6;)V

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p1, v1, v3, v2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V

    .line 90
    sget-boolean p1, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/internal/SG;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->C0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/i0;)V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    .line 84
    iput-object p2, p0, Lcom/android/tools/r8/graph/j1;->s:Lcom/android/tools/r8/internal/SG;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/j1$a;)V
    .locals 4

    .line 285
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    new-instance v2, Lcom/android/tools/r8/graph/Vd;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/tools/r8/graph/Vd;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)V

    new-instance v3, Lcom/android/tools/r8/graph/Wd;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/tools/r8/graph/Wd;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;)V

    .line 288
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/tools/r8/internal/cy;->a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/cy;

    move-result-object p2

    .line 289
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ$p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object p1

    .line 290
    :goto_0
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/graph/Xd;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/Xd;-><init>()V

    .line 291
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->b(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1$a;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 328
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->P0()Lcom/android/tools/r8/internal/Ib;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/Ib;)V

    .line 330
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H2;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 332
    iget-object p1, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    iget-object p2, p2, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    .line 333
    invoke-interface {p1, p2}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ib;)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 109
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ib;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/B60;)V
    .locals 2

    .line 91
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/U6;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v0, p2, Lcom/android/tools/r8/internal/B60;->f:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p2, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 94
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/U6;->c(Z)V

    return-void

    .line 96
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    if-nez p2, :cond_0

    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/WY;)V
    .locals 0

    .line 325
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 326
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/t40;)V
    .locals 3

    .line 37
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const-string v1, "Method `"

    if-nez v0, :cond_5

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/graph/j1;->r:Lcom/android/tools/r8/internal/t40;

    .line 40
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` went from not overriding a library method to overriding a library method"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->r:Lcom/android/tools/r8/internal/t40;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 45
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` went from overriding a library method to not overriding a library method"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 47
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->r:Lcom/android/tools/r8/internal/t40;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/kotlin/d0;)V
    .locals 2

    .line 51
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    .line 52
    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 54
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    return-void
.end method

.method public final a(Ljava/util/function/BiFunction;)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/Zd;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/Zd;-><init>(Ljava/util/function/BiFunction;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    .line 120
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/graph/ae;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/ae;-><init>(Ljava/util/function/BiFunction;)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/z5;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/z5;

    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Cx0;)Z
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    .line 57
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected compilation state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->b()V

    return v2

    .line 61
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/tools/r8/ir/optimize/g0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 62
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->c()V

    return v2

    .line 63
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/J2;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 64
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->d()V

    return v2

    .line 65
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 66
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->e()V

    return v2

    :pswitch_4
    return v1

    .line 67
    :pswitch_5
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->h()V

    return v2

    .line 68
    :pswitch_6
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Cx0;->i()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/ir/optimize/O;)Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 71
    sget-object v1, Lcom/android/tools/r8/graph/i1;->b:[I

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object p1, Lcom/android/tools/r8/graph/k1;->c:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    goto :goto_0

    .line 73
    :pswitch_1
    sget-object p1, Lcom/android/tools/r8/graph/k1;->h:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object p1, Lcom/android/tools/r8/graph/k1;->g:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    goto :goto_0

    .line 75
    :pswitch_3
    sget-object p1, Lcom/android/tools/r8/graph/k1;->f:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    goto :goto_0

    .line 76
    :pswitch_4
    sget-object p1, Lcom/android/tools/r8/graph/k1;->e:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    goto :goto_0

    .line 77
    :pswitch_5
    sget-object p1, Lcom/android/tools/r8/graph/k1;->d:Lcom/android/tools/r8/graph/k1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->n:Lcom/android/tools/r8/internal/Ib;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/cy;)V
    .locals 1

    .line 1
    iput-object p1, p3, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p3, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-interface {p2, v0}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    .line 6
    iput-object p1, p3, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object p1, p3, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j1;)Z
    .locals 4

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->d()I

    move-result v1

    const/4 v3, 0x0

    if-ge v2, v1, :cond_4

    return v3

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return v2

    :cond_5
    return v3

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    if-nez v0, :cond_9

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->f()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c0()Lcom/android/tools/r8/kotlin/Q;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    return-object v0
.end method

.method public final c1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->k:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    return v0
.end method

.method public e1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->I()Z

    move-result v0

    return v0
.end method

.method public final f(Lcom/android/tools/r8/androidapi/f;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/j1;->x:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public f1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v1, 0x10000

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getAccessFlags()Lcom/android/tools/r8/graph/g;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    return-object v0
.end method

.method public h1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public j(I)Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/A2;->k(I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v1, 0x10000

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k(I)Lcom/android/tools/r8/graph/u0;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/z5;->j(I)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1
.end method

.method public k1()Lcom/android/tools/r8/internal/t40;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->r:Lcom/android/tools/r8/internal/t40;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object v0
.end method

.method public final l1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Ud;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Ud;-><init>()V

    return-object v0
.end method

.method public final m1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o0()Lcom/android/tools/r8/graph/j1;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    return-object p0
.end method

.method public final o1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    sget-object v1, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    return v0
.end method

.method public r0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->q0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public r1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/high16 v1, 0x10000

    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    sget-object v0, Lcom/android/tools/r8/graph/k1;->b:Lcom/android/tools/r8/graph/k1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->l:Lcom/android/tools/r8/graph/k1;

    return-void
.end method

.method public final t()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/H3$g;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->q:Lcom/android/tools/r8/graph/H3$g;

    return-void
.end method

.method public t1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->A0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u1()Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final v0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v0, 0x1

    return v0
.end method

.method public v1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public w0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    return v0
.end method

.method public final x0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->L0()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v0

    return v0
.end method

.method public final y()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/b1;->b:Lcom/android/tools/r8/graph/u0;

    sget-object v0, Lcom/android/tools/r8/graph/z5;->d:Lcom/android/tools/r8/graph/z5;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    return-void
.end method

.method public final y0()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    iput-object v0, p0, Lcom/android/tools/r8/graph/j1;->p:Lcom/android/tools/r8/kotlin/d0;

    return-void
.end method

.method public final z0()Lcom/android/tools/r8/androidapi/f;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/j1;->o:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v0

    return-object v0
.end method
