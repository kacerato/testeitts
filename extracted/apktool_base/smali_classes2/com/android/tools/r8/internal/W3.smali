.class public Lcom/android/tools/r8/internal/W3;
.super Lcom/android/tools/r8/internal/ae0;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final e:Lcom/android/tools/r8/internal/pu0;

.field public final f:Lcom/android/tools/r8/internal/q10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/ae0;-><init>(Lcom/android/tools/r8/internal/p10;)V

    sget-boolean p2, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/W3;->f:Lcom/android/tools/r8/internal/q10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/YZ0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/YZ0;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/W3;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/W3;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/W3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/W3;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 3

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object p0

    .line 56
    invoke-static {v0, v2, p2, p0}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 57
    :cond_1
    invoke-static {p0, p3}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;

    move-result-object p0

    return-object p0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p0

    .line 59
    invoke-static {p0, p3}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;

    move-result-object p0

    return-object p0

    .line 60
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 61
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p0

    if-eqz p0, :cond_8

    if-nez v0, :cond_7

    .line 62
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    .line 63
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 64
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    .line 65
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->f6:Lcom/android/tools/r8/graph/M2;

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object p1

    .line 69
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 70
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p2

    .line 71
    invoke-static {p0, p3, p2, p1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/wI;)Lcom/android/tools/r8/internal/de;

    move-result-object p0

    return-object p0

    .line 72
    :cond_8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {p0, p3, p2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/pu0;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public F()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    return-object v0
.end method

.method public final G()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    return-object v0
.end method

.method public H()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->c()Lcom/android/tools/r8/internal/D70;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(ILcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lcom/android/tools/r8/internal/W3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/W3;
    .locals 2

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/W3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/W3;-><init>(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
    .locals 3

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 22
    iget-object v1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/p10;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W3;->F()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-static {v1, v2, p2, v0}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p2

    if-nez p2, :cond_1

    .line 25
    iget-object p2, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/W3;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez p1, :cond_3

    .line 28
    iget-object p1, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-object p2

    .line 30
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 36
    invoke-static {}, Lcom/android/tools/r8/internal/wI;->a()Lcom/android/tools/r8/internal/wI$a;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->f6:Lcom/android/tools/r8/graph/M2;

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/wI$a;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/wI$a;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/wI$a;->a()Lcom/android/tools/r8/internal/wI;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 41
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/wI;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 42
    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 44
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1

    .line 45
    :cond_6
    sget-boolean p2, Lcom/android/tools/r8/internal/W3;->g:Z

    if-nez p2, :cond_8

    .line 46
    instance-of p2, p1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz p2, :cond_7

    goto :goto_1

    .line 47
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 48
    :cond_8
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ae0;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W3;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    if-eq p1, p2, :cond_0

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/W3;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->f:Lcom/android/tools/r8/internal/q10;

    new-instance v1, Lcom/android/tools/r8/internal/XZ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/XZ0;-><init>(Lcom/android/tools/r8/internal/W3;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/q10;->a(Lcom/android/tools/r8/internal/p10;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/W3;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/W3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/W3;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/W3;->e:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[])"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
