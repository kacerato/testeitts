.class public final Lcom/google/protobuf/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/L1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final A:Lsun/misc/Unsafe;

.field public static final r:I = 0x3

.field public static final s:I = 0x14

.field public static final t:I = 0xfffff

.field public static final u:I = 0xff00000

.field public static final v:I = 0x10000000

.field public static final w:I = 0x20000000

.field public static final x:I = 0xfffff

.field public static final y:[I

.field public static final z:I = 0x33


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/b1;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/protobuf/n1;

.field public final n:Lcom/google/protobuf/L0;

.field public final o:Lcom/google/protobuf/q2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q2<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/protobuf/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e0<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/protobuf/U0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/g1;->y:[I

    invoke-static {}, Lcom/google/protobuf/x2;->T()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/b1;ZZ[IIILcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "objects",
            "minFieldNumber",
            "maxFieldNumber",
            "defaultInstance",
            "proto3",
            "useCachedSizeField",
            "intArray",
            "checkInitialized",
            "mapFieldPositions",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/protobuf/b1;",
            "ZZ[III",
            "Lcom/google/protobuf/n1;",
            "Lcom/google/protobuf/L0;",
            "Lcom/google/protobuf/q2<",
            "**>;",
            "Lcom/google/protobuf/e0<",
            "*>;",
            "Lcom/google/protobuf/U0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/g1;->a:[I

    iput-object p2, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/g1;->c:I

    iput p4, p0, Lcom/google/protobuf/g1;->d:I

    instance-of p1, p5, Lcom/google/protobuf/v0;

    iput-boolean p1, p0, Lcom/google/protobuf/g1;->g:Z

    iput-boolean p6, p0, Lcom/google/protobuf/g1;->h:Z

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/protobuf/e0;->e(Lcom/google/protobuf/b1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/protobuf/g1;->f:Z

    iput-boolean p7, p0, Lcom/google/protobuf/g1;->i:Z

    iput-object p8, p0, Lcom/google/protobuf/g1;->j:[I

    iput p9, p0, Lcom/google/protobuf/g1;->k:I

    iput p10, p0, Lcom/google/protobuf/g1;->l:I

    iput-object p11, p0, Lcom/google/protobuf/g1;->m:Lcom/google/protobuf/n1;

    iput-object p12, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    iput-object p13, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    iput-object p14, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    iput-object p5, p0, Lcom/google/protobuf/g1;->e:Lcom/google/protobuf/b1;

    iput-object p15, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    return-void
.end method

.method public static B(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/v0;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/v0;

    invoke-virtual {p0}, Lcom/google/protobuf/v0;->F6()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static E(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static F(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static G(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static O(Ljava/lang/Class;Lcom/google/protobuf/Z0;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageClass",
            "messageInfo",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/Z0;",
            "Lcom/google/protobuf/n1;",
            "Lcom/google/protobuf/L0;",
            "Lcom/google/protobuf/q2<",
            "**>;",
            "Lcom/google/protobuf/e0<",
            "*>;",
            "Lcom/google/protobuf/U0;",
            ")",
            "Lcom/google/protobuf/g1<",
            "TT;>;"
        }
    .end annotation

    instance-of p0, p1, Lcom/google/protobuf/D1;

    if-eqz p0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/D1;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/g1;->Q(Lcom/google/protobuf/D1;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/a2;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/g1;->P(Lcom/google/protobuf/a2;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method public static P(Lcom/google/protobuf/a2;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageInfo",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a2;",
            "Lcom/google/protobuf/n1;",
            "Lcom/google/protobuf/L0;",
            "Lcom/google/protobuf/q2<",
            "**>;",
            "Lcom/google/protobuf/e0<",
            "*>;",
            "Lcom/google/protobuf/U0;",
            ")",
            "Lcom/google/protobuf/g1<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/a2;->m()Lcom/google/protobuf/y1;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/y1;->PROTO3:Lcom/google/protobuf/y1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/a2;->d()[Lcom/google/protobuf/j0;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    move v7, v3

    move v8, v7

    goto :goto_1

    :cond_1
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/google/protobuf/j0;->s()I

    move-result v1

    array-length v4, v0

    sub-int/2addr v4, v2

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/google/protobuf/j0;->s()I

    move-result v2

    move v7, v1

    move v8, v2

    :goto_1
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x3

    new-array v5, v2, [I

    mul-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    array-length v1, v0

    move v2, v3

    move v4, v2

    move v9, v4

    :goto_2
    const/16 v11, 0x31

    const/16 v12, 0x12

    if-ge v2, v1, :cond_4

    aget-object v13, v0, v2

    invoke-virtual {v13}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/p0;->MAP:Lcom/google/protobuf/p0;

    if-ne v14, v15, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v13}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/protobuf/p0;->e()I

    move-result v14

    if-lt v14, v12, :cond_3

    invoke-virtual {v13}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/protobuf/p0;->e()I

    move-result v12

    if-gt v12, v11, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    if-lez v4, :cond_5

    new-array v2, v4, [I

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    if-lez v9, :cond_6

    new-array v1, v9, [I

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/a2;->c()[I

    move-result-object v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/google/protobuf/g1;->y:[I

    :cond_7
    move v9, v3

    move v13, v9

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_5
    array-length v3, v0

    if-ge v9, v3, :cond_b

    aget-object v3, v0, v9

    invoke-virtual {v3}, Lcom/google/protobuf/j0;->s()I

    move-result v11

    invoke-static {v3, v5, v13, v6}, Lcom/google/protobuf/g1;->o0(Lcom/google/protobuf/j0;[II[Ljava/lang/Object;)V

    array-length v12, v4

    if-ge v14, v12, :cond_8

    aget v12, v4, v14

    if-ne v12, v11, :cond_8

    add-int/lit8 v11, v14, 0x1

    aput v13, v4, v14

    move v14, v11

    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/p0;->MAP:Lcom/google/protobuf/p0;

    if-ne v11, v12, :cond_a

    add-int/lit8 v3, v15, 0x1

    aput v13, v2, v15

    move v15, v3

    :cond_9
    move/from16 v18, v13

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/p0;->e()I

    move-result v11

    const/16 v12, 0x12

    if-lt v11, v12, :cond_9

    invoke-virtual {v3}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/p0;->e()I

    move-result v11

    const/16 v12, 0x31

    if-gt v11, v12, :cond_9

    add-int/lit8 v11, v16, 0x1

    invoke-virtual {v3}, Lcom/google/protobuf/j0;->r()Ljava/lang/reflect/Field;

    move-result-object v3

    move/from16 v18, v13

    invoke-static {v3}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v3, v12

    aput v3, v1, v16

    move/from16 v16, v11

    :goto_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v18, 0x3

    const/16 v11, 0x31

    const/16 v12, 0x12

    goto :goto_5

    :cond_b
    if-nez v2, :cond_c

    sget-object v2, Lcom/google/protobuf/g1;->y:[I

    :cond_c
    if-nez v1, :cond_d

    sget-object v1, Lcom/google/protobuf/g1;->y:[I

    :cond_d
    array-length v0, v4

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v12, v0, [I

    array-length v0, v4

    const/4 v3, 0x0

    invoke-static {v4, v3, v12, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    array-length v9, v2

    invoke-static {v2, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    array-length v9, v2

    add-int/2addr v0, v9

    array-length v9, v1

    invoke-static {v1, v3, v12, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/google/protobuf/g1;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/a2;->b()Lcom/google/protobuf/b1;

    move-result-object v9

    array-length v13, v4

    array-length v1, v4

    array-length v2, v2

    add-int v14, v1, v2

    const/4 v11, 0x1

    move-object v4, v0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/g1;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/b1;ZZ[IIILcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)V

    return-object v0
.end method

.method public static Q(Lcom/google/protobuf/D1;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;
    .locals 33
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageInfo",
            "newInstanceSchema",
            "listFieldSchema",
            "unknownFieldSchema",
            "extensionSchema",
            "mapFieldSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/D1;",
            "Lcom/google/protobuf/n1;",
            "Lcom/google/protobuf/L0;",
            "Lcom/google/protobuf/q2<",
            "**>;",
            "Lcom/google/protobuf/e0<",
            "*>;",
            "Lcom/google/protobuf/U0;",
            ")",
            "Lcom/google/protobuf/g1<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/D1;->m()Lcom/google/protobuf/y1;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/y1;->PROTO3:Lcom/google/protobuf/y1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/D1;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/protobuf/g1;->y:[I

    move v8, v2

    move v9, v8

    move v11, v9

    move v12, v11

    move v14, v12

    move/from16 v16, v14

    move-object v13, v6

    move/from16 v6, v16

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    :goto_b
    sget-object v15, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/D1;->c()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/D1;->b()Lcom/google/protobuf/b1;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v20, v14, v12

    move/from16 v22, v14

    move/from16 v23, v20

    const/4 v12, 0x0

    const/16 v21, 0x0

    :goto_c
    if-ge v4, v1, :cond_32

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v3, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_16

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v4, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v3, v26

    goto :goto_d

    :cond_16
    shl-int v3, v3, v24

    or-int/2addr v4, v3

    move/from16 v3, v26

    goto :goto_e

    :cond_17
    move/from16 v3, v24

    :goto_e
    add-int/lit8 v24, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_19

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v27, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v1

    const v1, 0xd800

    if-lt v5, v1, :cond_18

    and-int/lit16 v1, v5, 0x1fff

    shl-int v1, v1, v24

    or-int/2addr v3, v1

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v1, v28

    goto :goto_f

    :cond_18
    shl-int v1, v5, v24

    or-int/2addr v3, v1

    move/from16 v1, v27

    goto :goto_10

    :cond_19
    move/from16 v28, v1

    move/from16 v1, v24

    :goto_10
    and-int/lit16 v5, v3, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v3, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v12, 0x1

    aput v21, v13, v12

    move v12, v14

    :cond_1a
    const/16 v14, 0x33

    move/from16 v30, v12

    if-lt v5, v14, :cond_22

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v12, 0xd800

    if-lt v1, v12, :cond_1c

    and-int/lit16 v1, v1, 0x1fff

    const/16 v31, 0xd

    :goto_11
    add-int/lit8 v32, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_1b

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v31

    or-int/2addr v1, v12

    add-int/lit8 v31, v31, 0xd

    move/from16 v14, v32

    const v12, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v12, v14, v31

    or-int/2addr v1, v12

    move/from16 v14, v32

    :cond_1c
    add-int/lit8 v12, v5, -0x33

    move/from16 v31, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_1e

    const/16 v14, 0x11

    if-ne v12, v14, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v14, 0xc

    if-ne v12, v14, :cond_1f

    if-nez v10, :cond_1f

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    add-int/lit8 v14, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_12
    move/from16 v16, v14

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    add-int/lit8 v14, v16, 0x1

    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_12

    :cond_1f
    :goto_14
    mul-int/lit8 v1, v1, 0x2

    aget-object v12, v17, v1

    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_20

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_15
    move v14, v8

    move/from16 v32, v9

    goto :goto_16

    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/g1;->k0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v1

    goto :goto_15

    :goto_16
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/lit8 v1, v1, 0x1

    aget-object v9, v17, v1

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_21

    check-cast v9, Ljava/lang/reflect/Field;

    :goto_17
    move v1, v8

    goto :goto_18

    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/protobuf/g1;->k0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v17, v1

    goto :goto_17

    :goto_18
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    move-object/from16 v29, v0

    move v9, v8

    move v0, v10

    move/from16 v27, v31

    const/16 v25, 0x1

    move v8, v1

    const/4 v1, 0x0

    goto/16 :goto_24

    :cond_22
    move v14, v8

    move/from16 v32, v9

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v17, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v9}, Lcom/google/protobuf/g1;->k0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v12, 0x9

    if-eq v5, v12, :cond_23

    const/16 v12, 0x11

    if-ne v5, v12, :cond_24

    :cond_23
    const/16 v25, 0x1

    goto/16 :goto_1d

    :cond_24
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_25

    const/16 v12, 0x31

    if-ne v5, v12, :cond_26

    :cond_25
    const/16 v25, 0x1

    goto :goto_1c

    :cond_26
    const/16 v12, 0xc

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_27

    goto :goto_1a

    :cond_27
    const/16 v12, 0x32

    if-ne v5, v12, :cond_28

    add-int/lit8 v12, v22, 0x1

    aput v21, v13, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v27, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v22

    and-int/lit16 v8, v3, 0x800

    if-eqz v8, :cond_29

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v16, 0x3

    aget-object v16, v17, v27

    aput-object v16, v11, v22

    move/from16 v22, v12

    :cond_28
    const/16 v25, 0x1

    :goto_19
    move v12, v8

    goto :goto_1e

    :cond_29
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_1e

    :cond_2a
    :goto_1a
    if-nez v10, :cond_28

    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    :goto_1b
    move/from16 v12, v16

    goto :goto_1e

    :goto_1c
    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v16, v16, 0x2

    aget-object v8, v17, v8

    aput-object v8, v11, v12

    goto :goto_1b

    :goto_1d
    div-int/lit8 v12, v21, 0x3

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v11, v12

    goto :goto_19

    :goto_1e
    invoke-virtual {v15, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v8, v8

    and-int/lit16 v9, v3, 0x1000

    move/from16 v16, v12

    const/16 v12, 0x1000

    if-ne v9, v12, :cond_2e

    const/16 v9, 0x11

    if-gt v5, v9, :cond_2e

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v12, 0xd800

    if-lt v1, v12, :cond_2c

    and-int/lit16 v1, v1, 0x1fff

    const/16 v26, 0xd

    :goto_1f
    add-int/lit8 v27, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_2b

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v26

    or-int/2addr v1, v9

    add-int/lit8 v26, v26, 0xd

    move/from16 v9, v27

    goto :goto_1f

    :cond_2b
    shl-int v9, v9, v26

    or-int/2addr v1, v9

    goto :goto_20

    :cond_2c
    move/from16 v27, v9

    :goto_20
    mul-int/lit8 v9, v6, 0x2

    div-int/lit8 v26, v1, 0x20

    add-int v9, v9, v26

    aget-object v12, v17, v9

    move-object/from16 v29, v0

    instance-of v0, v12, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2d

    check-cast v12, Ljava/lang/reflect/Field;

    :goto_21
    move v0, v10

    goto :goto_22

    :cond_2d
    check-cast v12, Ljava/lang/String;

    invoke-static {v2, v12}, Lcom/google/protobuf/g1;->k0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v9

    goto :goto_21

    :goto_22
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    rem-int/lit8 v1, v1, 0x20

    goto :goto_23

    :cond_2e
    move-object/from16 v29, v0

    move v0, v10

    const v9, 0xfffff

    move/from16 v27, v1

    const/4 v1, 0x0

    :goto_23
    const/16 v10, 0x12

    if-lt v5, v10, :cond_2f

    const/16 v10, 0x31

    if-gt v5, v10, :cond_2f

    add-int/lit8 v10, v23, 0x1

    aput v8, v13, v23

    move/from16 v23, v10

    :cond_2f
    :goto_24
    add-int/lit8 v10, v21, 0x1

    aput v4, v7, v21

    add-int/lit8 v4, v21, 0x2

    and-int/lit16 v12, v3, 0x200

    if-eqz v12, :cond_30

    const/high16 v12, 0x20000000

    goto :goto_25

    :cond_30
    const/4 v12, 0x0

    :goto_25
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_31

    const/high16 v3, 0x10000000

    goto :goto_26

    :cond_31
    const/4 v3, 0x0

    :goto_26
    or-int/2addr v3, v12

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v5

    or-int/2addr v3, v8

    aput v3, v7, v10

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v9

    aput v1, v7, v4

    move v10, v0

    move v8, v14

    move/from16 v14, v24

    move/from16 v4, v27

    move/from16 v1, v28

    move-object/from16 v0, v29

    move/from16 v12, v30

    move/from16 v9, v32

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move/from16 v32, v9

    move v0, v10

    move/from16 v24, v14

    move v14, v8

    new-instance v1, Lcom/google/protobuf/g1;

    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/D1;->b()Lcom/google/protobuf/b1;

    move-result-object v9

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v7

    move-object v6, v11

    move v7, v14

    move/from16 v8, v32

    move v11, v2

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Lcom/google/protobuf/g1;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/b1;ZZ[IIILcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)V

    return-object v1
.end method

.method public static S(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static T(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static U(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static V(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static W(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static X(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static k0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageClass",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static l(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public static o0(Lcom/google/protobuf/j0;[II[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fi",
            "buffer",
            "bufferIndex",
            "objects"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->w()Lcom/google/protobuf/t1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/p0;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-virtual {v0}, Lcom/google/protobuf/t1;->c()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0}, Lcom/google/protobuf/t1;->a()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    :goto_0
    long-to-int v0, v4

    move v4, v1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->A()Lcom/google/protobuf/p0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->r()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0}, Lcom/google/protobuf/p0;->e()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/protobuf/p0;->g()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/p0;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->y()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0xfffff

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->o()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->o()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/x2;->Z(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->s()I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->B()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, 0x20000000

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->D()Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v1, 0x10000000

    :cond_5
    or-int/2addr v1, v6

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p1, v5

    add-int/lit8 v1, p2, 0x2

    shl-int/lit8 v2, v4, 0x14

    or-int/2addr v0, v2

    aput v0, p1, v1

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->v()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->u()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->u()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p2

    if-eqz p1, :cond_6

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->q()Lcom/google/protobuf/D0$e;

    move-result-object p1

    if-eqz p1, :cond_9

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->q()Lcom/google/protobuf/D0$e;

    move-result-object p0

    aput-object p0, p3, p2

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    aput-object p1, p3, p2

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->q()Lcom/google/protobuf/D0$e;

    move-result-object p1

    if-eqz p1, :cond_9

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/j0;->q()Lcom/google/protobuf/D0$e;

    move-result-object p0

    aput-object p0, p3, p2

    :cond_9
    :goto_4
    return-void
.end method

.method public static p(Ljava/lang/Object;)Lcom/google/protobuf/s2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    check-cast p0, Lcom/google/protobuf/v0;

    iget-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    invoke-static {}, Lcom/google/protobuf/s2;->c()Lcom/google/protobuf/s2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/s2;->o()Lcom/google/protobuf/s2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/v0;->c:Lcom/google/protobuf/s2;

    :cond_0
    return-object v0
.end method

.method public static r0(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static u(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static v(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Ljava/lang/Object;ILcom/google/protobuf/L1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "schema"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/protobuf/L1;->K1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/U0;->h(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {p3, p2}, Lcom/google/protobuf/U0;->c(Ljava/lang/Object;)Lcom/google/protobuf/R0$b;

    move-result-object p2

    iget-object p2, p2, Lcom/google/protobuf/R0$b;->c:Lcom/google/protobuf/A2$b;

    invoke-virtual {p2}, Lcom/google/protobuf/A2$b;->a()Lcom/google/protobuf/A2$c;

    move-result-object p2

    sget-object p3, Lcom/google/protobuf/A2$c;->MESSAGE:Lcom/google/protobuf/A2$c;

    if-eq p2, p3, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_3

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p2

    :cond_3
    invoke-interface {p2, p3}, Lcom/google/protobuf/L1;->K1(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method

.method public final C(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->f0(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final D(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->f0(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final H(Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unknownFieldSchema",
            "extensionSchema",
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/o0$c<",
            "TET;>;>(",
            "Lcom/google/protobuf/q2<",
            "TUT;TUB;>;",
            "Lcom/google/protobuf/e0<",
            "TET;>;TT;",
            "Lcom/google/protobuf/E1;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p3

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    const/16 v17, 0x0

    move-object/from16 v5, v17

    move-object v9, v5

    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->q()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/protobuf/g1;->d0(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-gez v3, :cond_b

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_2

    iget v0, v8, Lcom/google/protobuf/g1;->k:I

    move-object v4, v5

    :goto_1
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v7, v15, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/protobuf/g1;->f:Z

    if-nez v1, :cond_3

    move-object/from16 v4, p2

    move-object/from16 v12, v17

    goto :goto_2

    :cond_3
    iget-object v1, v8, Lcom/google/protobuf/g1;->e:Lcom/google/protobuf/b1;

    move-object/from16 v4, p2

    invoke-virtual {v4, v6, v1, v2}, Lcom/google/protobuf/e0;->b(Lcom/google/protobuf/d0;Lcom/google/protobuf/b1;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v1

    :goto_2
    if-eqz v12, :cond_5

    if-nez v9, :cond_4

    :try_start_2
    invoke-virtual/range {p2 .. p3}, Lcom/google/protobuf/e0;->d(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object v14, v7

    move-object v10, v15

    goto/16 :goto_17

    :cond_4
    move-object v1, v9

    :goto_4
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object v14, v1

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v16, p1

    :try_start_3
    invoke-virtual/range {v9 .. v16}, Lcom/google/protobuf/e0;->g(Ljava/lang/Object;Lcom/google/protobuf/E1;Ljava/lang/Object;Lcom/google/protobuf/d0;Lcom/google/protobuf/o0;Ljava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v1

    :goto_5
    move-object v15, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, v3

    :goto_6
    move-object v14, v7

    goto/16 :goto_17

    :cond_5
    move-object v3, v15

    invoke-virtual {v7, v0}, Lcom/google/protobuf/q2;->q(Lcom/google/protobuf/E1;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->v()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    invoke-virtual {v7, v3}, Lcom/google/protobuf/q2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    :cond_7
    invoke-virtual {v7, v5, v0}, Lcom/google/protobuf/q2;->m(Ljava/lang/Object;Lcom/google/protobuf/E1;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    iget v0, v8, Lcom/google/protobuf/g1;->k:I

    move-object v4, v5

    :goto_8
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v0, v1, :cond_9

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v5, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v10, v3

    move v3, v5

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    move-object v3, v10

    goto :goto_8

    :cond_9
    move-object v10, v3

    if-eqz v4, :cond_a

    invoke-virtual {v7, v10, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    move-object v10, v15

    goto :goto_6

    :cond_b
    move-object/from16 v4, p2

    move-object v10, v15

    :try_start_4
    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v11}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    packed-switch v1, :pswitch_data_0

    if-nez v5, :cond_c

    :try_start_6
    invoke-virtual {v7, v10}, Lcom/google/protobuf/q2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_0
    :goto_9
    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_13

    :cond_c
    :goto_a
    invoke-virtual {v7, v5, v0}, Lcom/google/protobuf/q2;->m(Ljava/lang/Object;Lcom/google/protobuf/E1;)Z

    move-result v1
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v1, :cond_f

    iget v0, v8, Lcom/google/protobuf/g1;->k:I

    move-object v4, v5

    :goto_b
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v0, v1, :cond_d

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v7, v10, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void

    :cond_f
    :goto_c
    move-object v13, v6

    move-object v14, v7

    goto/16 :goto_16

    :pswitch_0
    :try_start_7
    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v11

    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/E1;->k(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-virtual {v8, v10, v2, v3, v1}, Lcom/google/protobuf/g1;->q0(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_d
    move-object v12, v5

    move-object v13, v6

    :goto_e
    move-object v14, v7

    goto/16 :goto_12

    :pswitch_1
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->P()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto :goto_d

    :pswitch_2
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto :goto_d

    :pswitch_3
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->b()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto :goto_d

    :pswitch_4
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->S()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto :goto_d

    :pswitch_5
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->d()I

    move-result v1

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-interface {v12, v1}, Lcom/google/protobuf/D0$e;->a(I)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_f

    :cond_10
    invoke-static {v10, v2, v1, v5, v7}, Lcom/google/protobuf/N1;->Q(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_c

    :cond_11
    :goto_f
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto :goto_d

    :pswitch_6
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_7
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->h()Lcom/google/protobuf/x;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_8
    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v11

    invoke-interface {v0, v1, v11, v6}, Lcom/google/protobuf/E1;->s(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-virtual {v8, v10, v2, v3, v1}, Lcom/google/protobuf/g1;->q0(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_9
    invoke-virtual {v8, v10, v11, v0}, Lcom/google/protobuf/g1;->i0(Ljava/lang/Object;ILcom/google/protobuf/E1;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_a
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_b
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->N()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_c
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->z()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_d
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_e
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->j()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_f
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->y()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_10
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    :pswitch_11
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v10, v11, v12, v1}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v2, v3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_d

    :pswitch_12
    :try_start_8
    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object v11
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v4, v11

    move-object v12, v5

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v6, p4

    :try_start_9
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->I(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/d0;Lcom/google/protobuf/E1;)V

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object v14, v7

    :goto_10
    move-object v5, v12

    goto/16 :goto_17

    :catch_1
    move-object v14, v7

    :catch_2
    move-object v5, v12

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    move-object v12, v5

    goto/16 :goto_6

    :catch_3
    move-object v12, v5

    goto/16 :goto_9

    :pswitch_13
    move-object v12, v5

    move-object v13, v6

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v4

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object v14, v7

    move-object/from16 v7, p5

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/g1;->g0(Ljava/lang/Object;JLcom/google/protobuf/E1;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    goto :goto_10

    :pswitch_14
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->a(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_15
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->i(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_16
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->n(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_17
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->A(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_18
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/E1;->G(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/N1;->C(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/D0$e;Ljava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    :pswitch_19
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->L(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->f(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->p(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->K(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->o(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->E(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_1f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->F(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_20
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->t(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_21
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->x(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_22
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->a(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_23
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->i(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_24
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->n(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_25
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->A(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_26
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v4

    invoke-virtual {v1, v10, v4, v5}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/protobuf/E1;->G(Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v5

    move-object/from16 v1, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/N1;->C(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/D0$e;Ljava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    :pswitch_27
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->L(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_28
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->w(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_29
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v11

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->h0(Ljava/lang/Object;ILcom/google/protobuf/E1;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    goto/16 :goto_12

    :pswitch_2a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v8, v10, v11, v0}, Lcom/google/protobuf/g1;->j0(Ljava/lang/Object;ILcom/google/protobuf/E1;)V

    goto/16 :goto_12

    :pswitch_2b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->f(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->p(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->K(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->o(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_2f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->E(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_30
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->F(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_31
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->t(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_32
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    iget-object v1, v8, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/E1;->x(Ljava/util/List;)V

    goto/16 :goto_12

    :pswitch_33
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v2

    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/E1;->k(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-virtual {v8, v10, v3, v1}, Lcom/google/protobuf/g1;->p0(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_34
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->P()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_35
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->e()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_36
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->b()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_37
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->S()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_38
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->d()I

    move-result v1

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface {v4, v1}, Lcom/google/protobuf/D0$e;->a(I)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_11

    :cond_12
    invoke-static {v10, v2, v1, v12, v14}, Lcom/google/protobuf/N1;->Q(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_16

    :cond_13
    :goto_11
    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v1}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_39
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->c()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3a
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->h()Lcom/google/protobuf/x;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3b
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    invoke-virtual {v8, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v2

    invoke-interface {v0, v1, v2, v13}, Lcom/google/protobuf/E1;->s(Ljava/lang/Object;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    invoke-virtual {v8, v10, v3, v1}, Lcom/google/protobuf/g1;->p0(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3c
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-virtual {v8, v10, v11, v0}, Lcom/google/protobuf/g1;->i0(Ljava/lang/Object;ILcom/google/protobuf/E1;)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3d
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->C()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->a0(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3e
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->N()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_3f
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->z()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_12

    :pswitch_40
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->J()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_41
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->j()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_42
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->y()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_43
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Lcom/google/protobuf/x2;->l0(Ljava/lang/Object;JF)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_12

    :pswitch_44
    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    invoke-static {v11}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Lcom/google/protobuf/x2;->j0(Ljava/lang/Object;JD)V

    invoke-virtual {v8, v10, v3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_12
    move-object v5, v12

    goto :goto_16

    :goto_13
    :try_start_b
    invoke-virtual {v14, v0}, Lcom/google/protobuf/q2;->q(Lcom/google/protobuf/E1;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/E1;->v()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-nez v1, :cond_1a

    iget v0, v8, Lcom/google/protobuf/g1;->k:I

    move-object v4, v5

    :goto_14
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v0, v1, :cond_14

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    return-void

    :catchall_7
    move-exception v0

    goto :goto_17

    :cond_16
    if-nez v5, :cond_17

    :try_start_c
    invoke-virtual {v14, v10}, Lcom/google/protobuf/q2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    :cond_17
    invoke-virtual {v14, v5, v0}, Lcom/google/protobuf/q2;->m(Ljava/lang/Object;Lcom/google/protobuf/E1;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v1, :cond_1a

    iget v0, v8, Lcom/google/protobuf/g1;->k:I

    move-object v4, v5

    :goto_15
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v0, v1, :cond_18

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v3, v1, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_18
    if-eqz v4, :cond_19

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    return-void

    :cond_1a
    :goto_16
    move-object v15, v10

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object v12, v5

    goto/16 :goto_3

    :goto_17
    iget v1, v8, Lcom/google/protobuf/g1;->k:I

    move v7, v1

    move-object v4, v5

    :goto_18
    iget v1, v8, Lcom/google/protobuf/g1;->l:I

    if-ge v7, v1, :cond_1b

    iget-object v1, v8, Lcom/google/protobuf/g1;->j:[I

    aget v3, v1, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual {v14, v10, v4}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/d0;Lcom/google/protobuf/E1;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "mapDefaultEntry",
            "extensionRegistry",
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/d0;",
            "Lcom/google/protobuf/E1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->s0(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {p2, p3}, Lcom/google/protobuf/U0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v2, p2}, Lcom/google/protobuf/U0;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v2, p3}, Lcom/google/protobuf/U0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v3, v2, p2}, Lcom/google/protobuf/U0;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {p1, p2}, Lcom/google/protobuf/U0;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {p2, p3}, Lcom/google/protobuf/U0;->c(Ljava/lang/Object;)Lcom/google/protobuf/R0$b;

    move-result-object p2

    invoke-interface {p5, p1, p2, p4}, Lcom/google/protobuf/E1;->g(Ljava/util/Map;Lcom/google/protobuf/R0$b;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public I1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/protobuf/g1;->i(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v2, p2}, Lcom/google/protobuf/q2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/o0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final J(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetParent",
            "sourceParent",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    sget-object v2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object p2

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v3}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->R(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J1(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/protobuf/C2;->J()Lcom/google/protobuf/C2$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/C2$a;->DESCENDING:Lcom/google/protobuf/C2$a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->v0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/g1;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->u0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->t0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    :goto_0
    return-void
.end method

.method public final K(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetParent",
            "sourceParent",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v0

    invoke-virtual {p0, p2, v0, p3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    sget-object v3, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v3, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, p1, v1, v2, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v4}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source subfield "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->R(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K1(Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lcom/google/protobuf/g1;->k:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_8

    iget-object v2, v6, Lcom/google/protobuf/g1;->j:[I

    aget v11, v2, v10

    invoke-virtual {v6, v11}, Lcom/google/protobuf/g1;->R(I)I

    move-result v12

    invoke-virtual {v6, v11}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    invoke-static {v13}, Lcom/google/protobuf/g1;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/g1;->x(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    invoke-static {v13}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x44

    if-eq v0, v1, :cond_4

    const/16 v1, 0x31

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/protobuf/g1;->A(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_4
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v11}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/g1;->y(Ljava/lang/Object;ILcom/google/protobuf/L1;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_5
    invoke-virtual {v6, v7, v13, v11}, Lcom/google/protobuf/g1;->z(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/g1;->x(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6, v11}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/protobuf/g1;->y(Ljava/lang/Object;ILcom/google/protobuf/L1;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    :cond_7
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, v6, Lcom/google/protobuf/g1;->f:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->E()Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_9
    return v3
.end method

.method public final L(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p2, v3, p3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, v3, p3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p3, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-static {p3, p1, p2, v1, v2}, Lcom/google/protobuf/N1;->I(Lcom/google/protobuf/U0;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p3, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-virtual {p3, p1, p2, v1, v2}, Lcom/google/protobuf/L0;->d(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->J(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->J(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->a0(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->r0(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/protobuf/x2;->l0(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/protobuf/x2;->j0(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L1(Ljava/lang/Object;[BIILcom/google/protobuf/m$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/m$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/protobuf/g1;->b0(Ljava/lang/Object;[BIILcom/google/protobuf/m$b;)I

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/g1;->a0(Ljava/lang/Object;[BIIILcom/google/protobuf/m$b;)I

    :goto_0
    return-void
.end method

.method public final M(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public M1(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/v0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/v0;

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->i4()V

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->H3()V

    invoke-virtual {v0}, Lcom/google/protobuf/v0;->H6()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v3

    invoke-static {v2}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v6, v5}, Lcom/google/protobuf/U0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/protobuf/L0;->c(Ljava/lang/Object;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->R(I)I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v2

    sget-object v5, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v2

    sget-object v5, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/L1;->M1(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->f(Ljava/lang/Object;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result p3

    invoke-static {p3}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/g1;->B(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/L1;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/protobuf/L1;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public N1(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g1;->s(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g1;->r(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public O1(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v5

    invoke-static {v3}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->T(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->V(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/g1;->U(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/D0;->k(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/protobuf/D0;->s(J)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/q2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/o0;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public P1(Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "reader",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/E1;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/g1;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    iget-object v2, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/g1;->H(Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Ljava/lang/Object;Lcom/google/protobuf/E1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public final R(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final Y(Ljava/lang/Object;[BIIIJLcom/google/protobuf/m$b;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "bufferPosition",
            "fieldOffset",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-wide v1, p6

    sget-object v3, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    move v4, p5

    invoke-virtual {p0, p5}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v7, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v6, v5}, Lcom/google/protobuf/U0;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v7, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v6, v4}, Lcom/google/protobuf/U0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v7, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v8, v6, v5}, Lcom/google/protobuf/U0;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p1, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v6

    :cond_0
    iget-object v0, v7, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v0, v4}, Lcom/google/protobuf/U0;->c(Ljava/lang/Object;)Lcom/google/protobuf/R0$b;

    move-result-object v4

    iget-object v0, v7, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v0, v5}, Lcom/google/protobuf/U0;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/g1;->f([BIILcom/google/protobuf/R0$b;Ljava/util/Map;Lcom/google/protobuf/m$b;)I

    move-result v0

    return v0
.end method

.method public final Z(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/m$b;)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "tag",
            "number",
            "wireType",
            "typeAndOffset",
            "fieldType",
            "fieldOffset",
            "bufferPosition",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v8, p13

    sget-object v11, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    iget-object v12, v0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v13, v10, 0x2

    aget v12, v12, v13

    const v13, 0xfffff

    and-int/2addr v12, v13

    int-to-long v12, v12

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-virtual {v0, v1, v9, v10}, Lcom/google/protobuf/g1;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/m;->N(Ljava/lang/Object;Lcom/google/protobuf/L1;[BIIILcom/google/protobuf/m$b;)I

    move-result v2

    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/google/protobuf/g1;->q0(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/m$b;->b:J

    invoke-static {v3, v4}, Lcom/google/protobuf/C;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/m$b;->a:I

    invoke-static {v3}, Lcom/google/protobuf/C;->c(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v3

    iget v4, v8, Lcom/google/protobuf/m$b;->a:I

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/google/protobuf/D0$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->p(Ljava/lang/Object;)Lcom/google/protobuf/s2;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/protobuf/s2;->r(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v2, v3

    goto/16 :goto_6

    :pswitch_4
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->b([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget-object v3, v8, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_5
    if-ne v3, v15, :cond_6

    invoke-virtual {v0, v1, v9, v10}, Lcom/google/protobuf/g1;->N(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v3

    move-object v2, v11

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/m;->O(Ljava/lang/Object;Lcom/google/protobuf/L1;[BIILcom/google/protobuf/m$b;)I

    move-result v2

    invoke-virtual {v0, v1, v9, v10, v11}, Lcom/google/protobuf/g1;->q0(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    if-ne v3, v15, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/m$b;->a:I

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_2
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_4

    add-int v5, v2, v3

    invoke-static {v4, v2, v5}, Lcom/google/protobuf/Utf8;->u([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v2, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_3
    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/m$b;->b:J

    const-wide/16 v14, 0x0

    cmp-long v3, v3, v14

    if-eqz v3, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_6

    :pswitch_8
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/m;->h([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_9
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/m;->j([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget v3, v8, Lcom/google/protobuf/m$b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v8}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget-wide v3, v8, Lcom/google/protobuf/m$b;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_c
    if-ne v3, v14, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/m;->l([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x4

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_d
    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    invoke-static/range {p2 .. p3}, Lcom/google/protobuf/m;->d([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v11, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v5, 0x8

    invoke-virtual {v11, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v5

    :goto_6
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->m:Lcom/google/protobuf/n1;

    iget-object v1, p0, Lcom/google/protobuf/g1;->e:Lcom/google/protobuf/b1;

    invoke-interface {v0, v1}, Lcom/google/protobuf/n1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a0(Ljava/lang/Object;[BIIILcom/google/protobuf/m$b;)I
    .locals 26
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "endGroup",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->e(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_16

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/protobuf/m;->H(I[BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v3, v9, Lcom/google/protobuf/m$b;->a:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v8, v4, 0x7

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    invoke-virtual {v15, v0, v2}, Lcom/google/protobuf/g1;->e0(II)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    goto :goto_3

    :cond_1
    invoke-virtual {v15, v0}, Lcom/google/protobuf/g1;->d0(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_2

    move/from16 v22, v0

    move/from16 v18, v1

    move v2, v3

    move v9, v4

    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    move/from16 v20, v16

    goto/16 :goto_12

    :cond_2
    iget-object v1, v15, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v19, v2, 0x1

    aget v1, v1, v19

    invoke-static {v1}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v7

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v11

    move/from16 v19, v4

    const/16 v4, 0x11

    move-wide/from16 v20, v11

    if-gt v7, v4, :cond_b

    iget-object v4, v15, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v12, v2, 0x2

    aget v4, v4, v12

    ushr-int/lit8 v12, v4, 0x14

    const/4 v11, 0x1

    shl-int v12, v11, v12

    const v11, 0xfffff

    and-int/2addr v4, v11

    move/from16 v17, v12

    if-eq v4, v6, :cond_4

    if-eq v6, v11, :cond_3

    int-to-long v11, v6

    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v4

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v12, v4

    move v11, v5

    goto :goto_4

    :cond_4
    move v11, v5

    move v12, v6

    :goto_4
    const/4 v4, 0x5

    packed-switch v7, :pswitch_data_0

    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    goto/16 :goto_d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v8, v1, :cond_5

    invoke-virtual {v15, v14, v2}, Lcom/google/protobuf/g1;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    invoke-virtual {v15, v2}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v1

    move/from16 v22, v0

    move-object v0, v7

    const/16 v18, -0x1

    move v8, v2

    move-object/from16 v2, p2

    move/from16 v6, v19

    move/from16 v4, p4

    move/from16 p3, v12

    move v12, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/m;->N(Ljava/lang/Object;Lcom/google/protobuf/L1;[BIIILcom/google/protobuf/m$b;)I

    move-result v0

    invoke-virtual {v15, v14, v8, v7}, Lcom/google/protobuf/g1;->p0(Ljava/lang/Object;ILjava/lang/Object;)V

    or-int v5, v11, v17

    move/from16 v6, p3

    move/from16 v11, p5

    move v2, v8

    move v3, v12

    move/from16 v1, v22

    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_5
    move/from16 v22, v0

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v7, p2

    move v6, v2

    goto/16 :goto_d

    :pswitch_1
    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    move-object/from16 v7, p2

    if-nez v8, :cond_a

    move-wide/from16 v4, v20

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v8

    iget-wide v0, v9, Lcom/google/protobuf/m$b;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/C;->d(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_5
    or-int v5, v11, v17

    move/from16 v11, p5

    move v2, v6

    move v0, v8

    :goto_6
    move v3, v12

    move/from16 v1, v22

    move/from16 v6, p3

    :goto_7
    move-object v12, v7

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/m$b;->a:I

    invoke-static {v1}, Lcom/google/protobuf/C;->c(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v5, v11, v17

    move/from16 v11, p5

    move v2, v6

    goto :goto_6

    :pswitch_3
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/m$b;->a:I

    invoke-virtual {v15, v6}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Lcom/google/protobuf/D0$e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_9

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->p(Ljava/lang/Object;)Lcom/google/protobuf/s2;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/protobuf/s2;->r(ILjava/lang/Object;)V

    move v2, v6

    move v5, v11

    move v3, v12

    move/from16 v1, v22

    move/from16 v6, p3

    move/from16 v11, p5

    goto :goto_7

    :cond_7
    :goto_9
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->b([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget-object v1, v9, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_5
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    invoke-virtual {v15, v14, v6}, Lcom/google/protobuf/g1;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v6}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/m;->O(Ljava/lang/Object;Lcom/google/protobuf/L1;[BIILcom/google/protobuf/m$b;)I

    move-result v0

    invoke-virtual {v15, v14, v6, v8}, Lcom/google/protobuf/g1;->p0(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->C([BILcom/google/protobuf/m$b;)I

    move-result v0

    goto :goto_a

    :cond_8
    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->F([BILcom/google/protobuf/m$b;)I

    move-result v0

    :goto_a
    iget-object v1, v9, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_7
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/protobuf/m$b;->b:J

    const-wide/16 v19, 0x0

    cmp-long v1, v1, v19

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_b

    :cond_9
    move/from16 v1, v16

    :goto_b
    invoke-static {v14, v4, v5, v1}, Lcom/google/protobuf/x2;->a0(Ljava/lang/Object;JZ)V

    goto/16 :goto_8

    :pswitch_8
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/16 v18, -0x1

    if-ne v8, v4, :cond_a

    invoke-static {v7, v3}, Lcom/google/protobuf/m;->h([BI)I

    move-result v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c
    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v1, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    if-ne v8, v0, :cond_a

    invoke-static {v7, v3}, Lcom/google/protobuf/m;->j([BI)J

    move-result-wide v4

    move-object v0, v10

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move v8, v3

    move-wide/from16 v2, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    const/16 v18, -0x1

    if-nez v8, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v9, Lcom/google/protobuf/m$b;->a:I

    move-wide/from16 v4, v20

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v4, v20

    const/16 v18, -0x1

    if-nez v8, :cond_a

    invoke-static {v7, v3, v9}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v8

    iget-wide v2, v9, Lcom/google/protobuf/m$b;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_5

    :pswitch_c
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/16 v18, -0x1

    if-ne v8, v4, :cond_a

    invoke-static {v7, v3}, Lcom/google/protobuf/m;->l([BI)F

    move-result v2

    invoke-static {v14, v0, v1, v2}, Lcom/google/protobuf/x2;->l0(Ljava/lang/Object;JF)V

    goto :goto_c

    :pswitch_d
    move-object/from16 v7, p2

    move/from16 v22, v0

    move v6, v2

    move/from16 p3, v12

    move/from16 v12, v19

    move-wide/from16 v0, v20

    const/4 v2, 0x1

    const/16 v18, -0x1

    if-ne v8, v2, :cond_a

    invoke-static {v7, v3}, Lcom/google/protobuf/m;->d([BI)D

    move-result-wide v4

    invoke-static {v14, v0, v1, v4, v5}, Lcom/google/protobuf/x2;->j0(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    goto/16 :goto_8

    :cond_a
    :goto_d
    move/from16 v17, p3

    move/from16 v8, p5

    move v2, v3

    move/from16 v20, v6

    move-object/from16 v25, v10

    move/from16 v19, v11

    move v9, v12

    goto/16 :goto_12

    :cond_b
    move/from16 v22, v0

    move v11, v2

    move/from16 v17, v6

    move/from16 v12, v19

    const/16 v18, -0x1

    move/from16 v19, v5

    move-wide/from16 v5, v20

    const/16 v0, 0x1b

    if-ne v7, v0, :cond_f

    const/4 v0, 0x2

    if-ne v8, v0, :cond_e

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/D0$k;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->hc()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xa

    goto :goto_e

    :cond_c
    mul-int/lit8 v1, v1, 0x2

    :goto_e
    invoke-interface {v0, v1}, Lcom/google/protobuf/D0$k;->q(I)Lcom/google/protobuf/D0$k;

    move-result-object v0

    invoke-virtual {v10, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_d
    move-object v5, v0

    invoke-virtual {v15, v11}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/m;->q(Lcom/google/protobuf/L1;I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v0

    move v2, v11

    move v3, v12

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v1, v22

    move-object/from16 v12, p2

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_e
    move v15, v3

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    goto/16 :goto_11

    :cond_f
    const/16 v0, 0x31

    if-gt v7, v0, :cond_11

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move v5, v12

    move/from16 v6, v22

    move/from16 p3, v7

    move v7, v8

    move v8, v11

    move-object/from16 v25, v10

    move-wide/from16 v9, v20

    move/from16 v20, v11

    move/from16 v11, p3

    move/from16 v21, v12

    move-wide/from16 v12, v23

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/g1;->c0(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    :goto_f
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v1, v22

    move-object/from16 v10, v25

    goto/16 :goto_0

    :cond_10
    move/from16 v8, p5

    move v2, v0

    :goto_10
    move/from16 v9, v21

    goto :goto_12

    :cond_11
    move v15, v3

    move-wide/from16 v23, v5

    move/from16 p3, v7

    move-object/from16 v25, v10

    move/from16 v20, v11

    move/from16 v21, v12

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_13

    const/4 v0, 0x2

    if-ne v8, v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v23

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/g1;->Y(Ljava/lang/Object;[BIIIJLcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    goto :goto_f

    :cond_12
    :goto_11
    move/from16 v8, p5

    move v2, v15

    goto :goto_10

    :cond_13
    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move/from16 v6, v22

    move v7, v8

    move v8, v10

    move-wide/from16 v10, v23

    move/from16 v12, v20

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/g1;->Z(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_10

    goto :goto_f

    :goto_12
    if-ne v9, v8, :cond_14

    if-eqz v8, :cond_14

    const v1, 0xfffff

    move-object/from16 v10, p0

    move v6, v2

    move/from16 v0, v17

    move/from16 v5, v19

    goto/16 :goto_14

    :cond_14
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/google/protobuf/g1;->f:Z

    move-object/from16 v11, p6

    if-eqz v0, :cond_15

    iget-object v0, v11, Lcom/google/protobuf/m$b;->d:Lcom/google/protobuf/d0;

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v1

    if-eq v0, v1, :cond_15

    iget-object v5, v10, Lcom/google/protobuf/g1;->e:Lcom/google/protobuf/b1;

    iget-object v6, v10, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/protobuf/m;->g(I[BIILjava/lang/Object;Lcom/google/protobuf/b1;Lcom/google/protobuf/q2;Lcom/google/protobuf/m$b;)I

    move-result v0

    goto :goto_13

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->p(Ljava/lang/Object;)Lcom/google/protobuf/s2;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/m;->G(I[BIILcom/google/protobuf/s2;Lcom/google/protobuf/m$b;)I

    move-result v0

    :goto_13
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v9

    move-object v15, v10

    move-object v9, v11

    move/from16 v6, v17

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v1, v22

    move-object/from16 v10, v25

    move v11, v8

    goto/16 :goto_0

    :cond_16
    move/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v25, v10

    move v8, v11

    move-object v10, v15

    move v6, v0

    move v9, v3

    move/from16 v0, v17

    const v1, 0xfffff

    :goto_14
    if-eq v0, v1, :cond_17

    int-to-long v0, v0

    move-object/from16 v7, p1

    move-object/from16 v2, v25

    invoke-virtual {v2, v7, v0, v1, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_15

    :cond_17
    move-object/from16 v7, p1

    :goto_15
    iget v0, v10, Lcom/google/protobuf/g1;->k:I

    const/4 v1, 0x0

    move v11, v0

    move-object v3, v1

    :goto_16
    iget v0, v10, Lcom/google/protobuf/g1;->l:I

    if-ge v11, v0, :cond_18

    iget-object v0, v10, Lcom/google/protobuf/g1;->j:[I

    aget v2, v0, v11

    iget-object v4, v10, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/g1;->j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/s2;

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_18
    if-eqz v3, :cond_19

    iget-object v0, v10, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, v7, v3}, Lcom/google/protobuf/q2;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    if-nez v8, :cond_1b

    move/from16 v0, p4

    if-ne v6, v0, :cond_1a

    goto :goto_17

    :cond_1a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1b
    move/from16 v0, p4

    if-gt v6, v0, :cond_1c

    if-ne v9, v8, :cond_1c

    :goto_17
    return v6

    :cond_1c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/g1;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/g1;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/N1;->J(Lcom/google/protobuf/q2;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/N1;->H(Lcom/google/protobuf/e0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final b0(Ljava/lang/Object;[BIILcom/google/protobuf/m$b;)I
    .locals 29
    .annotation build Lcom/google/protobuf/A;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->e(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v8, -0x1

    move/from16 v0, p3

    move v1, v8

    move/from16 v2, v16

    move v6, v2

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/m;->H(I[BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v3, v11, Lcom/google/protobuf/m$b;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v15, v5, v2}, Lcom/google/protobuf/g1;->e0(II)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_1
    invoke-virtual {v15, v5}, Lcom/google/protobuf/g1;->d0(I)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ne v2, v8, :cond_2

    move v2, v4

    move/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v28, v9

    move/from16 v27, v16

    goto/16 :goto_12

    :cond_2
    iget-object v0, v15, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    const/16 v8, 0x11

    move/from16 p3, v5

    if-gt v0, v8, :cond_c

    iget-object v8, v15, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v20, v2, 0x2

    aget v8, v8, v20

    ushr-int/lit8 v20, v8, 0x14

    const/4 v5, 0x1

    shl-int v20, v5, v20

    move-wide/from16 v22, v10

    const v10, 0xfffff

    and-int/2addr v8, v10

    if-eq v8, v7, :cond_5

    if-eq v7, v10, :cond_3

    int-to-long v10, v7

    invoke-virtual {v9, v14, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_3
    if-eq v8, v10, :cond_4

    int-to-long v6, v8

    invoke-virtual {v9, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move v7, v8

    :cond_5
    const/4 v8, 0x5

    packed-switch v0, :pswitch_data_0

    :cond_6
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    :cond_7
    move v10, v4

    move/from16 p3, v6

    goto/16 :goto_c

    :pswitch_0
    if-nez v3, :cond_6

    move-object/from16 v11, p5

    move-wide/from16 v0, v22

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v8

    iget-wide v3, v11, Lcom/google/protobuf/m$b;->b:J

    invoke-static {v3, v4}, Lcom/google/protobuf/C;->d(J)J

    move-result-wide v4

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v8

    move v8, v2

    move-wide/from16 v2, v22

    move/from16 v18, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v20

    move v2, v8

    move/from16 v0, v17

    :goto_4
    move/from16 v1, v18

    const/4 v8, -0x1

    goto/16 :goto_0

    :pswitch_1
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/m$b;->a:I

    invoke-static {v1}, Lcom/google/protobuf/C;->c(I)I

    move-result v1

    move-wide/from16 v2, v22

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_5
    or-int v6, v6, v20

    :goto_6
    move v2, v8

    goto :goto_4

    :pswitch_2
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move-wide/from16 v0, v22

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget v3, v11, Lcom/google/protobuf/m$b;->a:I

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    or-int v6, v6, v20

    move v0, v2

    goto :goto_6

    :pswitch_3
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move-wide/from16 v0, v22

    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->b([BILcom/google/protobuf/m$b;)I

    move-result v2

    iget-object v3, v11, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    const/4 v2, 0x2

    if-ne v3, v2, :cond_7

    invoke-virtual {v15, v14, v8}, Lcom/google/protobuf/g1;->M(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v8}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v1

    move-object v0, v5

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move-object v10, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/m;->O(Ljava/lang/Object;Lcom/google/protobuf/L1;[BIILcom/google/protobuf/m$b;)I

    move-result v0

    invoke-virtual {v15, v14, v8, v10}, Lcom/google/protobuf/g1;->p0(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move/from16 p3, v6

    move-wide/from16 v5, v22

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->C([BILcom/google/protobuf/m$b;)I

    move-result v0

    goto :goto_8

    :cond_8
    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->F([BILcom/google/protobuf/m$b;)I

    move-result v0

    :goto_8
    iget-object v1, v11, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9
    or-int v6, p3, v20

    goto :goto_6

    :cond_9
    move v10, v4

    goto/16 :goto_c

    :pswitch_6
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_9

    invoke-static {v12, v4, v11}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v1

    iget-wide v2, v11, Lcom/google/protobuf/m$b;->b:J

    const-wide/16 v23, 0x0

    cmp-long v2, v2, v23

    if-eqz v2, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v0, v16

    :goto_a
    invoke-static {v14, v5, v6, v0}, Lcom/google/protobuf/x2;->a0(Ljava/lang/Object;JZ)V

    or-int v6, p3, v20

    move v0, v1

    goto/16 :goto_6

    :pswitch_7
    move/from16 v18, p3

    move-object/from16 v11, p5

    move/from16 p3, v6

    move v0, v8

    move-wide/from16 v5, v22

    move v8, v2

    if-ne v3, v0, :cond_9

    invoke-static {v12, v4}, Lcom/google/protobuf/m;->h([BI)I

    move-result v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_9

    :pswitch_8
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-ne v3, v0, :cond_9

    invoke-static {v12, v4}, Lcom/google/protobuf/m;->j([BI)J

    move-result-wide v23

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v5

    move v10, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    add-int/lit8 v0, v10, 0x8

    goto :goto_9

    :pswitch_9
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_b

    invoke-static {v12, v10, v11}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/m$b;->a:I

    invoke-virtual {v9, v14, v5, v6, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_a
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-nez v3, :cond_b

    invoke-static {v12, v10, v11}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result v10

    iget-wide v2, v11, Lcom/google/protobuf/m$b;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v23, v2

    move-wide v2, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, p3, v20

    move v2, v8

    move v0, v10

    goto/16 :goto_4

    :pswitch_b
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v10, v4

    move/from16 p3, v6

    move v0, v8

    move-wide/from16 v5, v22

    move v8, v2

    if-ne v3, v0, :cond_b

    invoke-static {v12, v10}, Lcom/google/protobuf/m;->l([BI)F

    move-result v0

    invoke-static {v14, v5, v6, v0}, Lcom/google/protobuf/x2;->l0(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v10, 0x4

    goto/16 :goto_9

    :pswitch_c
    move/from16 v18, p3

    move-object/from16 v11, p5

    move v8, v2

    move v10, v4

    move v0, v5

    move/from16 p3, v6

    move-wide/from16 v5, v22

    if-ne v3, v0, :cond_b

    invoke-static {v12, v10}, Lcom/google/protobuf/m;->d([BI)D

    move-result-wide v0

    invoke-static {v14, v5, v6, v0, v1}, Lcom/google/protobuf/x2;->j0(Ljava/lang/Object;JD)V

    goto :goto_b

    :cond_b
    :goto_c
    move/from16 v6, p3

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v2, v10

    const/16 v19, -0x1

    goto/16 :goto_12

    :cond_c
    move/from16 v18, p3

    move v8, v2

    move/from16 v20, v6

    move-wide v5, v10

    move-object/from16 v11, p5

    move v10, v4

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_10

    const/4 v2, 0x2

    if-ne v3, v2, :cond_f

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/D0$k;

    invoke-interface {v0}, Lcom/google/protobuf/D0$k;->hc()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_d

    :cond_d
    mul-int/lit8 v1, v1, 0x2

    :goto_d
    invoke-interface {v0, v1}, Lcom/google/protobuf/D0$k;->q(I)Lcom/google/protobuf/D0$k;

    move-result-object v0

    invoke-virtual {v9, v14, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v5, v0

    invoke-virtual {v15, v8}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move/from16 v10, v20

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/m;->q(Lcom/google/protobuf/L1;I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v0

    move v2, v8

    move v6, v10

    goto/16 :goto_4

    :cond_f
    move/from16 v22, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v15, v10

    move/from16 v26, v20

    const/16 v19, -0x1

    goto/16 :goto_11

    :cond_10
    move/from16 v4, v20

    const/16 v2, 0x31

    if-gt v0, v2, :cond_12

    int-to-long v1, v1

    move/from16 p3, v0

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v23, v3

    move v3, v10

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v24, v5

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v26, v15

    move v15, v7

    move/from16 v7, v23

    move/from16 v27, v8

    const/16 v19, -0x1

    move-object/from16 v28, v9

    move/from16 v22, v15

    move v15, v10

    move-wide/from16 v9, v20

    move/from16 v11, p3

    move-wide/from16 v12, v24

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/g1;->c0(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_e
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v8, v19

    move/from16 v7, v22

    move/from16 v6, v26

    :goto_f
    move/from16 v2, v27

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_11
    move v2, v0

    :goto_10
    move/from16 v7, v22

    move/from16 v6, v26

    goto/16 :goto_12

    :cond_12
    move/from16 p3, v0

    move/from16 v23, v3

    move/from16 v26, v4

    move-wide/from16 v24, v5

    move/from16 v22, v7

    move/from16 v27, v8

    move-object/from16 v28, v9

    move v15, v10

    const/16 v19, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_14

    move/from16 v7, v23

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v27

    move-wide/from16 v6, v24

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/g1;->Y(Ljava/lang/Object;[BIIIJLcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    :cond_13
    :goto_11
    move v2, v15

    goto :goto_10

    :cond_14
    move/from16 v7, v23

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v18

    move-wide/from16 v10, v24

    move/from16 v12, v27

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/g1;->Z(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/m$b;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_e

    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/g1;->p(Ljava/lang/Object;)Lcom/google/protobuf/s2;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/m;->G(I[BIILcom/google/protobuf/s2;Lcom/google/protobuf/m$b;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v18

    move/from16 v8, v19

    goto :goto_f

    :cond_15
    move/from16 v26, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_16

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v26

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v1, p4

    if-ne v0, v1, :cond_17

    return v0

    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c0(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/m$b;)I
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "data",
            "position",
            "limit",
            "tag",
            "number",
            "wireType",
            "bufferPosition",
            "typeAndOffset",
            "fieldType",
            "fieldOffset",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/D0$k;

    invoke-interface {v10}, Lcom/google/protobuf/D0$k;->hc()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v11, v12

    :goto_0
    invoke-interface {v10, v11}, Lcom/google/protobuf/D0$k;->q(I)Lcom/google/protobuf/D0$k;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_d

    invoke-virtual {p0, v8}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/m;->o(Lcom/google/protobuf/L1;I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->x([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->B(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->w([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->A(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->y([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_d

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/m;->J(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v2

    :goto_1
    invoke-virtual {p0, v8}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    invoke-static/range {p7 .. p12}, Lcom/google/protobuf/N1;->C(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/D0$e;Ljava/lang/Object;Lcom/google/protobuf/q2;)Ljava/lang/Object;

    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->c(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_d

    invoke-virtual {p0, v8}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/m;->q(Lcom/google/protobuf/L1;I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_d

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-nez v1, :cond_5

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->D(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_5
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->E(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_6

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->r([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_6
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->a(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_7

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->t([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->i(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_8

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->u([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->k(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_9

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->y([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->J(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_a

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->z([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :cond_a
    if-nez v2, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->M(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_b

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->v([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :cond_b
    if-ne v2, v6, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->m(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_c

    invoke-static {p2, v4, v10, v7}, Lcom/google/protobuf/m;->s([BILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-ne v2, v5, :cond_d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/m;->e(I[BIILcom/google/protobuf/D0$k;Lcom/google/protobuf/m$b;)I

    move-result v1

    goto :goto_3

    :cond_d
    :goto_2
    move v1, v4

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d0(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/g1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/g1;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/g1;->n0(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final e0(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "number",
            "min"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/g1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/g1;->d:I

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->n0(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final f([BIILcom/google/protobuf/R0$b;Ljava/util/Map;Lcom/google/protobuf/m$b;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "position",
            "limit",
            "metadata",
            "target",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/google/protobuf/R0$b<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v0, p2

    move-object/from16 v10, p6

    invoke-static {p1, v0, v10}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v10, Lcom/google/protobuf/m$b;->a:I

    if-ltz v1, :cond_6

    sub-int v2, v8, v0

    if-gt v1, v2, :cond_6

    add-int v11, v0, v1

    iget-object v1, v9, Lcom/google/protobuf/R0$b;->b:Ljava/lang/Object;

    iget-object v2, v9, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    move-object v12, v1

    move-object v13, v2

    :goto_0
    if-ge v0, v11, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v7, v0

    if-gez v0, :cond_0

    invoke-static {v0, p1, v1, v10}, Lcom/google/protobuf/m;->H(I[BILcom/google/protobuf/m$b;)I

    move-result v0

    iget v1, v10, Lcom/google/protobuf/m$b;->a:I

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v9, Lcom/google/protobuf/R0$b;->c:Lcom/google/protobuf/A2$b;

    invoke-virtual {v1}, Lcom/google/protobuf/A2$b;->b()I

    move-result v1

    if-ne v3, v1, :cond_3

    iget-object v4, v9, Lcom/google/protobuf/R0$b;->c:Lcom/google/protobuf/A2$b;

    iget-object v0, v9, Lcom/google/protobuf/R0$b;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/g1;->g([BIILcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/m$b;)I

    move-result v0

    iget-object v13, v10, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, v9, Lcom/google/protobuf/R0$b;->a:Lcom/google/protobuf/A2$b;

    invoke-virtual {v1}, Lcom/google/protobuf/A2$b;->b()I

    move-result v1

    if-ne v3, v1, :cond_3

    iget-object v4, v9, Lcom/google/protobuf/R0$b;->a:Lcom/google/protobuf/A2$b;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/g1;->g([BIILcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/m$b;)I

    move-result v0

    iget-object v12, v10, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {v0, p1, v2, v8, v10}, Lcom/google/protobuf/m;->P(I[BIILcom/google/protobuf/m$b;)I

    move-result v0

    goto :goto_0

    :cond_4
    if-ne v0, v11, :cond_5

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public final f0(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final g([BIILcom/google/protobuf/A2$b;Ljava/lang/Class;Lcom/google/protobuf/m$b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "position",
            "limit",
            "fieldType",
            "messageType",
            "registers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/A2$b;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/m$b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g1$a;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->F([BILcom/google/protobuf/m$b;)I

    move-result p1

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/m$b;->b:J

    invoke-static {p2, p3}, Lcom/google/protobuf/C;->d(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result p1

    iget p2, p6, Lcom/google/protobuf/m$b;->a:I

    invoke-static {p2}, Lcom/google/protobuf/C;->c(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object p4

    invoke-static {p4, p1, p2, p3, p6}, Lcom/google/protobuf/m;->p(Lcom/google/protobuf/L1;[BIILcom/google/protobuf/m$b;)I

    move-result p1

    goto :goto_3

    :pswitch_4
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/m$b;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_5
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->I([BILcom/google/protobuf/m$b;)I

    move-result p1

    iget p2, p6, Lcom/google/protobuf/m$b;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_6
    invoke-static {p1, p2}, Lcom/google/protobuf/m;->l([BI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p2, 0x4

    goto :goto_3

    :pswitch_7
    invoke-static {p1, p2}, Lcom/google/protobuf/m;->j([BI)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p2, 0x8

    goto :goto_3

    :pswitch_8
    invoke-static {p1, p2}, Lcom/google/protobuf/m;->h([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    invoke-static {p1, p2}, Lcom/google/protobuf/m;->d([BI)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_a
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->b([BILcom/google/protobuf/m$b;)I

    move-result p1

    goto :goto_3

    :pswitch_b
    invoke-static {p1, p2, p6}, Lcom/google/protobuf/m;->L([BILcom/google/protobuf/m$b;)I

    move-result p1

    iget-wide p2, p6, Lcom/google/protobuf/m$b;->b:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p6, Lcom/google/protobuf/m$b;->c:Ljava/lang/Object;

    :goto_3
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(Ljava/lang/Object;JLcom/google/protobuf/E1;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "offset",
            "reader",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/E1;",
            "Lcom/google/protobuf/L1<",
            "TE;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1, p5, p6}, Lcom/google/protobuf/E1;->B(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public final h0(Ljava/lang/Object;ILcom/google/protobuf/E1;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "reader",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/E1;",
            "Lcom/google/protobuf/L1<",
            "TE;>;",
            "Lcom/google/protobuf/d0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, p4, p5}, Lcom/google/protobuf/E1;->D(Ljava/util/List;Lcom/google/protobuf/L1;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "other",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->C(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    return v3

    :pswitch_1
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_2

    move v3, v4

    :cond_2
    return v3

    :pswitch_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_3

    move v3, v4

    :cond_3
    return v3

    :pswitch_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_4

    move v3, v4

    :cond_4
    return v3

    :pswitch_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_5

    move v3, v4

    :cond_5
    return v3

    :pswitch_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_6

    move v3, v4

    :cond_6
    return v3

    :pswitch_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7

    move v3, v4

    :cond_7
    return v3

    :pswitch_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v3, v4

    :cond_8
    return v3

    :pswitch_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v3, v4

    :cond_9
    return v3

    :pswitch_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/N1;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v3, v4

    :cond_a
    return v3

    :pswitch_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_b

    move v3, v4

    :cond_b
    return v3

    :pswitch_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c

    move v3, v4

    :cond_c
    return v3

    :pswitch_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_d

    move v3, v4

    :cond_d
    return v3

    :pswitch_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_e

    move v3, v4

    :cond_e
    return v3

    :pswitch_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_f

    move v3, v4

    :cond_f
    return v3

    :pswitch_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_10

    move v3, v4

    :cond_10
    return v3

    :pswitch_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_11

    move v3, v4

    :cond_11
    return v3

    :pswitch_14
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-nez p1, :cond_12

    move v3, v4

    :cond_12
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i0(Ljava/lang/Object;ILcom/google/protobuf/E1;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/g1;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/E1;->T()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/g1;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/E1;->Q()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/E1;->h()Lcom/google/protobuf/x;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->t0(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "unknownFields",
            "unknownFieldSchema",
            "containerMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/protobuf/q2<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->R(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->m(I)Lcom/google/protobuf/D0$e;

    move-result-object v4

    if-nez v4, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/U0;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/protobuf/g1;->k(IILjava/util/Map;Lcom/google/protobuf/D0$e;Ljava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j0(Ljava/lang/Object;ILcom/google/protobuf/E1;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/g1;->v(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/E1;->I(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/g1;->n:Lcom/google/protobuf/L0;

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/protobuf/L0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/protobuf/E1;->r(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final k(IILjava/util/Map;Lcom/google/protobuf/D0$e;Ljava/lang/Object;Lcom/google/protobuf/q2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "number",
            "mapData",
            "enumVerifier",
            "unknownFields",
            "unknownFieldSchema",
            "containerMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/protobuf/D0$e;",
            "TUB;",
            "Lcom/google/protobuf/q2<",
            "TUT;TUB;>;",
            "Ljava/lang/Object;",
            ")TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/U0;->c(Ljava/lang/Object;)Lcom/google/protobuf/R0$b;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/protobuf/D0$e;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6, p7}, Lcom/google/protobuf/q2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/R0;->b(Lcom/google/protobuf/R0$b;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/x;->M(I)Lcom/google/protobuf/x$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/x$h;->b()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/protobuf/R0;->l(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/R0$b;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/google/protobuf/x$h;->a()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/protobuf/q2;->d(Ljava/lang/Object;ILcom/google/protobuf/x;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method public final l0(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->f0(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final m(I)Lcom/google/protobuf/D0$e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/protobuf/D0$e;

    return-object p1
.end method

.method public final m0(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->f0(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/protobuf/x2;->o0(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final n0(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "number",
            "min"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/g1;->R(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final o(I)Lcom/google/protobuf/L1;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/protobuf/L1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z1;->i(Ljava/lang/Class;)Lcom/google/protobuf/L1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/g1;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final p0(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->l0(Ljava/lang/Object;I)V

    return-void
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final q0(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "fieldNumber",
            "pos",
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/g1;->m0(Ljava/lang/Object;II)V

    return-void
.end method

.method public final r(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    const v4, 0xfffff

    move v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/protobuf/g1;->a:[I

    array-length v9, v9

    if-ge v5, v9, :cond_15

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v9

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v10

    invoke-static {v9}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v11

    const/16 v12, 0x11

    const/4 v13, 0x1

    if-gt v11, v12, :cond_0

    iget-object v12, v0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int v14, v12, v4

    ushr-int/lit8 v15, v12, 0x14

    shl-int v15, v13, v15

    if-eq v14, v7, :cond_2

    int-to-long v7, v14

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v14

    goto :goto_2

    :cond_0
    iget-boolean v12, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/google/protobuf/p0;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/p0;

    invoke-virtual {v12}, Lcom/google/protobuf/p0;->e()I

    move-result v12

    if-lt v11, v12, :cond_1

    sget-object v12, Lcom/google/protobuf/p0;->SINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    invoke-virtual {v12}, Lcom/google/protobuf/p0;->e()I

    move-result v12

    if-gt v11, v12, :cond_1

    iget-object v12, v0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v14, v5, 0x2

    aget v12, v12, v14

    and-int/2addr v12, v4

    :goto_1
    const/4 v15, 0x0

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v9}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v13

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    packed-switch v11, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->t0(ILcom/google/protobuf/b1;Lcom/google/protobuf/L1;)I

    move-result v3

    :goto_3
    add-int/2addr v6, v3

    :cond_3
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->T0(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->R0(II)I

    move-result v3

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->P0(IJ)I

    move-result v3

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->N0(II)I

    move-result v4

    :goto_5
    add-int/2addr v6, v4

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v3

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v3

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/x;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v3

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->p(ILjava/lang/Object;Lcom/google/protobuf/L1;)I

    move-result v3

    goto :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/x;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/google/protobuf/x;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v3

    goto/16 :goto_3

    :cond_4
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->V0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->m0(II)I

    move-result v4

    goto :goto_5

    :pswitch_c
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->o0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v13, v14}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v3

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v10, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v3

    goto/16 :goto_3

    :pswitch_12
    iget-object v3, v0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v10, v4, v9}, Lcom/google/protobuf/U0;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->k(ILjava/util/List;Lcom/google/protobuf/L1;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_5

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    :goto_6
    add-int/2addr v4, v9

    add-int/2addr v4, v3

    goto/16 :goto_5

    :pswitch_15
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_6

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto :goto_6

    :pswitch_16
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_7

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto :goto_6

    :pswitch_17
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_8

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto :goto_6

    :pswitch_18
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_9

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto :goto_6

    :pswitch_19
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_a

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_b

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_c

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_d

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->m(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_e

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1e
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->A(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_f

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_1f
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_10

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_10
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_20
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_11

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_11
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_21
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    iget-boolean v4, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v4, :cond_12

    int-to-long v12, v12

    invoke-virtual {v2, v1, v12, v13, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_12
    invoke-static {v10}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v9

    goto/16 :goto_6

    :pswitch_22
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->u(ILjava/util/List;Z)I

    move-result v3

    :goto_7
    add-int/2addr v6, v3

    move v11, v4

    goto/16 :goto_9

    :pswitch_23
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->s(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_24
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_25
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_26
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->d(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_27
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->x(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3}, Lcom/google/protobuf/N1;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->r(ILjava/util/List;Lcom/google/protobuf/L1;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3}, Lcom/google/protobuf/N1;->w(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_7

    :pswitch_2c
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_2d
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_2e
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->l(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_2f
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->z(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_30
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->n(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_31
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_7

    :pswitch_32
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    :pswitch_33
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->t0(ILcom/google/protobuf/b1;Lcom/google/protobuf/L1;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_34
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->T0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_35
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->R0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_36
    and-int v11, v8, v15

    if-eqz v11, :cond_3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->P0(IJ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_37
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->N0(II)I

    move-result v4

    goto/16 :goto_5

    :pswitch_38
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_39
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3a
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/x;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3b
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/N1;->p(ILjava/lang/Object;Lcom/google/protobuf/L1;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3c
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/protobuf/x;

    if-eqz v4, :cond_13

    check-cast v3, Lcom/google/protobuf/x;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v3

    goto/16 :goto_3

    :cond_13
    check-cast v3, Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->V0(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3d
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v3

    goto/16 :goto_3

    :pswitch_3e
    and-int v3, v8, v15

    if-eqz v3, :cond_3

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/google/protobuf/CodedOutputStream;->m0(II)I

    move-result v3

    :goto_8
    add-int/2addr v6, v3

    goto :goto_9

    :pswitch_3f
    const/4 v11, 0x0

    and-int v9, v8, v15

    if-eqz v9, :cond_14

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->o0(IJ)I

    move-result v3

    goto :goto_8

    :pswitch_40
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_14

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v10, v3}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v3

    goto :goto_8

    :pswitch_41
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_14

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v3

    goto :goto_8

    :pswitch_42
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_14

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->y0(IJ)I

    move-result v3

    goto :goto_8

    :pswitch_43
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_14

    invoke-static {v10, v9}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v3

    goto :goto_8

    :pswitch_44
    const/4 v11, 0x0

    and-int v3, v8, v15

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x0

    invoke-static {v10, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v3

    goto :goto_8

    :cond_14
    :goto_9
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_15
    iget-object v2, v0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/g1;->t(Lcom/google/protobuf/q2;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    iget-boolean v2, v0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/o0;->z()I

    move-result v1

    add-int/2addr v6, v1

    :cond_16
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/g1;->a:[I

    array-length v6, v6

    if-ge v4, v6, :cond_12

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->R(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v9

    sget-object v6, Lcom/google/protobuf/p0;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/p0;

    invoke-virtual {v6}, Lcom/google/protobuf/p0;->e()I

    move-result v6

    if-lt v7, v6, :cond_0

    sget-object v6, Lcom/google/protobuf/p0;->SINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    invoke-virtual {v6}, Lcom/google/protobuf/p0;->e()I

    move-result v6

    if-gt v7, v6, :cond_0

    iget-object v6, v0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    const v11, 0xfffff

    and-int/2addr v6, v11

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide/16 v11, 0x0

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/b1;

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->t0(ILcom/google/protobuf/b1;Lcom/google/protobuf/L1;)I

    move-result v6

    :goto_2
    add-int/2addr v5, v6

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->T0(IJ)I

    move-result v6

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->R0(II)I

    move-result v6

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->P0(IJ)I

    move-result v6

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->N0(II)I

    move-result v6

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v6

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v6

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/x;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v6

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/N1;->p(ILjava/lang/Object;Lcom/google/protobuf/L1;)I

    move-result v6

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/protobuf/x;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/google/protobuf/x;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v6

    goto/16 :goto_2

    :cond_1
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->V0(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->m0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->o0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->y0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v13}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v6

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p0, v1, v8, v4}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v6

    goto/16 :goto_2

    :pswitch_12
    iget-object v6, v0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v8, v7, v9}, Lcom/google/protobuf/U0;->e(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_13
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/N1;->k(ILjava/util/List;Lcom/google/protobuf/L1;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->v(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_2

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    :goto_3
    add-int/2addr v6, v8

    add-int/2addr v6, v7

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->t(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_3

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto :goto_3

    :pswitch_16
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_4

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto :goto_3

    :pswitch_17
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_5

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto :goto_3

    :pswitch_18
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_6

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto :goto_3

    :pswitch_19
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->y(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_7

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_8

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_9

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_a

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->m(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_b

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->A(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_c

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_d

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_e

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_21
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lcom/google/protobuf/N1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_11

    iget-boolean v9, v0, Lcom/google/protobuf/g1;->i:Z

    if-eqz v9, :cond_f

    int-to-long v9, v6

    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->X0(I)I

    move-result v6

    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->Z0(I)I

    move-result v8

    goto/16 :goto_3

    :pswitch_22
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->u(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_23
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->s(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_24
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_25
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_26
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->d(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_27
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->x(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_28
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/N1;->c(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_29
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/N1;->r(ILjava/util/List;Lcom/google/protobuf/L1;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2a
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/google/protobuf/N1;->w(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2b
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->a(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2c
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2d
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2e
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->l(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_2f
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->z(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_30
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->n(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_31
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->f(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_32
    invoke-static {v1, v9, v10}, Lcom/google/protobuf/g1;->F(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Lcom/google/protobuf/N1;->h(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_2

    :pswitch_33
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/b1;

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->t0(ILcom/google/protobuf/b1;Lcom/google/protobuf/L1;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_34
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->T0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->R0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_36
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->P0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_37
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->N0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_38
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->k0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_39
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->Y0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3a
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/x;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3b
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/N1;->p(ILjava/lang/Object;Lcom/google/protobuf/L1;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3c
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/google/protobuf/x;

    if-eqz v7, :cond_10

    check-cast v6, Lcom/google/protobuf/x;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->g0(ILcom/google/protobuf/x;)I

    move-result v6

    goto/16 :goto_2

    :cond_10
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->V0(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3d
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v14}, Lcom/google/protobuf/CodedOutputStream;->a0(IZ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3e
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->m0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_3f
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v11, v12}, Lcom/google/protobuf/CodedOutputStream;->o0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_40
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Lcom/google/protobuf/CodedOutputStream;->w0(II)I

    move-result v6

    goto/16 :goto_2

    :pswitch_41
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->a1(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_42
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v1, v9, v10}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->y0(IJ)I

    move-result v6

    goto/16 :goto_2

    :pswitch_43
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v8, v13}, Lcom/google/protobuf/CodedOutputStream;->q0(IF)I

    move-result v6

    goto/16 :goto_2

    :pswitch_44
    invoke-virtual {p0, v1, v4}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_11

    const-wide/16 v6, 0x0

    invoke-static {v8, v6, v7}, Lcom/google/protobuf/CodedOutputStream;->i0(ID)I

    move-result v6

    goto/16 :goto_2

    :cond_11
    :goto_4
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    :cond_12
    iget-object v2, v0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/g1;->t(Lcom/google/protobuf/q2;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v5, v1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s0(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final t(Lcom/google/protobuf/q2;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/q2<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/q2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/q2;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final t0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/protobuf/g1;->f:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/o0;->C()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/protobuf/o0;->I()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/protobuf/g1;->a:[I

    array-length v6, v6

    sget-object v7, Lcom/google/protobuf/g1;->A:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v11, v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v13

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v14

    invoke-static {v13}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v15

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    iget-object v4, v0, Lcom/google/protobuf/g1;->a:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_1

    int-to-long v11, v9

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v9, v5}, Lcom/google/protobuf/e0;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    iget-object v9, v0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v9, v2, v5}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v13}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->l(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->S(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->C(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->r(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->Q(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->m(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/x;

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->T(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->q(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->c(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->o(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->i(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->L(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->V(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->P(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v14, v10}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->U(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->G(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v14, v4, v10}, Lcom/google/protobuf/g1;->w0(Lcom/google/protobuf/C2;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/N1;->i0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v13, 0x1

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_22
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_28
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/protobuf/N1;->W(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v9

    invoke-static {v4, v8, v2, v9}, Lcom/google/protobuf/N1;->q0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/protobuf/N1;->B0(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v13, 0x0

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->R(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v13}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->l(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->S(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->C(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->r(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->Q(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->m(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/x;

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v14, v4, v2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->d(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->q(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->c(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->o(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->i(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->f(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->L(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->l(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/protobuf/C2;->P(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_6

    invoke-static {v1, v8, v9}, Lcom/google/protobuf/g1;->h(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/protobuf/C2;->G(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    iget-object v4, v0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v4, v2, v5}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    iget-object v3, v0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/protobuf/g1;->y0(Lcom/google/protobuf/q2;Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->C()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->I()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    :goto_2
    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/e0;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_2

    iget-object v8, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->l(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->S(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->r(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->Q(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->m(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/x;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->T(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->q(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->c(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->o(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->i(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->L(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->V(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->P(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->U(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->G(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p2, v7, v6, v5}, Lcom/google/protobuf/g1;->w0(Lcom/google/protobuf/C2;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/N1;->i0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_21
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v9}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_22
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_24
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/N1;->W(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-static {v7, v6, p2, v8}, Lcom/google/protobuf/N1;->q0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2}, Lcom/google/protobuf/N1;->B0(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2f
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_30
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_31
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->R(I)I

    move-result v7

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v7, v6, p2, v4}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->l(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->S(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->r(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->Q(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->m(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/x;

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v7, v6, p2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->d(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->q(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->c(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->o(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->i(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->f(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->L(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->l(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Lcom/google/protobuf/C2;->P(IF)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, p1, v5}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/g1;->h(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Lcom/google/protobuf/C2;->G(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v3, p2, v2}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/g1;->y0(Lcom/google/protobuf/q2;Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v0(Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1;->o:Lcom/google/protobuf/q2;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/g1;->y0(Lcom/google/protobuf/q2;Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    iget-boolean v0, p0, Lcom/google/protobuf/g1;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e0;->c(Ljava/lang/Object;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->C()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->r()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/g1;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->s0(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    :goto_2
    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v6, v2}, Lcom/google/protobuf/e0;->a(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_2

    iget-object v6, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {v6, p2, v2}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lcom/google/protobuf/g1;->r0(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->l(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->S(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->r(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->Q(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->m(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/x;

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->T(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->q(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->c(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->o(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->W(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->i(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->X(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->L(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->V(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->P(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, p1, v5, v3}, Lcom/google/protobuf/g1;->D(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->U(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->G(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p2, v5, v4, v3}, Lcom/google/protobuf/g1;->w0(Lcom/google/protobuf/C2;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/N1;->i0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_21
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v8}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_22
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->y0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->w0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_24
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->u0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->s0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->a0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->D0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/protobuf/N1;->W(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-static {v5, v4, p2, v6}, Lcom/google/protobuf/N1;->q0(ILjava/util/List;Lcom/google/protobuf/C2;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lcom/google/protobuf/N1;->B0(ILjava/util/List;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->U(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->c0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->e0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->k0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_2f
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->F0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_30
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->m0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_31
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->g0(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->R(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lcom/google/protobuf/N1;->Y(ILjava/util/List;Lcom/google/protobuf/C2;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/C2;->B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->l(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->S(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->r(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->Q(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->m(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/x;

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Lcom/google/protobuf/C2;->I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/google/protobuf/g1;->x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->d(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->q(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->c(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->o(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->u(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->i(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->f(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->G(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->L(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->l(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Lcom/google/protobuf/C2;->P(IF)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lcom/google/protobuf/g1;->h(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Lcom/google/protobuf/C2;->G(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/google/protobuf/g1;->p:Lcom/google/protobuf/e0;

    invoke-virtual {p1, p2, v2}, Lcom/google/protobuf/e0;->j(Lcom/google/protobuf/C2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->f0(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const-wide/32 v3, 0xfffff

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_11

    invoke-virtual {p0, p2}, Lcom/google/protobuf/g1;->s0(I)I

    move-result p2

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/protobuf/g1;->r0(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move v4, v5

    :cond_0
    return v4

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    return v4

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    move v4, v5

    :cond_2
    return v4

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    move v4, v5

    :cond_3
    return v4

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    move v4, v5

    :cond_4
    return v4

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    move v4, v5

    :cond_5
    return v4

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    move v4, v5

    :cond_6
    return v4

    :pswitch_7
    sget-object p2, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    move v4, v5

    :cond_7
    return v4

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_8
    instance-of p2, p1, Lcom/google/protobuf/x;

    if-eqz p2, :cond_9

    sget-object p2, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    invoke-virtual {p2, p1}, Lcom/google/protobuf/x;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->w(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a

    move v4, v5

    :cond_a
    return v4

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_b

    move v4, v5

    :cond_b
    return v4

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c

    move v4, v5

    :cond_c
    return v4

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_d

    move v4, v5

    :cond_d
    return v4

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->N(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    move v4, v5

    :cond_e
    return v4

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->H(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_f

    move v4, v5

    :cond_f
    return v4

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->F(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    return v4

    :cond_11
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/x2;->K(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_12

    move v4, v5

    :cond_12
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w0(Lcom/google/protobuf/C2;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "number",
            "mapField",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/C2;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-virtual {p0, p4}, Lcom/google/protobuf/g1;->n(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/protobuf/U0;->c(Ljava/lang/Object;)Lcom/google/protobuf/R0$b;

    move-result-object p4

    iget-object v0, p0, Lcom/google/protobuf/g1;->q:Lcom/google/protobuf/U0;

    invoke-interface {v0, p3}, Lcom/google/protobuf/U0;->h(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/google/protobuf/C2;->u(ILcom/google/protobuf/R0$b;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "pos",
            "presenceFieldOffset",
            "presenceField",
            "presenceMask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g1;->w(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final x0(ILjava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/C2;->e(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/protobuf/x;

    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/C2;->h(ILcom/google/protobuf/x;)V

    :goto_0
    return-void
.end method

.method public final y0(Lcom/google/protobuf/q2;Ljava/lang/Object;Lcom/google/protobuf/C2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "schema",
            "message",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/q2<",
            "TUT;TUB;>;TT;",
            "Lcom/google/protobuf/C2;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/google/protobuf/q2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/q2;->t(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "typeAndOffset",
            "pos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/g1;->S(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/x2;->Q(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/protobuf/g1;->o(I)Lcom/google/protobuf/L1;

    move-result-object p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/protobuf/L1;->K1(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return p3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
