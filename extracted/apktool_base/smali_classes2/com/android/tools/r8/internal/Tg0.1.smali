.class public final Lcom/android/tools/r8/internal/Tg0;
.super Lcom/android/tools/r8/internal/fz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# instance fields
.field public b:I

.field public c:Lcom/android/tools/r8/internal/Xg0;

.field public d:Ljava/lang/String;

.field public e:Lcom/android/tools/r8/internal/ij0;

.field public f:Lcom/android/tools/r8/internal/tg0;

.field public g:Lcom/android/tools/r8/internal/wh0;

.field public h:Ljava/util/List;

.field public i:Lcom/android/tools/r8/internal/Af0;

.field public j:Lcom/android/tools/r8/internal/li0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fz;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->d:Ljava/lang/String;

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/Ug0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->c()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/dz;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fz;-><init>(Lcom/android/tools/r8/internal/gz;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tg0;->d:Ljava/lang/String;

    .line 8
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ug0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->c()Lcom/android/tools/r8/internal/Af0;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Tg0;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/tools/r8/internal/Ug0;->k:Lcom/android/tools/r8/internal/Sg0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Ug0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/internal/Ug0;-><init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    iget-object p2, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 5
    check-cast p2, Lcom/android/tools/r8/internal/Ug0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MJ;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    .line 8
    :cond_0
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;
    .locals 3

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->c:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v1, :cond_1

    .line 12
    sget-object v2, Lcom/android/tools/r8/internal/Xg0;->d:Lcom/android/tools/r8/internal/Xg0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Xg0;->a()Lcom/android/tools/r8/internal/Wg0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Wg0;->a(Lcom/android/tools/r8/internal/Xg0;)Lcom/android/tools/r8/internal/Wg0;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Wg0;->a(Lcom/android/tools/r8/internal/Xg0;)Lcom/android/tools/r8/internal/Wg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wg0;->b()Lcom/android/tools/r8/internal/Xg0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->c:Lcom/android/tools/r8/internal/Xg0;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->c:Lcom/android/tools/r8/internal/Xg0;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 19
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v0, :cond_5

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->e:Lcom/android/tools/r8/internal/ij0;

    if-eqz v1, :cond_4

    .line 21
    sget-object v2, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ij0;->a()Lcom/android/tools/r8/internal/gj0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/gj0;->a(Lcom/android/tools/r8/internal/ij0;)Lcom/android/tools/r8/internal/gj0;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/gj0;->a(Lcom/android/tools/r8/internal/ij0;)Lcom/android/tools/r8/internal/gj0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gj0;->b()Lcom/android/tools/r8/internal/ij0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->e:Lcom/android/tools/r8/internal/ij0;

    goto :goto_1

    .line 23
    :cond_4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->e:Lcom/android/tools/r8/internal/ij0;

    .line 24
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 25
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v0, :cond_7

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->f:Lcom/android/tools/r8/internal/tg0;

    if-eqz v1, :cond_6

    .line 27
    sget-object v2, Lcom/android/tools/r8/internal/tg0;->e:Lcom/android/tools/r8/internal/tg0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tg0;->a()Lcom/android/tools/r8/internal/sg0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/sg0;->a(Lcom/android/tools/r8/internal/tg0;)Lcom/android/tools/r8/internal/sg0;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/sg0;->a(Lcom/android/tools/r8/internal/tg0;)Lcom/android/tools/r8/internal/sg0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sg0;->b()Lcom/android/tools/r8/internal/tg0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->f:Lcom/android/tools/r8/internal/tg0;

    goto :goto_2

    .line 29
    :cond_6
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->f:Lcom/android/tools/r8/internal/tg0;

    .line 30
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 31
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-nez v0, :cond_8

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    .line 34
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    if-eqz v1, :cond_9

    .line 35
    sget-object v2, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/wh0;->a()Lcom/android/tools/r8/internal/uh0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/uh0;->a(Lcom/android/tools/r8/internal/wh0;)Lcom/android/tools/r8/internal/uh0;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/uh0;->a(Lcom/android/tools/r8/internal/wh0;)Lcom/android/tools/r8/internal/uh0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/uh0;->b()Lcom/android/tools/r8/internal/wh0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    goto :goto_3

    .line 37
    :cond_9
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    .line 38
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_d

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 43
    iget v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    goto :goto_4

    .line 44
    :cond_b
    iget v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 46
    iget v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    .line 47
    :cond_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    :goto_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    goto :goto_5

    .line 49
    :cond_d
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 51
    iget-object v0, v0, Lcom/android/tools/r8/internal/Af0;->b:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    const/4 v1, 0x0

    .line 54
    iput-object v1, v0, Lcom/android/tools/r8/internal/Af0;->a:Lcom/android/tools/r8/internal/gz;

    .line 55
    iput-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    .line 58
    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->c()Lcom/android/tools/r8/internal/Af0;

    move-result-object v1

    :cond_e
    iput-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    goto :goto_5

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Af0;->a(Ljava/lang/Iterable;)V

    .line 61
    :cond_10
    :goto_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v0, :cond_12

    .line 62
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->j:Lcom/android/tools/r8/internal/li0;

    if-eqz v1, :cond_11

    .line 63
    sget-object v2, Lcom/android/tools/r8/internal/li0;->e:Lcom/android/tools/r8/internal/li0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/li0;->a()Lcom/android/tools/r8/internal/ki0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ki0;->a(Lcom/android/tools/r8/internal/li0;)Lcom/android/tools/r8/internal/ki0;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ki0;->a(Lcom/android/tools/r8/internal/li0;)Lcom/android/tools/r8/internal/ki0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ki0;->b()Lcom/android/tools/r8/internal/li0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->j:Lcom/android/tools/r8/internal/li0;

    goto :goto_6

    .line 65
    :cond_11
    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->j:Lcom/android/tools/r8/internal/li0;

    .line 66
    :goto_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 67
    :cond_12
    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    return-object p0
.end method

.method public final addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->addRepeatedField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    return-object p1
.end method

.method public final b()Lcom/android/tools/r8/internal/Ug0;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Ug0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ug0;-><init>(Lcom/android/tools/r8/internal/Tg0;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->c:Lcom/android/tools/r8/internal/Xg0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->e:Lcom/android/tools/r8/internal/ij0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->f:Lcom/android/tools/r8/internal/tg0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->g:Lcom/android/tools/r8/internal/wh0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Af0;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->j:Lcom/android/tools/r8/internal/li0;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->onBuilt()V

    return-object v0
.end method

.method public final build()Lcom/android/tools/r8/internal/fW;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->b()Lcom/android/tools/r8/internal/Ug0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ug0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final build()Lcom/android/tools/r8/internal/kW;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->b()Lcom/android/tools/r8/internal/Ug0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ug0;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/android/tools/r8/internal/fW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Tg0;->b()Lcom/android/tools/r8/internal/Ug0;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Af0;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/tools/r8/internal/Af0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    iget v2, p0, Lcom/android/tools/r8/internal/Tg0;->b:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->getParentForChildren()Lcom/android/tools/r8/internal/gz;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Af0;-><init>(Ljava/util/List;ZLcom/android/tools/r8/internal/gz;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->h:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tg0;->i:Lcom/android/tools/r8/internal/Af0;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fz;->clone()Lcom/android/tools/r8/internal/fz;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Tg0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->G:Lcom/android/tools/r8/internal/Cl;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/android/tools/r8/internal/uz;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/vj0;->H:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/Ug0;

    const-class v2, Lcom/android/tools/r8/internal/Tg0;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ug0;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/tools/r8/internal/Ug0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/N0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ug0;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/tools/r8/internal/Ug0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/I0;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fz;->mergeUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    return-object p1
.end method

.method public final setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fz;->setField(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    return-object p1
.end method

.method public final setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/fz;->setUnknownFields(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/fz;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Tg0;

    return-object p1
.end method
