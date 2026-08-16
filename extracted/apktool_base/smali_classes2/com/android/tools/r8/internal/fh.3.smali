.class public final Lcom/android/tools/r8/internal/fh;
.super Lcom/android/tools/r8/internal/wz;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# static fields
.field public static final C:Lcom/android/tools/r8/internal/fh;

.field public static final D:Lcom/android/tools/r8/internal/Og;


# instance fields
.field public volatile A:Ljava/lang/String;

.field public B:B

.field public b:I

.field public c:I

.field public volatile d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/fh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fh;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    new-instance v0, Lcom/android/tools/r8/internal/Og;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Og;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/fh;->D:Lcom/android/tools/r8/internal/Og;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/wz;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lcom/android/tools/r8/internal/fh;->B:B

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->e:I

    .line 7
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    .line 9
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    .line 10
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    .line 11
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    .line 12
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    .line 13
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    .line 14
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    .line 15
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    .line 16
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    .line 17
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    .line 18
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    .line 19
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    .line 20
    iput v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    .line 21
    iput-object v0, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/android/tools/r8/internal/fh;-><init>()V

    .line 23
    invoke-static {p2}, Lcom/android/tools/r8/internal/Ng;->a(Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/kv0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 25
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/android/tools/r8/internal/wz;->parseUnknownField(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/kv0;Lcom/android/tools/r8/internal/zv;I)Z

    move-result v2

    if-nez v2, :cond_0

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

    .line 26
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 27
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->z:I

    goto :goto_0

    .line 28
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 29
    iput-object v2, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    goto :goto_0

    .line 30
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->y:I

    goto :goto_0

    .line 31
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 32
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->x:I

    goto :goto_0

    .line 33
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 34
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->w:I

    goto :goto_0

    .line 35
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 36
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->v:I

    goto :goto_0

    .line 37
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 38
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->u:I

    goto :goto_0

    .line 39
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 40
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->t:I

    goto :goto_0

    .line 41
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->s:I

    goto :goto_0

    .line 42
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 43
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->r:I

    goto :goto_0

    .line 44
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 45
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->q:I

    goto :goto_0

    .line 46
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 47
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->p:I

    goto :goto_0

    .line 48
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 49
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->o:I

    goto :goto_0

    .line 50
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 51
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->n:I

    goto :goto_0

    .line 52
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 53
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->m:I

    goto/16 :goto_0

    .line 54
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 55
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->l:I

    goto/16 :goto_0

    .line 56
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 57
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->k:I

    goto/16 :goto_0

    .line 58
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->j:I

    goto/16 :goto_0

    .line 59
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->i:I

    goto/16 :goto_0

    .line 60
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->h:I

    goto/16 :goto_0

    .line 61
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->g:I

    goto/16 :goto_0

    .line 62
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->f:I

    goto/16 :goto_0

    .line 63
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->f()I

    move-result v2

    .line 64
    iput v2, p0, Lcom/android/tools/r8/internal/fh;->e:I

    goto/16 :goto_0

    .line 65
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->r()Ljava/lang/String;

    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 67
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->c:I

    goto/16 :goto_0

    .line 68
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->t()I

    move-result v2

    iput v2, p0, Lcom/android/tools/r8/internal/fh;->b:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1a
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 69
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/MJ;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/MJ;-><init>(Ljava/io/IOException;)V

    .line 70
    iput-object p0, p2, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 71
    throw p2

    .line 72
    :goto_3
    iput-object p0, p1, Lcom/android/tools/r8/internal/MJ;->b:Lcom/android/tools/r8/internal/kW;

    .line 73
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    .line 76
    throw p1

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    .line 78
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wz;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_19
        0x10 -> :sswitch_18
        0x1a -> :sswitch_17
        0x20 -> :sswitch_16
        0x28 -> :sswitch_15
        0x30 -> :sswitch_14
        0x38 -> :sswitch_13
        0x40 -> :sswitch_12
        0x48 -> :sswitch_11
        0x50 -> :sswitch_10
        0x58 -> :sswitch_f
        0x60 -> :sswitch_e
        0x68 -> :sswitch_d
        0x70 -> :sswitch_c
        0x78 -> :sswitch_b
        0x80 -> :sswitch_a
        0x88 -> :sswitch_9
        0x90 -> :sswitch_8
        0x98 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xa8 -> :sswitch_5
        0xb0 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xc0 -> :sswitch_2
        0xca -> :sswitch_1
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Pg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/wz;-><init>(Lcom/android/tools/r8/internal/fz;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Lcom/android/tools/r8/internal/fh;->B:B

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pg;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Pg;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pg;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Pg;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Pg;->a(Lcom/android/tools/r8/internal/fh;)Lcom/android/tools/r8/internal/Pg;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/fh;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/K0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/fh;

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->b:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->b:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->c:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->c:I

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->e:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->e:I

    if-eq v1, v2, :cond_7

    return v3

    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->f:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->f:I

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->g:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->g:I

    if-eq v1, v2, :cond_9

    return v3

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->h:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->h:I

    if-eq v1, v2, :cond_a

    return v3

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->i:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->i:I

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->j:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->j:I

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->k:I

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->l:I

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->m:I

    if-eq v1, v2, :cond_f

    return v3

    :cond_f
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->n:I

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->o:I

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->p:I

    if-eq v1, v2, :cond_12

    return v3

    :cond_12
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->q:I

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->r:I

    if-eq v1, v2, :cond_14

    return v3

    :cond_14
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->s:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->s:I

    if-eq v1, v2, :cond_15

    return v3

    :cond_15
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->t:I

    if-eq v1, v2, :cond_16

    return v3

    :cond_16
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->u:I

    if-eq v1, v2, :cond_17

    return v3

    :cond_17
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->v:I

    if-eq v1, v2, :cond_18

    return v3

    :cond_18
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->w:I

    if-eq v1, v2, :cond_19

    return v3

    :cond_19
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->x:I

    if-eq v1, v2, :cond_1a

    return v3

    :cond_1a
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->y:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->y:I

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    iget v2, p1, Lcom/android/tools/r8/internal/fh;->z:I

    if-eq v1, v2, :cond_1c

    return v3

    :cond_1c
    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    if-eqz v1, :cond_1d

    goto :goto_2

    :cond_1d
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    :goto_2
    iget-object v2, p1, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    if-eqz v2, :cond_1e

    goto :goto_3

    :cond_1e
    check-cast v2, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    :cond_1f
    iget-object v1, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/pv0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v3

    :cond_20
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/K0;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->c:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->e:I

    sget-object v2, Lcom/android/tools/r8/internal/Ug;->c:Lcom/android/tools/r8/internal/Ug;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ug;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->e:I

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->f:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->g:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->h:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->i:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_8
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->j:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_9
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    sget-object v2, Lcom/android/tools/r8/internal/Zg;->c:Lcom/android/tools/r8/internal/Zg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Zg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_a
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    sget-object v2, Lcom/android/tools/r8/internal/Yg;->c:Lcom/android/tools/r8/internal/Yg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    sget-object v2, Lcom/android/tools/r8/internal/ah;->c:Lcom/android/tools/r8/internal/ah;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ah;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_c
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    sget-object v2, Lcom/android/tools/r8/internal/eh;->c:Lcom/android/tools/r8/internal/eh;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/eh;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_d

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    sget-object v2, Lcom/android/tools/r8/internal/Rg;->c:Lcom/android/tools/r8/internal/Rg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Rg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    const/16 v2, 0xe

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_e
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    sget-object v2, Lcom/android/tools/r8/internal/Xg;->c:Lcom/android/tools/r8/internal/Xg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Xg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_f
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    sget-object v2, Lcom/android/tools/r8/internal/dh;->c:Lcom/android/tools/r8/internal/dh;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dh;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_10
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    sget-object v2, Lcom/android/tools/r8/internal/ch;->c:Lcom/android/tools/r8/internal/ch;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ch;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_11

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_11
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->s:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_12
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    sget-object v2, Lcom/android/tools/r8/internal/bh;->c:Lcom/android/tools/r8/internal/bh;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bh;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_13
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    sget-object v2, Lcom/android/tools/r8/internal/Tg;->c:Lcom/android/tools/r8/internal/Tg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Tg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_14

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_14
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    sget-object v2, Lcom/android/tools/r8/internal/Sg;->c:Lcom/android/tools/r8/internal/Sg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Sg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_15
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    sget-object v2, Lcom/android/tools/r8/internal/Vg;->c:Lcom/android/tools/r8/internal/Vg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Vg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_16
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    sget-object v2, Lcom/android/tools/r8/internal/Wg;->c:Lcom/android/tools/r8/internal/Wg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Wg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_17

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_17
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->y:I

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Mg;->a(III)I

    move-result v0

    :cond_18
    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/wz;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    sget-object v2, Lcom/android/tools/r8/internal/Qg;->c:Lcom/android/tools/r8/internal/Qg;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Qg;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->b(I)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/tools/r8/internal/Lg;->a(III)I

    move-result v0

    :cond_1a
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
    sget-object v0, Lcom/android/tools/r8/internal/gh;->a:Lcom/android/tools/r8/internal/Cl;

    const/4 v1, 0x1

    const/16 v2, 0x30b

    const/16 v3, 0x25

    const/16 v4, 0x35

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Kg;->a(Lcom/android/tools/r8/internal/Cl;IIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->b:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->c:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    mul-int/2addr v1, v4

    iget v0, p0, Lcom/android/tools/r8/internal/fh;->e:I

    const/4 v2, 0x5

    invoke-static {v1, v0, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->f:I

    const/4 v2, 0x6

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->g:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->h:I

    const/16 v2, 0x8

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->i:I

    const/16 v2, 0x9

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->j:I

    const/16 v2, 0xa

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    const/16 v2, 0xb

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    const/16 v2, 0xd

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    const/16 v2, 0xe

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    const/16 v2, 0xf

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    const/16 v2, 0x10

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    const/16 v2, 0x11

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    const/16 v2, 0x12

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->s:I

    const/16 v2, 0x13

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    const/16 v2, 0x14

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    const/16 v2, 0x15

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    const/16 v2, 0x16

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    const/16 v2, 0x17

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    const/16 v2, 0x18

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->y:I

    const/16 v2, 0x1a

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    const/16 v2, 0x19

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/tools/r8/internal/Jg;->a(IIIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

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

    sget-object v0, Lcom/android/tools/r8/internal/gh;->b:Lcom/android/tools/r8/internal/uz;

    const-class v1, Lcom/android/tools/r8/internal/fh;

    const-class v2, Lcom/android/tools/r8/internal/Pg;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/uz;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/android/tools/r8/internal/uz;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/fh;->B:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/tools/r8/internal/fh;->B:B

    return v1
.end method

.method public final newBuilderForType()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/fh;->C:Lcom/android/tools/r8/internal/fh;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fh;->a()Lcom/android/tools/r8/internal/Pg;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType(Lcom/android/tools/r8/internal/gz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Pg;

    check-cast p1, Lcom/android/tools/r8/internal/dz;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Pg;-><init>(Lcom/android/tools/r8/internal/dz;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/eW;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fh;->a()Lcom/android/tools/r8/internal/Pg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/android/tools/r8/internal/jW;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fh;->a()Lcom/android/tools/r8/internal/Pg;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/android/tools/r8/internal/Ie;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/fh;->b:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fh;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->e:I

    sget-object v1, Lcom/android/tools/r8/internal/Ug;->c:Lcom/android/tools/r8/internal/Ug;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ug;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->f:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->g:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_5
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->h:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->i:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->j:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_8
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->k:I

    sget-object v1, Lcom/android/tools/r8/internal/Zg;->c:Lcom/android/tools/r8/internal/Zg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Zg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->l:I

    sget-object v1, Lcom/android/tools/r8/internal/Yg;->c:Lcom/android/tools/r8/internal/Yg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->m:I

    sget-object v1, Lcom/android/tools/r8/internal/ah;->c:Lcom/android/tools/r8/internal/ah;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ah;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_b
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->n:I

    sget-object v1, Lcom/android/tools/r8/internal/eh;->c:Lcom/android/tools/r8/internal/eh;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eh;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xd

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_c
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->o:I

    sget-object v1, Lcom/android/tools/r8/internal/Rg;->c:Lcom/android/tools/r8/internal/Rg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Rg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0xe

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_d
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->p:I

    sget-object v1, Lcom/android/tools/r8/internal/Xg;->c:Lcom/android/tools/r8/internal/Xg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Xg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/16 v0, 0xf

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_e
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->q:I

    sget-object v1, Lcom/android/tools/r8/internal/dh;->c:Lcom/android/tools/r8/internal/dh;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dh;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x10

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_f
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->r:I

    sget-object v1, Lcom/android/tools/r8/internal/ch;->c:Lcom/android/tools/r8/internal/ch;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ch;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/16 v0, 0x11

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_10
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->s:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_11
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->t:I

    sget-object v1, Lcom/android/tools/r8/internal/bh;->c:Lcom/android/tools/r8/internal/bh;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/bh;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/16 v0, 0x13

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_12
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->u:I

    sget-object v1, Lcom/android/tools/r8/internal/Tg;->c:Lcom/android/tools/r8/internal/Tg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Tg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_13

    const/16 v0, 0x14

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_13
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->v:I

    sget-object v1, Lcom/android/tools/r8/internal/Sg;->c:Lcom/android/tools/r8/internal/Sg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Sg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_14

    const/16 v0, 0x15

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->v:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_14
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->w:I

    sget-object v1, Lcom/android/tools/r8/internal/Vg;->c:Lcom/android/tools/r8/internal/Vg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Vg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_15

    const/16 v0, 0x16

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->w:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_15
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->x:I

    sget-object v1, Lcom/android/tools/r8/internal/Wg;->c:Lcom/android/tools/r8/internal/Wg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Wg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_16

    const/16 v0, 0x17

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->x:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_16
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->y:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ie;->e(II)V

    :cond_17
    iget-object v0, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/wz;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/tools/r8/internal/fh;->A:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/wz;->writeString(Lcom/android/tools/r8/internal/Ie;ILjava/lang/Object;)V

    :cond_18
    iget v0, p0, Lcom/android/tools/r8/internal/fh;->z:I

    sget-object v1, Lcom/android/tools/r8/internal/Qg;->c:Lcom/android/tools/r8/internal/Qg;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Qg;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_19

    const/16 v0, 0x1a

    iget v1, p0, Lcom/android/tools/r8/internal/fh;->z:I

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ie;->c(II)V

    :cond_19
    iget-object v0, p0, Lcom/android/tools/r8/internal/wz;->unknownFields:Lcom/android/tools/r8/internal/pv0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/pv0;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method
