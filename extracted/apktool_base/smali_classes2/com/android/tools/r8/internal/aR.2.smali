.class public final Lcom/android/tools/r8/internal/aR;
.super Lcom/android/tools/r8/internal/hR;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/graph/A2;

.field public final h:Z

.field public final i:Lcom/android/tools/r8/graph/B2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/y;)V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-direct {p0, p4, v0, p5}, Lcom/android/tools/r8/internal/hR;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    iput-object p6, p0, Lcom/android/tools/r8/internal/aR;->f:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/aR;->g:Lcom/android/tools/r8/graph/A2;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/aR;->h:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/aR;->i:Lcom/android/tools/r8/graph/B2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/A2;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/aR;->g:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Zx;Lcom/android/tools/r8/internal/rr0;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/aR;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/aR;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    return-object v1

    .line 7
    :cond_8
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    .line 8
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 9
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    .line 11
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    const/16 v3, 0x1009

    const/4 v4, 0x0

    .line 12
    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/L4;->b(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    .line 13
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/aR;->g:Lcom/android/tools/r8/graph/A2;

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/aR;->h:Z

    iget-object v5, p0, Lcom/android/tools/r8/internal/aR;->i:Lcom/android/tools/r8/graph/B2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/hR;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v7, p0, Lcom/android/tools/r8/internal/aR;->f:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 15
    new-instance v8, Lcom/android/tools/r8/internal/cy;

    invoke-direct {v8, v7}, Lcom/android/tools/r8/internal/cy;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 16
    iput-object v6, v8, Lcom/android/tools/r8/internal/cy;->b:Lcom/android/tools/r8/graph/A2;

    .line 17
    iput-boolean v2, v8, Lcom/android/tools/r8/internal/cy;->e:Z

    .line 18
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    iput-object v3, v8, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 21
    sget-object v2, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object v2, v8, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 22
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v8, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    goto :goto_5

    .line 23
    :pswitch_1
    sget-boolean v4, Lcom/android/tools/r8/internal/cy;->l:Z

    if-nez v4, :cond_a

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_a
    :goto_4
    iput-object v3, v8, Lcom/android/tools/r8/internal/cy;->c:Lcom/android/tools/r8/graph/A2;

    .line 25
    iput-boolean v2, v8, Lcom/android/tools/r8/internal/cy;->j:Z

    .line 26
    sget-object v2, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    iput-object v2, v8, Lcom/android/tools/r8/internal/cy;->f:Lcom/android/tools/r8/internal/ay;

    .line 27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v8, Lcom/android/tools/r8/internal/cy;->g:Ljava/lang/Boolean;

    goto :goto_5

    .line 28
    :pswitch_2
    invoke-virtual {v8, v3, v4}, Lcom/android/tools/r8/internal/cy;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    goto :goto_5

    .line 29
    :pswitch_3
    invoke-virtual {v8, v3, v4}, Lcom/android/tools/r8/internal/cy;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/internal/cy;

    .line 30
    :goto_5
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/cy;->a()Lcom/android/tools/r8/graph/G;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->b()Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/j1;)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/aR;->g:Lcom/android/tools/r8/graph/A2;

    invoke-interface {p2, v0, p1}, Lcom/android/tools/r8/internal/rr0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    .line 36
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
