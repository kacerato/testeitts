.class public final Lcom/android/tools/r8/internal/kR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Lcom/android/tools/r8/internal/kR;

.field public static final synthetic k:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/graph/A2;

.field public final c:Lcom/android/tools/r8/graph/I2;

.field public final d:Lcom/android/tools/r8/graph/C2;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/Set;

.field public final g:Lcom/android/tools/r8/graph/O2;

.field public final h:Lcom/android/tools/r8/graph/L4;

.field public final i:Lcom/android/tools/r8/graph/M2;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v10, Lcom/android/tools/r8/internal/kR;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/internal/kR;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/ArrayList;Ljava/util/Set;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/M2;)V

    sput-object v10, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/kR;->k:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p5, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p6, :cond_6

    goto :goto_3

    .line 5
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    if-eqz p7, :cond_8

    goto :goto_4

    .line 6
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v0, :cond_b

    if-eqz p8, :cond_a

    goto :goto_5

    .line 7
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_5
    if-nez v0, :cond_d

    if-eqz p9, :cond_c

    goto :goto_6

    .line 8
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    if-eqz p10, :cond_e

    goto :goto_7

    .line 9
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_f
    :goto_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {v0, p9, p6, p5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p5

    iput-object p5, p0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance p5, Lcom/android/tools/r8/graph/C0;

    invoke-direct {p5, p4}, Lcom/android/tools/r8/graph/C0;-><init>(Lcom/android/tools/r8/graph/D0;)V

    .line 13
    :try_start_0
    new-instance p6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p6, p5, Lcom/android/tools/r8/graph/C0;->a:Ljava/io/ByteArrayOutputStream;

    .line 14
    new-instance p6, Ljava/io/ObjectOutputStream;

    iget-object v0, p5, Lcom/android/tools/r8/graph/C0;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p6, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p6, p5, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    .line 15
    iget-object p6, p4, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p5, p6}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/L2;)V

    .line 16
    iget-object p6, p4, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p5, p6}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/I2;)V

    .line 17
    iget-object p6, p4, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {p5, p6}, Lcom/android/tools/r8/graph/C0;->a(Lcom/android/tools/r8/graph/C2;)V

    .line 18
    iget-object p4, p4, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-virtual {p5, p4}, Lcom/android/tools/r8/graph/C0;->a(Ljava/util/List;)V

    .line 19
    iget-object p4, p5, Lcom/android/tools/r8/graph/C0;->b:Ljava/io/ObjectOutputStream;

    invoke-virtual {p4}, Ljava/io/ObjectOutputStream;->close()V

    .line 20
    const-string p4, "SHA-1"

    invoke-static {p4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p4

    .line 21
    iget-object p5, p5, Lcom/android/tools/r8/graph/C0;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    sget-object p5, Lcom/android/tools/r8/internal/N5;->a:Lcom/android/tools/r8/internal/L5;

    .line 23
    iget-object p6, p5, Lcom/android/tools/r8/internal/M5;->c:Ljava/lang/Character;

    if-nez p6, :cond_10

    goto :goto_8

    .line 24
    :cond_10
    iget-object p6, p5, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    invoke-virtual {p5, p6}, Lcom/android/tools/r8/internal/M5;->a(Lcom/android/tools/r8/internal/J5;)Lcom/android/tools/r8/internal/N5;

    move-result-object p5

    .line 25
    :goto_8
    invoke-virtual {p4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/android/tools/r8/internal/N5;->a([B)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->a:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    .line 28
    iput-object p8, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 29
    iput-object p10, p0, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    .line 31
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p4, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x0

    if-nez p3, :cond_11

    move-object p1, p4

    goto :goto_9

    .line 33
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_12

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    .line 35
    new-instance p3, Lcom/android/tools/r8/graph/L4;

    .line 36
    iget p4, p2, Lcom/android/tools/r8/graph/g;->b:I

    .line 37
    iget p2, p2, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {p3, p4, p2}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 38
    iput-object p3, p0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    return-void

    .line 40
    :cond_12
    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 41
    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    return-void

    .line 42
    :catch_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Cannot get SHA-1 message digest"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/ArrayList;Ljava/util/Set;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/tools/r8/internal/kR;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 46
    iput-object p3, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    .line 47
    iput-object p4, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 48
    iput-object p5, p0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    .line 49
    iput-object p6, p0, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    .line 50
    iput-object p7, p0, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    .line 51
    iput-object p8, p0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 52
    iput-object p9, p0, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;
    .locals 1

    .line 114
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_1

    .line 115
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/R2;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    .line 117
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type of bootstrap arguments #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in DexCallSite"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to find at least "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bootstrap arguments in DexCallSite"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;
    .locals 17

    move-object/from16 v11, p0

    .line 63
    iget-object v0, v11, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, v11, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 65
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_e

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    .line 68
    iget-object v0, v11, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    .line 69
    iget-object v5, v11, Lcom/android/tools/r8/graph/D0;->e:Lcom/android/tools/r8/graph/L2;

    .line 70
    iget-object v0, v11, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    const/4 v14, 0x0

    .line 71
    const-class v15, Lcom/android/tools/r8/graph/Y2;

    invoke-static {v0, v14, v15}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/Y2;

    .line 72
    iget-object v1, v11, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 73
    const-class v2, Lcom/android/tools/r8/graph/X2;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/X2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/X2;->d:Lcom/android/tools/r8/graph/d4;

    move-object v8, v1

    check-cast v8, Lcom/android/tools/r8/graph/C2;

    .line 74
    iget-object v1, v11, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    const/4 v2, 0x2

    .line 75
    invoke-static {v1, v2, v15}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/Y2;

    .line 76
    iget-object v2, v1, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v2, Lcom/android/tools/r8/graph/I2;

    iget-object v4, v0, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v4, Lcom/android/tools/r8/graph/I2;

    .line 77
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 78
    iget-object v7, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v9, v4, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 79
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 80
    invoke-static {v12, v7, v9}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-static {v12, v6, v7}, Lcom/android/tools/r8/internal/qR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v14

    :goto_0
    if-eqz v3, :cond_d

    .line 83
    iget-object v2, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 84
    iget-object v3, v4, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 85
    array-length v4, v2

    .line 86
    array-length v6, v3

    if-ne v4, v6, :cond_d

    move v6, v14

    :goto_1
    if-ge v6, v4, :cond_3

    .line 87
    aget-object v7, v2, v6

    aget-object v9, v3, v6

    invoke-static {v12, v7, v9}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    :cond_3
    iget-object v2, v11, Lcom/android/tools/r8/graph/D0;->f:Lcom/android/tools/r8/graph/I2;

    .line 89
    iget-object v9, v2, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 90
    iget-object v10, v2, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 91
    new-instance v7, Lcom/android/tools/r8/internal/kR;

    iget-object v0, v0, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    move-object v6, v0

    check-cast v6, Lcom/android/tools/r8/graph/I2;

    iget-object v0, v1, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/tools/r8/graph/I2;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object v14, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v10}, Lcom/android/tools/r8/internal/kR;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;)V

    .line 92
    iget-object v0, v12, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, v11, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto/16 :goto_5

    .line 94
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/D0;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected number of metafactory method arguments in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_5
    iget-object v0, v11, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    new-instance v2, Lcom/android/tools/r8/internal/Eg1;

    invoke-direct {v2, v14}, Lcom/android/tools/r8/internal/Eg1;-><init>(Lcom/android/tools/r8/internal/kR;)V

    iget-object v3, v14, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    .line 97
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/Fg1;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Fg1;-><init>(Ljava/util/Set;)V

    .line 98
    const-class v3, Lcom/android/tools/r8/graph/R2$h;

    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/R2$h;

    iget v1, v1, Lcom/android/tools/r8/graph/R2$h;->d:I

    .line 99
    sget-boolean v5, Lcom/android/tools/r8/internal/kR;->k:Z

    if-nez v5, :cond_7

    and-int/lit8 v5, v1, -0x8

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_2
    and-int/lit8 v5, v1, 0x2

    const/4 v6, 0x4

    if-eqz v5, :cond_8

    .line 100
    invoke-static {v0, v6, v3}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/R2$h;

    iget v5, v5, Lcom/android/tools/r8/graph/R2$h;->d:I

    const/4 v7, 0x5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_9

    add-int/lit8 v9, v7, 0x1

    .line 101
    const-class v10, Lcom/android/tools/r8/graph/R2$l;

    invoke-static {v0, v7, v10}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/R2$l;

    iget-object v7, v7, Lcom/android/tools/r8/graph/R2$l;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    .line 102
    invoke-interface {v2, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v7, v9

    goto :goto_3

    :cond_8
    move v7, v6

    :cond_9
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_a

    .line 103
    iget-object v5, v12, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_a
    and-int/2addr v1, v6

    if-eqz v1, :cond_b

    add-int/lit8 v1, v7, 0x1

    .line 104
    invoke-static {v0, v7, v3}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/R2$h;

    iget v2, v2, Lcom/android/tools/r8/graph/R2$h;->d:I

    move v7, v1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_b

    add-int/lit8 v3, v7, 0x1

    .line 105
    invoke-static {v0, v7, v15}, Lcom/android/tools/r8/internal/kR;->a(Ljava/util/List;ILjava/lang/Class;)Lcom/android/tools/r8/graph/R2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/Y2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/Y2;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v5, Lcom/android/tools/r8/graph/I2;

    .line 106
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v7, v3

    goto :goto_4

    .line 107
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_c

    :goto_5
    return-object v14

    .line 108
    :cond_c
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Unexpected number of metafactory method arguments in DexCallSite"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_d
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/D0;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enforced and erased signatures are inconsistent in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_e
    sget-object v0, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H0;)Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 60
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    .line 61
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    .line 119
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1, v1, p0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, v1, p0}, Lcom/android/tools/r8/graph/M2;->a(ILcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object p0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/kR;->j:Lcom/android/tools/r8/internal/kR;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;
    .locals 5

    .line 13
    sget-boolean v0, Lcom/android/tools/r8/internal/kR;->k:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 16
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected method handle kind in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kR;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 19
    invoke-static {p1}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-object p1

    .line 20
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 22
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->c()V

    .line 23
    :cond_4
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 24
    invoke-virtual {v1, p3, p1, p2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    const/high16 p3, 0x10000

    .line 26
    iget p2, p2, Lcom/android/tools/r8/graph/g;->c:I

    .line 27
    invoke-static {p2, p3}, Lcom/android/tools/r8/graph/g;->d(II)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return-object p1

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kR;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v3, v3, Lcom/android/tools/r8/graph/C2;->g:Z

    .line 30
    sget-boolean v4, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v4, :cond_7

    .line 31
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_7
    if-eqz v3, :cond_8

    .line 32
    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    goto :goto_3

    .line 33
    :cond_8
    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 34
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    if-nez v2, :cond_a

    .line 35
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-nez v4, :cond_9

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->c()V

    .line 37
    :cond_9
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 38
    invoke-virtual {v1, p3, p1, p2}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object v2

    :cond_a
    if-nez v0, :cond_e

    if-eqz v2, :cond_e

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    sget-object p2, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne p1, p2, :cond_b

    .line 42
    invoke-static {v2}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p1

    if-nez p1, :cond_e

    :cond_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 43
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v2}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    .line 45
    :cond_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 46
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 49
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->i()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 51
    invoke-static {v2}, Lcom/android/tools/r8/internal/kR;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_4
    return-object v2

    .line 52
    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_e
    return-object v2

    .line 53
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 55
    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_f

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->c()V

    .line 56
    :cond_f
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p3, p1, p2}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez v0, :cond_11

    if-eqz p1, :cond_11

    .line 58
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_5

    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Lcom/android/tools/r8/graph/M2;
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 11
    sget-boolean v2, Lcom/android/tools/r8/internal/kR;->k:Z

    if-nez v2, :cond_1

    array-length v2, v1

    if-gtz v2, :cond_1

    array-length v2, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_1
    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_2

    aget-object v0, v1, v3

    return-object v0

    :cond_2
    aget-object v0, v0, v3

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;)Lcom/android/tools/r8/internal/kR;
    .locals 10

    .line 125
    iget-object v1, p0, Lcom/android/tools/r8/internal/kR;->a:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 128
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    const/4 v5, 0x1

    .line 129
    invoke-virtual {p3, v0, v5, v4}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v4

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/tools/r8/internal/Gg1;

    invoke-direct {v6, p1, p2}, Lcom/android/tools/r8/internal/Gg1;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 131
    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/ArrayList;Ljava/util/function/Function;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->f:Ljava/util/Set;

    new-instance v6, Lcom/android/tools/r8/internal/Hg1;

    invoke-direct {v6, p3}, Lcom/android/tools/r8/internal/Hg1;-><init>(Lcom/android/tools/r8/internal/RR;)V

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v6

    .line 133
    iget-object p3, p0, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    new-instance v0, Lcom/android/tools/r8/internal/Ig1;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Ig1;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 134
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    :cond_0
    :goto_0
    move-object v7, p3

    goto :goto_1

    .line 136
    :cond_1
    iget-object v7, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    sget-object v8, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-static {v7, v0, v8}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/M2;

    .line 137
    iget-object v7, p3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    if-eq v0, v7, :cond_0

    .line 138
    array-length p3, v0

    if-nez p3, :cond_2

    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/android/tools/r8/graph/O2;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/graph/O2;-><init>([Lcom/android/tools/r8/graph/M2;)V

    goto :goto_0

    .line 139
    :goto_1
    iget-object v8, p0, Lcom/android/tools/r8/internal/kR;->h:Lcom/android/tools/r8/graph/L4;

    .line 140
    iget-object p3, p0, Lcom/android/tools/r8/internal/kR;->i:Lcom/android/tools/r8/graph/M2;

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    :goto_2
    move-object v9, p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 141
    :goto_3
    new-instance p1, Lcom/android/tools/r8/internal/kR;

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/tools/r8/internal/kR;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/C2;Ljava/util/ArrayList;Ljava/util/Set;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L4;Lcom/android/tools/r8/graph/M2;)V

    return-object p1
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/I2;->m0()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v2, v2, v1

    .line 5
    iget-object v3, p0, Lcom/android/tools/r8/internal/kR;->c:Lcom/android/tools/r8/graph/I2;

    .line 6
    iget-object v3, v3, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v3, v3, v1

    .line 8
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
