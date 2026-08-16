.class public Lcom/android/tools/r8/graph/C2;
.super Lcom/android/tools/r8/graph/d4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/n5;
.implements Lcom/android/tools/r8/internal/YS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/d4;",
        "Lcom/android/tools/r8/graph/n5;",
        "Lcom/android/tools/r8/internal/YS;"
    }
.end annotation


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/graph/B2;

.field public final f:Lcom/android/tools/r8/graph/v2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/graph/v2<",
            "+",
            "Lcom/android/tools/r8/graph/n1;",
            "+",
            "Lcom/android/tools/r8/graph/v2<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/d4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    iput-boolean p3, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    iput-object p4, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/C2;)I
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 51
    iget-short p0, p0, Lcom/android/tools/r8/graph/B2;->b:S

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/C2;
    .locals 4

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/graph/B2;->a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/B2;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 8
    iget-object v3, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/h4;->e(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/h4;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/graph/h4;->a(Lcom/android/tools/r8/graph/M2;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 14
    :goto_0
    iget-boolean p0, p0, Lcom/android/tools/r8/internal/Qz;->e:Z

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/graph/h4;->a:Lcom/android/tools/r8/internal/nJ;

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/B2;Lcom/android/tools/r8/graph/v2;ZLcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/tools/r8/graph/w6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/w6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/x6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/x6;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/y6;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/y6;-><init>()V

    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/z6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/z6;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/A6;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/A6;-><init>()V

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/Function;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/B6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/B6;-><init>()V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/C6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/C6;-><init>()V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/C2;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/C2;)Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final R()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;)I
    .locals 0

    .line 57
    iget-object p1, p1, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    .line 58
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/C2;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/internal/Qz;
    .locals 9

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 30
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v3, p1}, Lcom/android/tools/r8/graph/I2;->a(Lcom/android/tools/r8/naming/r0;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ljava/lang/invoke/LambdaMetafactory;"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    sget-boolean v0, Lcom/android/tools/r8/graph/C2;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    move-object v7, p1

    move v8, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_4

    .line 37
    :cond_3
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    goto :goto_2

    .line 38
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/graph/C2;->i:Z

    if-nez v0, :cond_6

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 40
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 42
    iget-object v1, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/naming/r0;->d(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    goto :goto_2

    .line 46
    :goto_4
    new-instance p1, Lcom/android/tools/r8/internal/Qz;

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    :pswitch_0
    const/16 v0, 0x9

    :goto_5
    move v4, v0

    goto :goto_6

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_5

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_5

    :pswitch_3
    const/4 v0, 0x5

    goto :goto_5

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_5

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_6
    const/4 v0, 0x3

    goto :goto_5

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_5

    :pswitch_8
    const/4 v0, 0x4

    goto :goto_5

    :goto_6
    move-object v3, p1

    .line 49
    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Qz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
    .locals 2

    .line 18
    invoke-interface {p2, p0}, Lcom/android/tools/r8/dex/M;->a(Lcom/android/tools/r8/graph/C2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void

    .line 26
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/graph/C2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/C2;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/graph/C2;->g:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    .line 5
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/C2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E;->k0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/tools/r8/graph/C2;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/C2;->h:Lcom/android/tools/r8/graph/A2;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final l0()Lcom/android/tools/r8/graph/l1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/C2;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/v6;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/v6;-><init>()V

    return-object v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/A2;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/graph/C2;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final n0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    return v0
.end method

.method public final o0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodHandle: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/graph/C2;->f:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
