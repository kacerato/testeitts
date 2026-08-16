.class public LPl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# static fields
.field public static final u:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field public g:LQl/a;

.field public h:LBi/y;

.field public i:[[B

.field public j:[[B

.field public k:[[B

.field public l:LPl/a;

.field public m:I

.field public n:I

.field public o:Z

.field public p:LPl/f;

.field public q:[I

.field public r:[I

.field public s:[I

.field public t:LPl/b;


# direct methods
.method public constructor <init>(LPl/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LPl/c;->o:Z

    iput-object p1, p0, LPl/c;->l:LPl/a;

    invoke-interface {p1}, LPl/a;->get()LBi/y;

    move-result-object p1

    iput-object p1, p0, LPl/c;->h:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPl/c;->m:I

    new-instance p1, LQl/a;

    iget-object v0, p0, LPl/c;->h:LBi/y;

    invoke-direct {p1, v0}, LQl/a;-><init>(LBi/y;)V

    iput-object p1, p0, LPl/c;->g:LQl/a;

    return-void
.end method

.method private c()LBi/c;
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, LPl/c;->o:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, LPl/c;->h()V

    :cond_0
    iget v1, v0, LPl/c;->n:I

    new-array v5, v1, [[[B

    add-int/lit8 v2, v1, -0x1

    new-array v6, v2, [[[B

    new-array v7, v1, [[LPl/n;

    add-int/lit8 v2, v1, -0x1

    new-array v8, v2, [[LPl/n;

    new-array v9, v1, [Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    new-array v10, v2, [Ljava/util/Vector;

    new-array v11, v1, [[Ljava/util/Vector;

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v12, v1, [[Ljava/util/Vector;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget v4, v0, LPl/c;->n:I

    const/4 v13, 0x2

    if-ge v3, v4, :cond_3

    iget-object v4, v0, LPl/c;->q:[I

    aget v4, v4, v3

    iget v14, v0, LPl/c;->m:I

    new-array v15, v13, [I

    aput v14, v15, v2

    aput v4, v15, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    aput-object v14, v5, v3

    iget-object v14, v0, LPl/c;->q:[I

    aget v14, v14, v3

    iget-object v15, v0, LPl/c;->s:[I

    aget v15, v15, v3

    sub-int v15, v14, v15

    new-array v15, v15, [LPl/n;

    aput-object v15, v7, v3

    if-lez v3, :cond_1

    add-int/lit8 v15, v3, -0x1

    iget v1, v0, LPl/c;->m:I

    new-array v13, v13, [I

    aput v1, v13, v2

    const/4 v1, 0x0

    aput v14, v13, v1

    invoke-static {v4, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v6, v15

    iget-object v1, v0, LPl/c;->q:[I

    aget v1, v1, v3

    iget-object v4, v0, LPl/c;->s:[I

    aget v4, v4, v3

    sub-int/2addr v1, v4

    new-array v1, v1, [LPl/n;

    aput-object v1, v8, v15

    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v9, v3

    if-lez v3, :cond_2

    add-int/lit8 v1, v3, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v10, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, v0, LPl/c;->m:I

    new-array v3, v13, [I

    aput v1, v3, v2

    const/4 v1, 0x0

    aput v4, v3, v1

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iget v14, v0, LPl/c;->n:I

    sub-int/2addr v14, v2

    iget v15, v0, LPl/c;->m:I

    move-object/from16 v17, v8

    new-array v8, v13, [I

    aput v15, v8, v2

    aput v14, v8, v1

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, [[B

    iget v8, v0, LPl/c;->n:I

    iget v15, v0, LPl/c;->m:I

    move-object/from16 v18, v14

    new-array v14, v13, [I

    aput v15, v14, v2

    aput v8, v14, v1

    invoke-static {v4, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    move v8, v1

    :goto_1
    iget v14, v0, LPl/c;->n:I

    if-ge v8, v14, :cond_4

    iget-object v14, v0, LPl/c;->i:[[B

    aget-object v14, v14, v8

    aget-object v15, v4, v8

    iget v13, v0, LPl/c;->m:I

    invoke-static {v14, v1, v15, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x2

    goto :goto_1

    :cond_4
    sub-int/2addr v14, v2

    iget v8, v0, LPl/c;->m:I

    const/4 v13, 0x2

    new-array v15, v13, [I

    aput v8, v15, v2

    aput v14, v15, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, LPl/c;->k:[[B

    iget v1, v0, LPl/c;->n:I

    sub-int/2addr v1, v2

    :goto_2
    if-ltz v1, :cond_7

    iget v8, v0, LPl/c;->n:I

    sub-int/2addr v8, v2

    if-ne v1, v8, :cond_5

    aget-object v8, v9, v1

    aget-object v13, v4, v1

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v8, v13, v1}, LPl/c;->d([BLjava/util/Vector;[BI)LPl/i;

    move-result-object v8

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v1, 0x1

    aget-object v8, v3, v8

    aget-object v13, v9, v1

    aget-object v14, v4, v1

    invoke-virtual {v0, v8, v13, v14, v1}, LPl/c;->d([BLjava/util/Vector;[BI)LPl/i;

    move-result-object v8

    :goto_3
    const/4 v13, 0x0

    :goto_4
    iget-object v14, v0, LPl/c;->q:[I

    aget v14, v14, v1

    if-ge v13, v14, :cond_6

    invoke-virtual {v8}, LPl/i;->a()[[B

    move-result-object v14

    aget-object v14, v14, v13

    aget-object v15, v5, v1

    aget-object v15, v15, v13

    iget v2, v0, LPl/c;->m:I

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-static {v14, v9, v15, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v20

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-virtual {v8}, LPl/i;->b()[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-virtual {v8}, LPl/i;->g()[LPl/n;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {v8}, LPl/i;->c()[B

    move-result-object v2

    aget-object v8, v3, v1

    iget v13, v0, LPl/c;->m:I

    invoke-static {v2, v9, v8, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v9, v20

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v20, v9

    iget v1, v0, LPl/c;->n:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    :goto_5
    if-ltz v1, :cond_9

    aget-object v2, v10, v1

    add-int/lit8 v8, v1, 0x1

    aget-object v9, v4, v8

    invoke-virtual {v0, v2, v9, v8}, LPl/c;->e(Ljava/util/Vector;[BI)LPl/i;

    move-result-object v2

    const/4 v9, 0x0

    :goto_6
    iget-object v13, v0, LPl/c;->q:[I

    aget v13, v13, v8

    if-ge v9, v13, :cond_8

    invoke-virtual {v2}, LPl/i;->a()[[B

    move-result-object v13

    aget-object v13, v13, v9

    aget-object v14, v6, v1

    aget-object v14, v14, v9

    iget v15, v0, LPl/c;->m:I

    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-static {v13, v11, v14, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v19

    goto :goto_6

    :cond_8
    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-virtual {v2}, LPl/i;->b()[Ljava/util/Vector;

    move-result-object v9

    aput-object v9, v12, v1

    invoke-virtual {v2}, LPl/i;->g()[LPl/n;

    move-result-object v9

    aput-object v9, v17, v1

    invoke-virtual {v2}, LPl/i;->c()[B

    move-result-object v2

    aget-object v9, v18, v1

    iget v13, v0, LPl/c;->m:I

    invoke-static {v2, v11, v9, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v2, v4, v8

    iget-object v8, v0, LPl/c;->j:[[B

    aget-object v8, v8, v1

    iget v9, v0, LPl/c;->m:I

    invoke-static {v2, v11, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v11, v19

    goto :goto_5

    :cond_9
    move-object/from16 v19, v11

    const/4 v11, 0x0

    new-instance v1, LPl/h;

    aget-object v2, v3, v11

    iget-object v3, v0, LPl/c;->p:LPl/f;

    invoke-direct {v1, v2, v3}, LPl/h;-><init>([BLPl/f;)V

    new-instance v15, LPl/g;

    iget-object v3, v0, LPl/c;->i:[[B

    iget-object v4, v0, LPl/c;->j:[[B

    iget-object v14, v0, LPl/c;->k:[[B

    iget-object v13, v0, LPl/c;->p:LPl/f;

    iget-object v11, v0, LPl/c;->l:LPl/a;

    move-object v2, v15

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    move-object/from16 v16, v11

    move-object/from16 v11, v19

    move-object/from16 v17, v13

    move-object/from16 v13, v18

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v16}, LPl/g;-><init>([[B[[B[[[B[[[B[[LPl/n;[[LPl/n;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLPl/f;LPl/a;)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, LPl/c;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-virtual {p0, p1}, LPl/c;->g(LBi/G;)V

    return-void
.end method

.method public final d([BLjava/util/Vector;[BI)LPl/i;
    .locals 7

    iget v0, p0, LPl/c;->m:I

    new-array v1, v0, [B

    new-array v0, v0, [B

    iget-object v0, p0, LPl/c;->g:LQl/a;

    invoke-virtual {v0, p3}, LQl/a;->c([B)[B

    move-result-object v0

    new-instance v1, LPl/i;

    iget-object v2, p0, LPl/c;->q:[I

    aget v2, v2, p4

    iget-object v3, p0, LPl/c;->s:[I

    aget v3, v3, p4

    iget-object v4, p0, LPl/c;->l:LPl/a;

    invoke-direct {v1, v2, v3, v4}, LPl/i;-><init>(IILPl/a;)V

    invoke-virtual {v1, p2}, LPl/i;->h(Ljava/util/Vector;)V

    iget p2, p0, LPl/c;->n:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    if-ne p4, p2, :cond_0

    new-instance p1, LQl/d;

    iget-object p2, p0, LPl/c;->l:LPl/a;

    invoke-interface {p2}, LPl/a;->get()LBi/y;

    move-result-object p2

    iget-object v3, p0, LPl/c;->r:[I

    aget v3, v3, p4

    invoke-direct {p1, v0, p2, v3}, LQl/d;-><init>([BLBi/y;I)V

    invoke-virtual {p1}, LQl/d;->c()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, LQl/d;

    iget-object v3, p0, LPl/c;->l:LPl/a;

    invoke-interface {v3}, LPl/a;->get()LBi/y;

    move-result-object v3

    iget-object v4, p0, LPl/c;->r:[I

    aget v4, v4, p4

    invoke-direct {p2, v0, v3, v4}, LQl/d;-><init>([BLBi/y;I)V

    iget-object v0, p0, LPl/c;->k:[[B

    invoke-virtual {p2, p1}, LQl/d;->d([B)[B

    move-result-object p2

    aput-object p2, v0, p4

    new-instance p2, LQl/c;

    iget-object v0, p0, LPl/c;->l:LPl/a;

    invoke-interface {v0}, LPl/a;->get()LBi/y;

    move-result-object v0

    iget-object v3, p0, LPl/c;->r:[I

    aget v3, v3, p4

    invoke-direct {p2, v0, v3}, LQl/c;-><init>(LBi/y;I)V

    iget-object v0, p0, LPl/c;->k:[[B

    aget-object v0, v0, p4

    invoke-virtual {p2, p1, v0}, LQl/c;->a([B[B)[B

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, LPl/i;->j([B)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    move v0, v2

    :goto_1
    iget-object v3, p0, LPl/c;->q:[I

    aget v3, v3, p4

    shl-int v4, v2, v3

    if-ge v0, v4, :cond_2

    if-ne v0, p1, :cond_1

    iget-object v4, p0, LPl/c;->s:[I

    aget v4, v4, p4

    sub-int/2addr v3, v4

    if-ge p2, v3, :cond_1

    invoke-virtual {v1, p3, p2}, LPl/i;->i([BI)V

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, 0x1

    :cond_1
    iget-object v3, p0, LPl/c;->g:LQl/a;

    invoke-virtual {v3, p3}, LQl/a;->c([B)[B

    move-result-object v3

    new-instance v4, LQl/d;

    iget-object v5, p0, LPl/c;->l:LPl/a;

    invoke-interface {v5}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, p0, LPl/c;->r:[I

    aget v6, v6, p4

    invoke-direct {v4, v3, v5, v6}, LQl/d;-><init>([BLBi/y;I)V

    invoke-virtual {v4}, LQl/d;->c()[B

    move-result-object v3

    invoke-virtual {v1, v3}, LPl/i;->j([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, LPl/i;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Ljava/util/Vector;[BI)LPl/i;
    .locals 7

    iget v0, p0, LPl/c;->n:I

    new-array v0, v0, [B

    new-instance v0, LPl/i;

    iget-object v1, p0, LPl/c;->q:[I

    aget v1, v1, p3

    iget-object v2, p0, LPl/c;->s:[I

    aget v2, v2, p3

    iget-object v3, p0, LPl/c;->l:LPl/a;

    invoke-direct {v0, v1, v2, v3}, LPl/i;-><init>(IILPl/a;)V

    invoke-virtual {v0, p1}, LPl/i;->h(Ljava/util/Vector;)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LPl/c;->q:[I

    aget v3, v3, p3

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    if-ge v1, v4, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v4, p0, LPl/c;->s:[I

    aget v4, v4, p3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, p2, v2}, LPl/i;->i([BI)V

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v3, p0, LPl/c;->g:LQl/a;

    invoke-virtual {v3, p2}, LQl/a;->c([B)[B

    move-result-object v3

    new-instance v4, LQl/d;

    iget-object v5, p0, LPl/c;->l:LPl/a;

    invoke-interface {v5}, LPl/a;->get()LBi/y;

    move-result-object v5

    iget-object v6, p0, LPl/c;->r:[I

    aget v6, v6, p3

    invoke-direct {v4, v3, v5, v6}, LQl/d;-><init>([BLBi/y;I)V

    invoke-virtual {v4}, LQl/d;->c()[B

    move-result-object v3

    invoke-virtual {v0, v3}, LPl/i;->j([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LPl/i;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(ILjava/security/SecureRandom;)V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    filled-new-array {v2}, [I

    move-result-object p1

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v1}, [I

    move-result-object v1

    new-instance v2, LPl/b;

    new-instance v3, LPl/f;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1, v0, v1}, LPl/f;-><init>(I[I[I[I)V

    invoke-direct {v2, p2, v3}, LPl/b;-><init>(Ljava/security/SecureRandom;LPl/f;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    const/4 v4, 0x4

    if-gt p1, v3, :cond_1

    filled-new-array {v2, v2}, [I

    move-result-object p1

    const/4 v0, 0x5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    filled-new-array {v1, v1}, [I

    move-result-object v2

    new-instance v3, LPl/b;

    new-instance v4, LPl/f;

    invoke-direct {v4, v1, p1, v0, v2}, LPl/f;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, LPl/b;-><init>(Ljava/security/SecureRandom;LPl/f;)V

    move-object v2, v3

    goto :goto_0

    :cond_1
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object p1

    const/16 v2, 0x9

    filled-new-array {v2, v2, v2, v0}, [I

    move-result-object v0

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    new-instance v2, LPl/b;

    new-instance v3, LPl/f;

    invoke-direct {v3, v4, p1, v0, v1}, LPl/f;-><init>(I[I[I[I)V

    invoke-direct {v2, p2, v3}, LPl/b;-><init>(Ljava/security/SecureRandom;LPl/f;)V

    :goto_0
    invoke-virtual {p0, v2}, LPl/c;->g(LBi/G;)V

    return-void
.end method

.method public g(LBi/G;)V
    .locals 6

    move-object v0, p1

    check-cast v0, LPl/b;

    iput-object v0, p0, LPl/c;->t:LPl/b;

    new-instance v1, LPl/f;

    invoke-virtual {v0}, LPl/b;->c()LPl/f;

    move-result-object v0

    invoke-virtual {v0}, LPl/f;->c()I

    move-result v0

    iget-object v2, p0, LPl/c;->t:LPl/b;

    invoke-virtual {v2}, LPl/b;->c()LPl/f;

    move-result-object v2

    invoke-virtual {v2}, LPl/f;->a()[I

    move-result-object v2

    iget-object v3, p0, LPl/c;->t:LPl/b;

    invoke-virtual {v3}, LPl/b;->c()LPl/f;

    move-result-object v3

    invoke-virtual {v3}, LPl/f;->d()[I

    move-result-object v3

    iget-object v4, p0, LPl/c;->t:LPl/b;

    invoke-virtual {v4}, LPl/b;->c()LPl/f;

    move-result-object v4

    invoke-virtual {v4}, LPl/f;->b()[I

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, LPl/f;-><init>(I[I[I[I)V

    iput-object v1, p0, LPl/c;->p:LPl/f;

    invoke-virtual {v1}, LPl/f;->c()I

    move-result v0

    iput v0, p0, LPl/c;->n:I

    iget-object v0, p0, LPl/c;->p:LPl/f;

    invoke-virtual {v0}, LPl/f;->a()[I

    move-result-object v0

    iput-object v0, p0, LPl/c;->q:[I

    iget-object v0, p0, LPl/c;->p:LPl/f;

    invoke-virtual {v0}, LPl/f;->d()[I

    move-result-object v0

    iput-object v0, p0, LPl/c;->r:[I

    iget-object v0, p0, LPl/c;->p:LPl/f;

    invoke-virtual {v0}, LPl/f;->b()[I

    move-result-object v0

    iput-object v0, p0, LPl/c;->s:[I

    iget v0, p0, LPl/c;->n:I

    iget v1, p0, LPl/c;->m:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, LPl/c;->i:[[B

    iget v3, p0, LPl/c;->n:I

    sub-int/2addr v3, v4

    iget v5, p0, LPl/c;->m:I

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, LPl/c;->j:[[B

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iget v0, p0, LPl/c;->n:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LPl/c;->i:[[B

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, LPl/c;->g:LQl/a;

    iget-object v2, p0, LPl/c;->i:[[B

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, LQl/a;->c([B)[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, LPl/c;->o:Z

    return-void
.end method

.method public final h()V
    .locals 6

    const/16 v0, 0xa

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    const/4 v1, 0x3

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v2

    new-instance v3, LPl/b;

    new-instance v4, LPl/f;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v0, v1, v2}, LPl/f;-><init>(I[I[I[I)V

    const/4 v0, 0x0

    invoke-direct {v3, v0, v4}, LPl/b;-><init>(Ljava/security/SecureRandom;LPl/f;)V

    invoke-virtual {p0, v3}, LPl/c;->g(LBi/G;)V

    return-void
.end method
