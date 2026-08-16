.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:[C

.field public static final h:[C

.field public static final i:[C

.field public static final j:[C

.field public static final k:[C

.field public static final l:[C

.field public static final m:Lcom/google/android/gms/common/server/response/l;

.field public static final n:Lcom/google/android/gms/common/server/response/l;

.field public static final o:Lcom/google/android/gms/common/server/response/l;

.field public static final p:Lcom/google/android/gms/common/server/response/l;

.field public static final q:Lcom/google/android/gms/common/server/response/l;

.field public static final r:Lcom/google/android/gms/common/server/response/l;

.field public static final s:Lcom/google/android/gms/common/server/response/l;

.field public static final t:Lcom/google/android/gms/common/server/response/l;


# instance fields
.field public final a:[C

.field public final b:[C

.field public final c:[C

.field public final d:Ljava/lang/StringBuilder;

.field public final e:Ljava/lang/StringBuilder;

.field public final f:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->h:[C

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->i:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->j:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->k:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->l:[C

    new-instance v0, Lcom/google/android/gms/common/server/response/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->m:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->n:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->o:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->p:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->q:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->r:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/j;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->s:Lcom/google/android/gms/common/server/response/l;

    new-instance v0, Lcom/google/android/gms/common/server/response/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->t:Lcom/google/android/gms/common/server/response/l;

    return-void

    nop

    :array_0
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    :array_3
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_4
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    const/16 v0, 0x20

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    const/16 v1, 0x400

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->e:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    return-void
.end method

.method public static final b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 8
    .param p3    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-char v5, p1, v4

    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p3, :cond_0

    aget-char v6, p3, v0

    if-ne v6, v5, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected control character while reading string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_2
    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x22

    if-ne v5, v7, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {p2, p1, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    int-to-long v0, v6

    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LT0/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    const/16 v4, 0x5c

    if-ne v5, v4, :cond_3

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    :goto_3
    move v4, v6

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p1, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {p0, v3}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected EOF while parsing string"

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->l(Ljava/io/BufferedReader;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->m(Ljava/io/BufferedReader;)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->n(Ljava/io/BufferedReader;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->p(Ljava/io/BufferedReader;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic g(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->q(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->u(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->v(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;Z)Z
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->A(Ljava/io/BufferedReader;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Ljava/io/BufferedReader;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x66

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->i:[C

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->h:[C

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    return v2

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    return v3

    :cond_3
    if-eqz p2, :cond_4

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->k:[C

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->j:[C

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    return v3

    :cond_5
    if-nez p2, :cond_6

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->A(Ljava/io/BufferedReader;Z)Z

    move-result p1

    return p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No boolean value found in string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a;)Z
    .locals 16
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "Error instantiating inner object"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/common/server/response/a;->d()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->s(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_1a

    :goto_0
    if-eqz v5, :cond_19

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/server/response/a$a;

    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->t(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v9, v5, Lcom/google/android/gms/common/server/response/a$a;->c:I

    const/16 v11, 0x2c

    const/16 v12, 0x7b

    const/16 v13, 0x7d

    const/16 v14, 0x6e

    const/4 v15, 0x0

    packed-switch v9, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid field type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v9, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v9

    if-ne v9, v14, :cond_1

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v9, v15}, Lcom/google/android/gms/common/server/response/a;->b(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    move v5, v10

    goto/16 :goto_7

    :cond_1
    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x5b

    if-ne v9, v12, :cond_2

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->x(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a$a;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v2, v5, v9, v12}, Lcom/google/android/gms/common/server/response/a;->b(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected array start"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v9

    if-ne v9, v14, :cond_4

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v9, v15}, Lcom/google/android/gms/common/server/response/a;->c(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Lcom/google/android/gms/common/server/response/a;)V

    goto :goto_1

    :cond_4
    iget-object v14, v1, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-virtual {v14, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v9, v12, :cond_5

    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/common/server/response/a$a;->E0()Lcom/google/android/gms/common/server/response/a;

    move-result-object v9

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->B(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a;)Z

    iget-object v12, v5, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v5, v12, v9}, Lcom/google/android/gms/common/server/response/a;->c(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Lcom/google/android/gms/common/server/response/a;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected start of object"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v9

    if-ne v9, v14, :cond_6

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    move-object v9, v15

    goto :goto_5

    :cond_6
    if-ne v9, v12, :cond_e

    iget-object v9, v1, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-virtual {v9, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v12

    if-eqz v12, :cond_d

    const/16 v14, 0x22

    if-eq v12, v14, :cond_8

    if-eq v12, v13, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    goto :goto_5

    :cond_8
    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    iget-object v10, v1, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    invoke-static {v0, v12, v10, v15}, Lcom/google/android/gms/common/server/response/FastParser;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v12

    const/16 v6, 0x3a

    if-ne v12, v6, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v6

    if-ne v6, v14, :cond_b

    iget-object v6, v1, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    iget-object v12, v1, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    invoke-static {v0, v6, v12, v15}, Lcom/google/android/gms/common/server/response/FastParser;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v6

    if-eq v6, v11, :cond_a

    if-ne v6, v13, :cond_9

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    :goto_5
    invoke-virtual {v2, v5, v9}, Lcom/google/android/gms/common/server/response/a;->D(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/Map;)V

    :goto_6
    const/4 v5, 0x4

    goto/16 :goto_7

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character while parsing string map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v10, 0x4

    goto :goto_4

    :cond_b
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v3, "Expected String value for key "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v3, "No map value found for key "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected start of a map object"

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v6, v1, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    iget-object v9, v1, Lcom/google/android/gms/common/server/response/FastParser;->e:Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->l:[C

    invoke-virtual {v1, v0, v6, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->r(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LT0/c;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->l0(Lcom/google/android/gms/common/server/response/a$a;[B)V

    goto :goto_6

    :pswitch_3
    iget-object v6, v1, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    iget-object v9, v1, Lcom/google/android/gms/common/server/response/FastParser;->e:Ljava/lang/StringBuilder;

    sget-object v10, Lcom/google/android/gms/common/server/response/FastParser;->l:[C

    invoke-virtual {v1, v0, v6, v9, v10}, Lcom/google/android/gms/common/server/response/FastParser;->r(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LT0/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->l0(Lcom/google/android/gms/common/server/response/a$a;[B)V

    goto :goto_6

    :pswitch_4
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_f

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->r:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->E(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->q(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->C(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_5
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_10

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->q:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->b0(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_10
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->A(Ljava/io/BufferedReader;Z)Z

    move-result v9

    invoke-virtual {v2, v5, v9}, Lcom/google/android/gms/common/server/response/a;->a0(Lcom/google/android/gms/common/server/response/a$a;Z)V

    goto/16 :goto_6

    :pswitch_6
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->t:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->O(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->u(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->K(Lcom/google/android/gms/common/server/response/a$a;Ljava/math/BigDecimal;)V

    goto/16 :goto_6

    :pswitch_7
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_12

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->p:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->t0(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->l(Ljava/io/BufferedReader;)D

    move-result-wide v9

    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/server/response/a;->n0(Lcom/google/android/gms/common/server/response/a$a;D)V

    goto/16 :goto_6

    :pswitch_8
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_13

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->o:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->x0(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->m(Ljava/io/BufferedReader;)F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->v0(Lcom/google/android/gms/common/server/response/a$a;F)V

    goto/16 :goto_6

    :pswitch_9
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_14

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->n:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->D0(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->p(Ljava/io/BufferedReader;)J

    move-result-wide v9

    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/server/response/a;->C0(Lcom/google/android/gms/common/server/response/a$a;J)V

    goto/16 :goto_6

    :pswitch_a
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_15

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->s:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->W(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->v(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->T(Lcom/google/android/gms/common/server/response/a$a;Ljava/math/BigInteger;)V

    goto/16 :goto_6

    :pswitch_b
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/a$a;->d:Z

    if-eqz v6, :cond_16

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->m:Lcom/google/android/gms/common/server/response/l;

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->A0(Lcom/google/android/gms/common/server/response/a$a;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->n(Ljava/io/BufferedReader;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/a;->z0(Lcom/google/android/gms/common/server/response/a$a;I)V

    goto/16 :goto_6

    :goto_7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v5

    if-eq v5, v11, :cond_18

    if-ne v5, v13, :cond_17

    move-object v5, v15

    goto/16 :goto_0

    :cond_17
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected end of object or field separator, but found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->s(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return v7

    :cond_1a
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public a(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/a;)V
    .locals 6
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/server/response/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    const-string v0, "Failed to close reader while parsing."

    const-string v1, "FastParser"

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v2, v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result p1

    if-eqz p1, :cond_3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-eq p1, v4, :cond_1

    const/16 v4, 0x7b

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/common/server/response/FastParser;->B(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/a;->d()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/server/response/a$a;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/common/server/response/FastParser;->x(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a$a;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/common/server/response/a$a;->g:Ljava/lang/String;

    invoke-virtual {p2, p1, v5, v4}, Lcom/google/android/gms/common/server/response/a;->b(Lcom/google/android/gms/common/server/response/a$a;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Object array response class must have a single Field"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No data to parse"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw p1
.end method

.method public final k(Ljava/io/BufferedReader;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    aget-char p1, p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final l(Ljava/io/BufferedReader;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final m(Ljava/io/BufferedReader;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public final n(Ljava/io/BufferedReader;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    if-lez p1, :cond_b

    aget-char v2, v1, v0

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/high16 v4, -0x80000000

    goto :goto_0

    :cond_1
    const v4, -0x7fffffff

    :goto_0
    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    const-string v3, "Unexpected non-digit character"

    const/16 v6, 0xa

    if-ge v2, p1, :cond_4

    add-int/lit8 v0, v2, 0x1

    aget-char v7, v1, v2

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ltz v7, :cond_3

    neg-int v7, v7

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v3}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move v7, v0

    move v0, v2

    :goto_2
    if-ge v0, p1, :cond_8

    add-int/lit8 v8, v0, 0x1

    aget-char v0, v1, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_7

    const v9, -0xccccccc

    const-string v10, "Number too large"

    if-lt v7, v9, :cond_6

    mul-int/lit8 v7, v7, 0xa

    add-int v9, v4, v0

    if-lt v7, v9, :cond_5

    sub-int/2addr v7, v0

    move v0, v8

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v3}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v2, :cond_a

    if-le v0, v5, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No digits to parse"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    neg-int v7, v7

    :goto_3
    return v7

    :cond_b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No number to parse"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/io/BufferedReader;[C)I
    .locals 10
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const-string v1, "Unexpected EOF"

    if-eqz v0, :cond_b

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_a

    const/16 v3, 0x6e

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    return v4

    :cond_0
    const/16 v3, 0x400

    invoke-virtual {p1, v3}, Ljava/io/BufferedReader;->mark(I)V

    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v0, v5, :cond_5

    move v0, v4

    move v2, v0

    :goto_0
    if-ge v0, v3, :cond_8

    invoke-virtual {p1, p2, v0, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    if-eq v8, v6, :cond_8

    aget-char v8, p2, v0

    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v9, v0, 0x1

    if-ne v8, v5, :cond_3

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    int-to-long v1, v9

    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    return v0

    :cond_3
    const/16 v0, 0x5c

    if-ne v8, v0, :cond_1

    xor-int/lit8 v0, v2, 0x1

    move v2, v0

    :goto_1
    move v0, v9

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected control character while reading string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    aput-char v0, p2, v4

    move v0, v7

    :goto_2
    if-ge v0, v3, :cond_8

    invoke-virtual {p1, p2, v0, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-eq v5, v6, :cond_8

    aget-char v5, p2, v0

    const/16 v8, 0x7d

    if-eq v5, v8, :cond_7

    if-eq v5, v2, :cond_7

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_7

    aget-char v5, p2, v0

    const/16 v8, 0x5d

    if-ne v5, v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    aput-char v4, p2, v0

    return v0

    :cond_8
    if-ne v0, v3, :cond_9

    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Absurdly long value"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Missing value"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Ljava/io/BufferedReader;)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    if-lez v1, :cond_b

    const/4 v5, 0x0

    aget-char v6, v4, v5

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1

    const-wide/high16 v8, -0x8000000000000000L

    goto :goto_0

    :cond_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const/4 v10, 0x1

    if-ne v6, v7, :cond_2

    move v5, v10

    :cond_2
    const-string v6, "Unexpected non-digit character"

    const/16 v7, 0xa

    if-ge v5, v1, :cond_4

    add-int/lit8 v2, v5, 0x1

    aget-char v3, v4, v5

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_3

    neg-int v3, v3

    int-to-long v11, v3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v1, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-wide v11, v2

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_8

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v4, v2

    invoke-static {v2, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_7

    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v11, v13

    const-string v14, "Number too large"

    if-ltz v13, :cond_6

    const-wide/16 v15, 0xa

    mul-long/2addr v11, v15

    move/from16 p1, v1

    int-to-long v0, v2

    add-long v15, v8, v0

    cmp-long v2, v11, v15

    if-ltz v2, :cond_5

    sub-long/2addr v11, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v3

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v0, v14}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v0, v14}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {v0, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz v5, :cond_a

    if-le v2, v10, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v1, "No digits to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    neg-long v11, v11

    :goto_2
    return-wide v11

    :cond_b
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v1, "No number to parse"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->r(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .locals 2
    .param p4    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 p2, 0x6e

    if-ne v0, p2, :cond_0

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected string"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastParser;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/16 p1, 0x5d

    if-eq v0, p1, :cond_1

    const/16 p1, 0x7d

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return-object v3

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return-object v3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/server/response/FastParser;->b(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result p1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Expected key/value separator"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x5c

    const-string v2, "Unexpected token "

    const/16 v3, 0x7d

    const/16 v4, 0x2c

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_f

    const/16 v8, 0x20

    const/16 v9, 0x5b

    if-eq v0, v9, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    goto/16 :goto_2

    :cond_1
    if-ne v0, v5, :cond_3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->s(Ljava/io/BufferedReader;)Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->t(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    goto/16 :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v8}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v8, 0x5d

    if-ne v0, v8, :cond_5

    invoke-virtual {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    move v0, v6

    move v11, v0

    :goto_0
    if-lez v7, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {v12}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v13

    if-nez v13, :cond_c

    if-ne v12, v5, :cond_7

    if-nez v11, :cond_6

    xor-int/lit8 v0, v0, 0x1

    :cond_6
    move v12, v5

    :cond_7
    if-ne v12, v9, :cond_9

    if-nez v0, :cond_8

    add-int/lit8 v7, v7, 0x1

    :cond_8
    move v12, v9

    :cond_9
    if-ne v12, v8, :cond_a

    if-nez v0, :cond_a

    add-int/lit8 v7, v7, -0x1

    :cond_a
    if-ne v12, v1, :cond_b

    if-eqz v0, :cond_b

    xor-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_b
    move v11, v6

    goto :goto_0

    :cond_c
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading array"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected EOF while parsing array"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-virtual {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    goto :goto_2

    :cond_f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Missing value"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    const-string v8, "Unexpected EOF while parsing string"

    const/4 v9, -0x1

    if-eq v0, v9, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    aget-char v0, v0, v6

    move v10, v6

    :goto_1
    if-ne v0, v5, :cond_14

    if-eqz v10, :cond_11

    move v0, v5

    move v10, v7

    goto :goto_3

    :cond_11
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v4, :cond_13

    if-ne v0, v3, :cond_12

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_12
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->s(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_3
    if-ne v0, v1, :cond_15

    xor-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_4

    :cond_15
    move v10, v6

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v0

    if-eq v0, v9, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->a:[C

    aget-char v0, v0, v6

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_1

    :cond_16
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading string"

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p1, v8}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final v(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->o(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->c:[C

    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final w(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/l;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    const/16 v2, 0x400

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v2

    if-eqz v2, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/l;->a(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return-object v0

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of array"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a$a;)Ljava/util/ArrayList;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error instantiating inner object"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v2

    const/16 v3, 0x5d

    const/4 v4, 0x5

    if-eq v2, v3, :cond_6

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_5

    const-string v5, "Unexpected token: "

    const/16 v6, 0x7b

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/a$a;->E0()Lcom/google/android/gms/common/server/response/a;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->B(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/a;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v2

    const/16 v8, 0x2c

    if-eq v2, v8, :cond_1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->k(Ljava/io/BufferedReader;)C

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of next object in array"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    return-object v1

    :goto_1
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->g:[C

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->z(Ljava/io/BufferedReader;[C)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/server/response/FastParser;->y(I)V

    return-object v1
.end method

.method public final y(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const-string v1, "Expected state "

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had empty stack"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z(Ljava/io/BufferedReader;[C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    sub-int/2addr v2, v1

    invoke-virtual {p1, v3, v0, v2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    add-int v4, v3, v1

    aget-char v4, p2, v4

    iget-object v5, p0, Lcom/google/android/gms/common/server/response/FastParser;->b:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected character"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
