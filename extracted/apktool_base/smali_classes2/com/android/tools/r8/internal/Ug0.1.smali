.class public final Lcom/android/tools/r8/internal/Ug0;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final j:Lcom/android/tools/r8/internal/Ug0;

.field public static final k:Lcom/android/tools/r8/internal/Sg0;


# instance fields
.field public b:Lcom/android/tools/r8/internal/Xg0;

.field public volatile c:Ljava/lang/String;

.field public d:Lcom/android/tools/r8/internal/ij0;

.field public e:Lcom/android/tools/r8/internal/tg0;

.field public f:Lcom/android/tools/r8/internal/wh0;

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/internal/li0;

.field public i:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ug0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ug0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    new-instance v0, Lcom/android/tools/r8/internal/Sg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ug0;->k:Lcom/android/tools/r8/internal/Sg0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/Ug0;->i:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    .line 6
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 7

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ug0;-><init>()V

    .line 8
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_c

    const/16 v5, 0x12

    if-eq v3, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x22

    if-eq v3, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/li0;->a()Lcom/android/tools/r8/internal/ki0;

    move-result-object v6

    .line 13
    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/li0;->f:Lcom/android/tools/r8/internal/ji0;

    .line 14
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/li0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/ki0;->a(Lcom/android/tools/r8/internal/li0;)Lcom/android/tools/r8/internal/ki0;

    .line 16
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/ki0;->b()Lcom/android/tools/r8/internal/li0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    move v2, v4

    .line 18
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    .line 19
    sget-object v4, Lcom/android/tools/r8/internal/Og0;->f:Lcom/android/tools/r8/internal/Mg0;

    .line 20
    invoke-virtual {p1, v4, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Og0;

    .line 21
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/wh0;->a()Lcom/android/tools/r8/internal/uh0;

    move-result-object v6

    .line 24
    :cond_6
    sget-object v3, Lcom/android/tools/r8/internal/wh0;->j:Lcom/android/tools/r8/internal/th0;

    .line 25
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/wh0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/uh0;->a(Lcom/android/tools/r8/internal/wh0;)Lcom/android/tools/r8/internal/uh0;

    .line 27
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/uh0;->b()Lcom/android/tools/r8/internal/wh0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    goto/16 :goto_0

    .line 28
    :cond_7
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/tg0;->a()Lcom/android/tools/r8/internal/sg0;

    move-result-object v6

    .line 30
    :cond_8
    sget-object v3, Lcom/android/tools/r8/internal/tg0;->f:Lcom/android/tools/r8/internal/rg0;

    .line 31
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/tg0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v6, :cond_0

    .line 32
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/sg0;->a(Lcom/android/tools/r8/internal/tg0;)Lcom/android/tools/r8/internal/sg0;

    .line 33
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/sg0;->b()Lcom/android/tools/r8/internal/tg0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    goto/16 :goto_0

    .line 34
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v3, :cond_a

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ij0;->a()Lcom/android/tools/r8/internal/gj0;

    move-result-object v6

    .line 36
    :cond_a
    sget-object v3, Lcom/android/tools/r8/internal/ij0;->h:Lcom/android/tools/r8/internal/fj0;

    .line 37
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/ij0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/gj0;->a(Lcom/android/tools/r8/internal/ij0;)Lcom/android/tools/r8/internal/gj0;

    .line 39
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/gj0;->b()Lcom/android/tools/r8/internal/ij0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    goto/16 :goto_0

    .line 40
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 42
    :cond_c
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v3, :cond_d

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Xg0;->a()Lcom/android/tools/r8/internal/Wg0;

    move-result-object v6

    .line 44
    :cond_d
    sget-object v3, Lcom/android/tools/r8/internal/Xg0;->e:Lcom/android/tools/r8/internal/Vg0;

    .line 45
    invoke-virtual {p1, v3, p2}, Lcom/android/tools/r8/internal/Be;->a(Lcom/android/tools/r8/internal/z50;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kW;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Xg0;

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/internal/Wg0;->a(Lcom/android/tools/r8/internal/Xg0;)Lcom/android/tools/r8/internal/Wg0;

    .line 47
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/Wg0;->b()Lcom/android/tools/r8/internal/Xg0;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    move v1, v4

    goto/16 :goto_0

    .line 48
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 49
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 50
    throw p2

    .line 51
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 52
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-eqz v2, :cond_f

    .line 53
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    .line 54
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 56
    throw p1

    :cond_10
    if-eqz v2, :cond_11

    .line 57
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    .line 58
    :cond_11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Tg0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/Ug0;->i:B

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/wz;->alwaysUseFieldBuilders:Z

    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Ug0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Ug0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v4, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eq v3, v5, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_6

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/tools/r8/internal/Xg0;->d:Lcom/android/tools/r8/internal/Xg0;

    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Xg0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v1, :cond_8

    move v3, v0

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v4, :cond_9

    move v5, v0

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    if-eq v3, v5, :cond_a

    return v2

    :cond_a
    if-eqz v1, :cond_c

    if-nez v4, :cond_b

    sget-object v4, Lcom/android/tools/r8/internal/ij0;->g:Lcom/android/tools/r8/internal/ij0;

    :cond_b
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/ij0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v1, :cond_d

    move v3, v0

    goto :goto_4

    :cond_d
    move v3, v2

    :goto_4
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v4, :cond_e

    move v5, v0

    goto :goto_5

    :cond_e
    move v5, v2

    :goto_5
    if-eq v3, v5, :cond_f

    return v2

    :cond_f
    if-eqz v1, :cond_11

    if-nez v4, :cond_10

    sget-object v4, Lcom/android/tools/r8/internal/tg0;->e:Lcom/android/tools/r8/internal/tg0;

    :cond_10
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/tg0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    :cond_13
    iget-object v3, p1, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-nez v3, :cond_14

    sget-object v3, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    :cond_14
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/wh0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v1, :cond_17

    move v3, v0

    goto :goto_6

    :cond_17
    move v3, v2

    :goto_6
    iget-object v4, p1, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v4, :cond_18

    move v5, v0

    goto :goto_7

    :cond_18
    move v5, v2

    :goto_7
    if-eq v3, v5, :cond_19

    return v2

    :cond_19
    if-eqz v1, :cond_1b

    if-nez v4, :cond_1a

    sget-object v4, Lcom/android/tools/r8/internal/li0;->e:Lcom/android/tools/r8/internal/li0;

    :cond_1a
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/li0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    return v2

    :cond_1c
    return v0
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

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/kW;

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/Ie;->a(ILcom/android/tools/r8/internal/kW;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv0;->getSerializedSize()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/android/tools/r8/internal/pv0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/vj0;->G:Lcom/android/tools/r8/internal/Cl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Xg0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ug0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v0, :cond_2

    const/4 v4, 0x3

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ij0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tg0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ug0;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    invoke-static {v1, v3, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/tools/r8/internal/wh0;->i:Lcom/android/tools/r8/internal/wh0;

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/wh0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x6

    invoke-static {v1, v3, v0, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v0, :cond_7

    const/4 v4, 0x7

    invoke-static {v1, v3, v4, v2}, Lcom/android/tools/r8/internal/qg0;->a(IIII)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/li0;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    mul-int/lit8 v1, v1, 0x1d

    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pv0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/P0;->memoizedHashCode:I

    return v0
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
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/Ug0;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/Ug0;->i:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Tg0;-><init>()V

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Tg0;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Tg0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Tg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Ug0;->j:Lcom/android/tools/r8/internal/Ug0;

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Tg0;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Tg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Tg0;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Tg0;->a(Lcom/android/tools/r8/internal/Ug0;)Lcom/android/tools/r8/internal/Tg0;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->b:Lcom/android/tools/r8/internal/Xg0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->d:Lcom/android/tools/r8/internal/ij0;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->e:Lcom/android/tools/r8/internal/tg0;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->f:Lcom/android/tools/r8/internal/wh0;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/kW;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ug0;->h:Lcom/android/tools/r8/internal/li0;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->b(ILcom/android/tools/r8/internal/kW;)V

    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
