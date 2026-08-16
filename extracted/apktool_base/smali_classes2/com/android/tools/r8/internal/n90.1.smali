.class public final Lcom/android/tools/r8/internal/n90;
.super Lcom/android/tools/r8/internal/Ty;
.source "SourceFile"


# static fields
.field public static final v:Lcom/android/tools/r8/internal/n90;

.field public static final w:Lcom/android/tools/r8/internal/l90;


# instance fields
.field public final c:Lcom/android/tools/r8/internal/l8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/android/tools/r8/internal/M90;

.field public i:I

.field public j:Ljava/util/List;

.field public k:Lcom/android/tools/r8/internal/M90;

.field public l:I

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public o:I

.field public p:Ljava/util/List;

.field public q:Lcom/android/tools/r8/internal/W90;

.field public r:Ljava/util/List;

.field public s:Lcom/android/tools/r8/internal/Y80;

.field public t:B

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/l90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/l90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/n90;->w:Lcom/android/tools/r8/internal/l90;

    new-instance v0, Lcom/android/tools/r8/internal/n90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/n90;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/n90;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->o:I

    .line 9
    iput-byte v0, p0, Lcom/android/tools/r8/internal/n90;->t:B

    .line 10
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->u:I

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    iput-object v0, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V
    .locals 13

    .line 12
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ty;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->o:I

    .line 14
    iput-byte v0, p0, Lcom/android/tools/r8/internal/n90;->t:B

    .line 15
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->u:I

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/n90;->f()V

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/j8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j8;-><init>()V

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/He;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/16 v5, 0x400

    const/16 v6, 0x20

    const/16 v7, 0x200

    const/16 v8, 0x1000

    const/16 v9, 0x100

    if-nez v3, :cond_18

    .line 19
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v10

    const/4 v11, 0x0

    sparse-switch v10, :sswitch_data_0

    .line 20
    invoke-virtual {p0, p1, v1, p2, v10}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/yv;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    .line 21
    :sswitch_0
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v10, v9

    if-ne v10, v9, :cond_1

    .line 22
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v11, Lcom/android/tools/r8/internal/X80;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/X80;-><init>()V

    .line 24
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/X80;->a(Lcom/android/tools/r8/internal/Y80;)Lcom/android/tools/r8/internal/X80;

    move-result-object v11

    .line 25
    :cond_1
    sget-object v10, Lcom/android/tools/r8/internal/Y80;->g:Lcom/android/tools/r8/internal/W80;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/Y80;

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    if-eqz v11, :cond_2

    .line 26
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/X80;->a(Lcom/android/tools/r8/internal/Y80;)Lcom/android/tools/r8/internal/X80;

    .line 27
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/X80;->c()Lcom/android/tools/r8/internal/Y80;

    move-result-object v10

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 28
    :cond_2
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/2addr v10, v9

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    goto :goto_0

    .line 29
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 30
    invoke-virtual {p1, v10}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v10

    and-int/lit16 v11, v4, 0x1000

    if-eq v11, v8, :cond_3

    .line 31
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v11

    if-lez v11, :cond_3

    .line 32
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    or-int/lit16 v4, v4, 0x1000

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v11

    if-lez v11, :cond_4

    .line 34
    iget-object v11, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v12

    .line 36
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_4
    iput v10, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_0

    :sswitch_2
    and-int/lit16 v10, v4, 0x1000

    if-eq v10, v8, :cond_5

    .line 39
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    or-int/lit16 v4, v4, 0x1000

    .line 40
    :cond_5
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    .line 42
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :sswitch_3
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v12, 0x80

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_6

    .line 44
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v10}, Lcom/android/tools/r8/internal/W90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    move-result-object v11

    .line 46
    :cond_6
    sget-object v10, Lcom/android/tools/r8/internal/W90;->i:Lcom/android/tools/r8/internal/U90;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W90;

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    if-eqz v11, :cond_7

    .line 47
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/V90;->a(Lcom/android/tools/r8/internal/W90;)Lcom/android/tools/r8/internal/V90;

    .line 48
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/V90;->c()Lcom/android/tools/r8/internal/W90;

    move-result-object v10

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    .line 49
    :cond_7
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/2addr v10, v12

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    goto/16 :goto_0

    .line 50
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 51
    invoke-virtual {p1, v10}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v10

    and-int/lit16 v11, v4, 0x200

    if-eq v11, v7, :cond_8

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v11

    if-lez v11, :cond_8

    .line 53
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    .line 54
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->a()I

    move-result v11

    if-lez v11, :cond_9

    .line 55
    iget-object v11, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v12

    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    :cond_9
    iput v10, p1, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 59
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->j()V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit16 v10, v4, 0x200

    if-eq v10, v7, :cond_a

    .line 60
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    .line 61
    :cond_a
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v11

    .line 63
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    and-int/lit16 v10, v4, 0x100

    if-eq v10, v9, :cond_b

    .line 64
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 65
    :cond_b
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    sget-object v11, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v11, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    :sswitch_7
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/2addr v10, v2

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 68
    iput v10, p0, Lcom/android/tools/r8/internal/n90;->e:I

    goto/16 :goto_0

    .line 69
    :sswitch_8
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/lit8 v10, v10, 0x40

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    .line 70
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 71
    iput v10, p0, Lcom/android/tools/r8/internal/n90;->l:I

    goto/16 :goto_0

    .line 72
    :sswitch_9
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 74
    iput v10, p0, Lcom/android/tools/r8/internal/n90;->i:I

    goto/16 :goto_0

    :sswitch_a
    and-int/lit16 v10, v4, 0x400

    if-eq v10, v5, :cond_c

    .line 75
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    .line 76
    :cond_c
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    sget-object v11, Lcom/android/tools/r8/internal/Z90;->n:Lcom/android/tools/r8/internal/X90;

    invoke-virtual {p1, v11, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :sswitch_b
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v10, v6

    if-ne v10, v6, :cond_d

    .line 78
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-static {v10}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v11

    .line 80
    :cond_d
    sget-object v10, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M90;

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    if-eqz v11, :cond_e

    .line 81
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 82
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v10

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    .line 83
    :cond_e
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/2addr v10, v6

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v10, v4, 0x20

    if-eq v10, v6, :cond_f

    .line 84
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 85
    :cond_f
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    sget-object v11, Lcom/android/tools/r8/internal/T90;->o:Lcom/android/tools/r8/internal/Q90;

    invoke-virtual {p1, v11, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    :sswitch_d
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v12, 0x8

    and-int/2addr v10, v12

    if-ne v10, v12, :cond_10

    .line 87
    iget-object v10, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v10}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v11

    .line 89
    :cond_10
    sget-object v10, Lcom/android/tools/r8/internal/M90;->v:Lcom/android/tools/r8/internal/G90;

    invoke-virtual {p1, v10, p2}, Lcom/android/tools/r8/internal/Ae;->a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M90;

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    if-eqz v11, :cond_11

    .line 90
    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/L90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    .line 91
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/L90;->d()Lcom/android/tools/r8/internal/M90;

    move-result-object v10

    iput-object v10, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    .line 92
    :cond_11
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/2addr v10, v12

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    goto/16 :goto_0

    .line 93
    :sswitch_e
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 95
    iput v10, p0, Lcom/android/tools/r8/internal/n90;->g:I

    goto/16 :goto_0

    .line 96
    :sswitch_f
    iget v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/tools/r8/internal/n90;->d:I

    .line 97
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v10

    .line 98
    iput v10, p0, Lcom/android/tools/r8/internal/n90;->f:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/LJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_10
    move v3, v2

    goto/16 :goto_0

    .line 99
    :goto_4
    :try_start_1
    new-instance p2, Lcom/android/tools/r8/internal/LJ;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object p0, p2, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 102
    throw p2

    .line 103
    :goto_5
    iput-object p0, p1, Lcom/android/tools/r8/internal/LJ;->b:Lcom/android/tools/r8/internal/O0;

    .line 104
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v6, :cond_12

    .line 105
    iget-object p2, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    :cond_12
    and-int/lit16 p2, v4, 0x400

    if-ne p2, v5, :cond_13

    .line 106
    iget-object p2, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    :cond_13
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v9, :cond_14

    .line 107
    iget-object p2, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    :cond_14
    and-int/lit16 p2, v4, 0x200

    if-ne p2, v7, :cond_15

    .line 108
    iget-object p2, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    :cond_15
    and-int/lit16 p2, v4, 0x1000

    if-ne p2, v8, :cond_16

    .line 109
    iget-object p2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 110
    :cond_16
    :try_start_2
    iget-object p2, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p2, :cond_17

    .line 111
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    .line 113
    throw p1

    .line 114
    :catch_2
    :cond_17
    :goto_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    .line 115
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Jw;->a()V

    .line 116
    throw p1

    :cond_18
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v6, :cond_19

    .line 117
    iget-object p1, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    :cond_19
    and-int/lit16 p1, v4, 0x400

    if-ne p1, v5, :cond_1a

    .line 118
    iget-object p1, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    :cond_1a
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v9, :cond_1b

    .line 119
    iget-object p1, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    :cond_1b
    and-int/lit16 p1, v4, 0x200

    if-ne p1, v7, :cond_1c

    .line 120
    iget-object p1, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    :cond_1c
    and-int/lit16 p1, v4, 0x1000

    if-ne p1, v8, :cond_1d

    .line 121
    iget-object p1, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 122
    :cond_1d
    :try_start_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_1e

    .line 123
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/He;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p1

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    .line 125
    throw p1

    .line 126
    :catch_3
    :cond_1e
    :goto_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/j8;->c()Lcom/android/tools/r8/internal/l8;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    .line 127
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jw;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x52 -> :sswitch_6
        0x58 -> :sswitch_5
        0x5a -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/m90;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ty;-><init>(Lcom/android/tools/r8/internal/Ry;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->o:I

    .line 3
    iput-byte v0, p0, Lcom/android/tools/r8/internal/n90;->t:B

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/n90;->u:I

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qy;->b:Lcom/android/tools/r8/internal/l8;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 9

    .line 49
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 51
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->f:I

    .line 52
    invoke-static {v3, v0}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    :goto_0
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 54
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->g:I

    .line 55
    invoke-static {v1, v4}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 56
    :cond_2
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    .line 57
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    const/4 v7, 0x3

    .line 58
    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    move v4, v2

    .line 59
    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 60
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    .line 61
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/O0;

    invoke-static {v5, v7}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_4
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    .line 63
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    const/4 v7, 0x5

    .line 64
    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    move v4, v2

    .line 65
    :goto_2
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 66
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    .line 67
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/O0;

    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 68
    :cond_6
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    .line 69
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->i:I

    const/4 v7, 0x7

    .line 70
    invoke-static {v7, v4}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 71
    :cond_7
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    .line 72
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->l:I

    .line 73
    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 74
    :cond_8
    iget v4, p0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_9

    .line 75
    iget v3, p0, Lcom/android/tools/r8/internal/n90;->e:I

    const/16 v4, 0x9

    .line 76
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    move v3, v2

    .line 77
    :goto_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0xa

    if-ge v3, v4, :cond_a

    .line 78
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/O0;

    invoke-static {v6, v4}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move v3, v2

    move v4, v3

    .line 80
    :goto_4
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_c

    .line 81
    iget-object v7, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 82
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_b

    .line 83
    invoke-static {v7}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v7

    goto :goto_5

    :cond_b
    move v7, v6

    :goto_5
    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    add-int/2addr v0, v4

    .line 84
    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 85
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    if-ltz v4, :cond_d

    .line 86
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v3

    goto :goto_6

    :cond_d
    move v3, v6

    :goto_6
    add-int/2addr v0, v3

    .line 87
    :cond_e
    iput v4, p0, Lcom/android/tools/r8/internal/n90;->o:I

    .line 88
    iget v3, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v4, 0x80

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_f

    .line 89
    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    const/16 v4, 0x1e

    .line 90
    invoke-static {v4, v3}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_f
    move v3, v2

    .line 91
    :goto_7
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_11

    .line 92
    iget-object v4, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 93
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_10

    .line 94
    invoke-static {v4}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v4

    goto :goto_8

    :cond_10
    move v4, v6

    :goto_8
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    add-int/2addr v0, v3

    .line 95
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    .line 97
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    .line 99
    invoke-static {v5, v0}, Lcom/android/tools/r8/internal/He;->a(ILcom/android/tools/r8/internal/O0;)I

    move-result v0

    add-int/2addr v2, v0

    .line 100
    :cond_12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->e()I

    move-result v0

    add-int/2addr v0, v2

    .line 101
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 102
    iput v1, p0, Lcom/android/tools/r8/internal/n90;->u:I

    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/He;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/n90;->a()I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Sy;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sy;-><init>(Lcom/android/tools/r8/internal/Ty;)V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->f:I

    .line 5
    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/4 v5, 0x4

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->g:I

    .line 9
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 11
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_2
    move v1, v4

    .line 13
    :goto_0
    iget-object v6, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 14
    iget-object v6, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p1, v5, v6}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v5, 0x20

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_4

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    const/4 v6, 0x5

    invoke-virtual {p1, v6, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_4
    move v1, v4

    .line 17
    :goto_1
    iget-object v6, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 18
    iget-object v6, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/O0;

    const/4 v7, 0x6

    invoke-virtual {p1, v7, v6}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v6, 0x10

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_6

    .line 20
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->i:I

    const/4 v6, 0x7

    .line 21
    invoke-virtual {p1, v6, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 23
    :cond_6
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v6, 0x40

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_7

    .line 24
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->l:I

    .line 25
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    .line 27
    :cond_7
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 28
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->e:I

    const/16 v2, 0x9

    .line 29
    invoke-virtual {p1, v2, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->d(I)V

    :cond_8
    move v1, v4

    .line 31
    :goto_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/O0;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v2}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0x5a

    .line 35
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 36
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->o:I

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/He;->g(I)V

    :cond_a
    move v1, v4

    .line 37
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39
    :cond_b
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 40
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    const/16 v2, 0x1e

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_c
    move v1, v4

    .line 41
    :goto_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 42
    iget-object v2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x1f

    .line 43
    invoke-virtual {p1, v3, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 44
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/He;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 45
    :cond_d
    iget v1, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    invoke-virtual {p1, v5, v1}, Lcom/android/tools/r8/internal/He;->b(ILcom/android/tools/r8/internal/O0;)V

    :cond_e
    const/16 v1, 0x4a38

    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Sy;->a(ILcom/android/tools/r8/internal/He;)V

    .line 48
    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->c:Lcom/android/tools/r8/internal/l8;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/m90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m90;-><init>()V

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/Qy;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/m90;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/m90;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/m90;->a(Lcom/android/tools/r8/internal/n90;)Lcom/android/tools/r8/internal/m90;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/tools/r8/internal/n90;->e:I

    iput v0, p0, Lcom/android/tools/r8/internal/n90;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/n90;->g:I

    sget-object v1, Lcom/android/tools/r8/internal/M90;->u:Lcom/android/tools/r8/internal/M90;

    iput-object v1, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/n90;->i:I

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    iput v0, p0, Lcom/android/tools/r8/internal/n90;->l:I

    iput-object v2, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    iput-object v2, p0, Lcom/android/tools/r8/internal/n90;->n:Ljava/util/List;

    iput-object v2, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/W90;->h:Lcom/android/tools/r8/internal/W90;

    iput-object v0, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    iput-object v2, p0, Lcom/android/tools/r8/internal/n90;->r:Ljava/util/List;

    sget-object v0, Lcom/android/tools/r8/internal/Y80;->f:Lcom/android/tools/r8/internal/Y80;

    iput-object v0, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    return-void
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/O0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/n90;->v:Lcom/android/tools/r8/internal/n90;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    iget-byte v0, p0, Lcom/android/tools/r8/internal/n90;->t:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->h:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/T90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/T90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->k:Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_5
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/tools/r8/internal/n90;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Z90;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Z90;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->q:Lcom/android/tools/r8/internal/W90;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W90;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/n90;->d:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/android/tools/r8/internal/n90;->s:Lcom/android/tools/r8/internal/Y80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y80;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ty;->d()Z

    move-result v0

    if-nez v0, :cond_c

    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2

    :cond_c
    iput-byte v1, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v1

    :cond_d
    iput-byte v2, p0, Lcom/android/tools/r8/internal/n90;->t:B

    return v2
.end method
