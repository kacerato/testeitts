.class public final Lcom/android/tools/r8/internal/Vw0;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/tools/r8/internal/Vw0;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/Vw0;->b:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    instance-of v1, p1, Lcom/android/tools/r8/internal/Zd0;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v4

    if-eq v1, v4, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_7

    return v3

    :cond_7
    return v2

    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_a

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Vw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;)Z

    move-result p1

    return p1

    :cond_b
    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    return v2

    :cond_f
    :goto_4
    return v3

    :cond_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v0, :cond_12

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Vw0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne p1, p2, :cond_11

    return v3

    :cond_11
    return v2

    :cond_12
    return v3
.end method
