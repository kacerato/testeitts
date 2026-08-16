.class public final Lag/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1260:1\n1211#1,7:1262\n1211#1,7:1269\n1211#1,7:1276\n1211#1,7:1283\n1211#1,7:1290\n1211#1,7:1297\n1211#1,7:1304\n1211#1,7:1311\n1221#1,5:1318\n1221#1,5:1323\n1211#1,7:1328\n1211#1,7:1335\n1181#1,3:1342\n1221#1,5:1345\n1185#1:1350\n1221#1,5:1351\n1201#1,3:1356\n1229#1,5:1359\n1205#1:1364\n1229#1,5:1365\n1#2:1261\n1207#3,3:1370\n1207#3,3:1373\n1207#3,3:1376\n1207#3,3:1379\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1262,7\n482#1:1269,7\n486#1:1276,7\n489#1:1283,7\n529#1:1290,7\n532#1:1297,7\n537#1:1304,7\n542#1:1311,7\n549#1:1318,5\n550#1:1323,5\n1141#1:1328,7\n1143#1:1335,7\n1169#1:1342,3\n1169#1:1345,5\n1169#1:1350\n1183#1:1351,5\n1189#1:1356,3\n1189#1:1359,5\n1189#1:1364\n1203#1:1365,5\n42#1:1370,3\n43#1:1373,3\n54#1:1376,3\n55#1:1379,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nHexExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,1260:1\n1211#1,7:1262\n1211#1,7:1269\n1211#1,7:1276\n1211#1,7:1283\n1211#1,7:1290\n1211#1,7:1297\n1211#1,7:1304\n1211#1,7:1311\n1221#1,5:1318\n1221#1,5:1323\n1211#1,7:1328\n1211#1,7:1335\n1181#1,3:1342\n1221#1,5:1345\n1185#1:1350\n1221#1,5:1351\n1201#1,3:1356\n1229#1,5:1359\n1205#1:1364\n1229#1,5:1365\n1#2:1261\n1207#3,3:1370\n1207#3,3:1373\n1207#3,3:1376\n1207#3,3:1379\n*S KotlinDebug\n*F\n+ 1 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n450#1:1262,7\n482#1:1269,7\n486#1:1276,7\n489#1:1283,7\n529#1:1290,7\n532#1:1297,7\n537#1:1304,7\n542#1:1311,7\n549#1:1318,5\n550#1:1323,5\n1141#1:1328,7\n1143#1:1335,7\n1169#1:1342,3\n1169#1:1345,5\n1169#1:1350\n1183#1:1351,5\n1189#1:1356,3\n1189#1:1359,5\n1189#1:1364\n1203#1:1365,5\n42#1:1370,3\n43#1:1373,3\n54#1:1376,3\n55#1:1379,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "0123456789abcdef"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "0123456789ABCDEF"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lag/k;->c:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sput-object v1, Lag/k;->d:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v6, v3

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    move v3, v2

    move v6, v3

    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    :cond_4
    sput-object v1, Lag/k;->e:[I

    new-array v1, v0, [J

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v0, v2

    move v3, v0

    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    :cond_7
    sput-object v1, Lag/k;->f:[J

    return-void
.end method

.method public static final A(Ljava/lang/String;IILag/l$b;)[B
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->g()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->f()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->i()Z

    move-result v15

    sub-int v2, v1, p1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v9

    move v4, v10

    invoke-static/range {v2 .. v8}, Lag/k;->V(IIIIIII)I

    move-result v2

    new-array v3, v2, [B

    move/from16 v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v1, :cond_10

    if-ne v7, v9, :cond_0

    invoke-static {v0, v5, v1}, Lag/k;->f(Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_0
    if-ne v8, v10, :cond_4

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    move/from16 p1, v7

    goto :goto_3

    :cond_1
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_3

    move/from16 p1, v7

    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v16, v8

    add-int v8, v5, v4

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v7, v8, v15}, Lag/f;->J(CCZ)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "group separator"

    invoke-static {v0, v5, v1, v14, v7}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p1

    move/from16 v8, v16

    goto :goto_2

    :cond_3
    move/from16 p1, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    :goto_3
    move/from16 v7, p1

    goto :goto_1

    :cond_4
    move/from16 p1, v7

    if-eqz v8, :cond_8

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    move/from16 v17, v8

    goto :goto_5

    :cond_5
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_7

    move/from16 v16, v4

    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v17, v8

    add-int v8, v5, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v4, v8, v15}, Lag/f;->J(CCZ)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "byte separator"

    invoke-static {v0, v5, v1, v13, v4}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move/from16 v8, v17

    goto :goto_4

    :cond_7
    move/from16 v17, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    :goto_5
    move/from16 v7, p1

    move/from16 v8, v17

    goto :goto_6

    :cond_8
    move/from16 v17, v8

    move/from16 v7, p1

    :goto_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    move/from16 p1, v7

    move/from16 v17, v8

    goto :goto_8

    :cond_9
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move/from16 p1, v7

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_b

    move/from16 v16, v4

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v17, v8

    add-int v8, v5, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v4, v8, v15}, Lag/f;->J(CCZ)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "byte prefix"

    invoke-static {v0, v5, v1, v11, v4}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move/from16 v8, v17

    goto :goto_7

    :cond_b
    move/from16 v17, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    :goto_8
    add-int/lit8 v4, v1, -0x2

    if-ge v4, v5, :cond_c

    const-string v4, "exactly"

    const/4 v7, 0x2

    invoke-static {v0, v5, v1, v4, v7}, Lag/k;->X(Ljava/lang/String;IILjava/lang/String;I)V

    :cond_c
    add-int/lit8 v4, v6, 0x1

    invoke-static {v0, v5}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_d

    move/from16 v16, v4

    goto :goto_a

    :cond_d
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v6, :cond_f

    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v16, v4

    add-int v4, v5, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v8, v4, v15}, Lag/f;->J(CCZ)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "byte suffix"

    invoke-static {v0, v5, v1, v12, v4}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    goto :goto_9

    :cond_f
    move/from16 v16, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    :goto_a
    move/from16 v7, p1

    move/from16 v6, v16

    move/from16 v8, v17

    goto/16 :goto_0

    :cond_10
    if-ne v6, v2, :cond_11

    goto :goto_b

    :cond_11
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v0, "copyOf(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    return-object v3
.end method

.method public static final B(Ljava/lang/String;IILag/l;)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->F(Ljava/lang/String;IILag/l;I)I

    move-result p0

    return p0
.end method

.method public static final C(Ljava/lang/String;Lag/l;)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->B(Ljava/lang/String;IILag/l;)I

    move-result p0

    return p0
.end method

.method public static synthetic D(Ljava/lang/String;IILag/l;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->B(Ljava/lang/String;IILag/l;)I

    move-result p0

    return p0
.end method

.method public static synthetic E(Ljava/lang/String;Lag/l;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->C(Ljava/lang/String;Lag/l;)I

    move-result p0

    return p0
.end method

.method public static final F(Ljava/lang/String;IILag/l;I)I
    .locals 9

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->a(III)V

    invoke-virtual {p3}, Lag/l;->d()Lag/l$d;

    move-result-object p3

    invoke-virtual {p3}, Lag/l$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Lag/k;->g(Ljava/lang/String;III)V

    invoke-static {p0, p1, p2}, Lag/k;->T(Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3}, Lag/l$d;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lag/l$d;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lag/l$d;->c()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v7

    move-object v4, v8

    move v6, p4

    invoke-static/range {v0 .. v6}, Lag/k;->h(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p0, p1, p2}, Lag/k;->T(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final G(Ljava/lang/String;IILag/l;)J
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->K(Ljava/lang/String;IILag/l;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final H(Ljava/lang/String;Lag/l;)J
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->G(Ljava/lang/String;IILag/l;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic I(Ljava/lang/String;IILag/l;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->G(Ljava/lang/String;IILag/l;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic J(Ljava/lang/String;Lag/l;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->H(Ljava/lang/String;Lag/l;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final K(Ljava/lang/String;IILag/l;I)J
    .locals 9

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->a(III)V

    invoke-virtual {p3}, Lag/l;->d()Lag/l$d;

    move-result-object p3

    invoke-virtual {p3}, Lag/l$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Lag/k;->g(Ljava/lang/String;III)V

    invoke-static {p0, p1, p2}, Lag/k;->U(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p3}, Lag/l$d;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lag/l$d;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lag/l$d;->c()Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v7

    move-object v4, v8

    move v6, p4

    invoke-static/range {v0 .. v6}, Lag/k;->h(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p0, p1, p2}, Lag/k;->U(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final L(Ljava/lang/String;IILag/l;)S
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->F(Ljava/lang/String;IILag/l;I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static final M(Ljava/lang/String;Lag/l;)S
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->L(Ljava/lang/String;IILag/l;)S

    move-result p0

    return p0
.end method

.method public static synthetic N(Ljava/lang/String;IILag/l;ILjava/lang/Object;)S
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->L(Ljava/lang/String;IILag/l;)S

    move-result p0

    return p0
.end method

.method public static synthetic O(Ljava/lang/String;Lag/l;ILjava/lang/Object;)S
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->M(Ljava/lang/String;Lag/l;)S

    move-result p0

    return p0
.end method

.method public static final P(Ljava/lang/String;ILMf/p;)J
    .locals 6

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object v1

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object p0

    aget-wide p1, p0, v0

    return-wide p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final Q(Ljava/lang/String;I)B
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    invoke-static {}, Lag/k;->a()[I

    move-result-object v1

    aget v1, v1, v0

    if-ltz v1, :cond_1

    invoke-static {}, Lag/k;->a()[I

    move-result-object v1

    aget v0, v1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v2

    aget v2, v2, v1

    if-ltz v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object p0

    aget p0, p0, v1

    shl-int/lit8 p1, v0, 0x4

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lag/k;->W(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lag/k;->W(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final R(Ljava/lang/String;IILMf/p;)I
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v2

    aget v2, v2, v1

    if-ltz v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v2

    aget v1, v2, v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    return v0
.end method

.method public static final S(Ljava/lang/String;IILMf/p;)J
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p1, p2, :cond_1

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    ushr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object v5

    aget-wide v6, v5, v4

    cmp-long v5, v6, v0

    if-ltz v5, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object v5

    aget-wide v4, v5, v4

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    return-wide v2
.end method

.method public static final T(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v2

    aget v2, v2, v1

    if-ltz v2, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v2

    aget v1, v2, v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lag/k;->W(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    return v0
.end method

.method public static final U(Ljava/lang/String;II)J
    .locals 8

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p1, p2, :cond_1

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    ushr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object v5

    aget-wide v6, v5, v4

    cmp-long v5, v6, v0

    if-ltz v5, :cond_0

    invoke-static {}, Lag/k;->b()[J

    move-result-object v5

    aget-wide v4, v5, v4

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lag/k;->W(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    return-wide v2
.end method

.method public static final V(IIIIIII)I
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-lez v0, :cond_3

    move/from16 v5, p5

    int-to-long v5, v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    move/from16 v7, p6

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-static {v5, v6, v2, v4}, Lag/k;->c(JII)J

    move-result-wide v7

    if-gt v1, v2, :cond_0

    invoke-static {v5, v6, v1, v4}, Lag/k;->c(JII)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    div-int v9, v1, v2

    invoke-static {v7, v8, v9, v3}, Lag/k;->c(JII)J

    move-result-wide v9

    rem-int v11, v1, v2

    if-eqz v11, :cond_1

    int-to-long v12, v3

    add-long/2addr v9, v12

    invoke-static {v5, v6, v11, v4}, Lag/k;->c(JII)J

    move-result-wide v11

    add-long/2addr v9, v11

    :cond_1
    :goto_0
    int-to-long v11, v0

    const/4 v0, 0x1

    invoke-static {v11, v12, v9, v10, v0}, Lag/k;->s0(JJI)J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v9, v15

    mul-long/2addr v9, v13

    sub-long/2addr v11, v9

    invoke-static {v11, v12, v7, v8, v3}, Lag/k;->s0(JJI)J

    move-result-wide v9

    int-to-long v0, v3

    add-long/2addr v7, v0

    mul-long/2addr v7, v9

    sub-long/2addr v11, v7

    invoke-static {v11, v12, v5, v6, v4}, Lag/k;->s0(JJI)J

    move-result-wide v0

    int-to-long v3, v4

    add-long/2addr v5, v3

    mul-long/2addr v5, v0

    sub-long/2addr v11, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-lez v3, :cond_2

    move/from16 v4, p1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move/from16 v4, p1

    :goto_1
    int-to-long v4, v4

    mul-long/2addr v13, v4

    int-to-long v4, v2

    mul-long/2addr v9, v4

    add-long/2addr v13, v9

    add-long/2addr v13, v0

    int-to-long v0, v3

    add-long/2addr v13, v0

    long-to-int v0, v13

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final W(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a hexadecimal digit at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final X(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "substring(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " hexadecimal digits at index "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", but was \""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" of length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final Y(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a hexadecimal number with prefix \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" and suffix \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\", but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0, p2}, LVf/u;->D(II)I

    move-result p2

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "substring(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \""

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" at index "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic a()[I
    .locals 1

    sget-object v0, Lag/k;->e:[I

    return-object v0
.end method

.method public static final a0(Ljava/lang/String;[CI)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, p1, p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method public static final synthetic b()[J
    .locals 1

    sget-object v0, Lag/k;->f:[J

    return-object v0
.end method

.method public static final b0(BLag/l;)Ljava/lang/String;
    .locals 6
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "format"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lag/l;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string v3, "0123456789abcdef"

    :goto_0
    invoke-virtual {p1}, Lag/l;->d()Lag/l$d;

    move-result-object p1

    invoke-virtual {p1}, Lag/l$d;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    shr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v5, p0, 0xf

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    new-array v5, v2, [C

    aput-char v4, v5, v1

    aput-char v3, v5, v0

    invoke-virtual {p1}, Lag/l$d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x18

    shr-int/2addr p0, v2

    invoke-static {p0, v0}, LVf/u;->D(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v5, p0, v1, v2, p1}, Lag/K;->P1([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    int-to-long v0, p0

    const/16 p0, 0x8

    invoke-static {v0, v1, p1, v3, p0}, Lag/k;->n0(JLag/l$d;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(JII)J
    .locals 4

    if-lez p2, :cond_0

    int-to-long v0, p2

    mul-long/2addr p0, v0

    int-to-long p2, p3

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr p2, v0

    add-long/2addr p0, p2

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c0(ILag/l;)Ljava/lang/String;
    .locals 14
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-string v5, "format"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lag/l;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string v5, "0123456789abcdef"

    :goto_0
    invoke-virtual {p1}, Lag/l;->d()Lag/l$d;

    move-result-object p1

    invoke-virtual {p1}, Lag/l$d;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    shr-int/lit8 v6, p0, 0x1c

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-int/lit8 v7, p0, 0x18

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v8, p0, 0x14

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    shr-int/lit8 v9, p0, 0x10

    and-int/lit8 v9, v9, 0xf

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shr-int/lit8 v10, p0, 0xc

    and-int/lit8 v10, v10, 0xf

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    shr-int/lit8 v11, p0, 0x8

    and-int/lit8 v11, v11, 0xf

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    shr-int/lit8 v12, p0, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    and-int/lit8 v13, p0, 0xf

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-array v4, v4, [C

    aput-char v6, v4, v2

    const/4 v6, 0x1

    aput-char v7, v4, v6

    aput-char v8, v4, v1

    const/4 v6, 0x3

    aput-char v9, v4, v6

    aput-char v10, v4, v3

    const/4 v3, 0x5

    aput-char v11, v4, v3

    const/4 v3, 0x6

    aput-char v12, v4, v3

    aput-char v5, v4, v0

    invoke-virtual {p1}, Lag/l$d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    shr-int/2addr p0, v1

    invoke-static {p0, v0}, LVf/u;->D(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v4, p0, v2, v1, p1}, Lag/K;->P1([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    int-to-long v0, p0

    const/16 p0, 0x20

    invoke-static {v0, v1, p1, v5, p0}, Lag/k;->n0(JLag/l$d;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .annotation runtime Lnf/D;
    .end annotation

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p4}, Lag/f;->J(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, p1, p2, p3, p5}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static final d0(JLag/l;)Ljava/lang/String;
    .locals 27
    .param p2    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-wide/from16 v0, p0

    const/16 v8, 0x10

    const-string v9, "format"

    move-object/from16 v10, p2

    invoke-static {v10, v9}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lag/l;->e()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string v9, "0123456789abcdef"

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lag/l;->d()Lag/l$d;

    move-result-object v10

    invoke-virtual {v10}, Lag/l$d;->j()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x3c

    shr-long v11, v0, v11

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v11, v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x38

    shr-long v15, v0, v12

    and-long v2, v15, v13

    long-to-int v2, v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x34

    shr-long v15, v0, v3

    and-long v4, v15, v13

    long-to-int v4, v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    shr-long v15, v0, v5

    move v5, v4

    and-long v3, v15, v13

    long-to-int v3, v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x2c

    shr-long v15, v0, v3

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x28

    shr-long v15, v0, v3

    move/from16 v17, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x24

    shr-long v15, v0, v3

    move/from16 v18, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x20

    shr-long v15, v0, v3

    move/from16 v19, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x1c

    shr-long v15, v0, v3

    move/from16 v20, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x18

    shr-long v15, v0, v3

    move/from16 v21, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x14

    shr-long v15, v0, v3

    move/from16 v22, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shr-long v15, v0, v8

    move/from16 v23, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0xc

    shr-long v15, v0, v3

    move/from16 v24, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v3, 0x8

    shr-long v15, v0, v3

    move/from16 v25, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v3, 0x4

    shr-long v15, v0, v3

    move/from16 v26, v6

    and-long v6, v15, v13

    long-to-int v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-long/2addr v13, v0

    long-to-int v3, v13

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    new-array v8, v8, [C

    const/4 v3, 0x0

    aput-char v11, v8, v3

    const/4 v9, 0x1

    aput-char v2, v8, v9

    const/4 v2, 0x2

    aput-char v5, v8, v2

    const/4 v2, 0x3

    aput-char v4, v8, v2

    const/4 v2, 0x4

    aput-char v17, v8, v2

    const/4 v2, 0x5

    aput-char v18, v8, v2

    const/4 v2, 0x6

    aput-char v19, v8, v2

    const/4 v2, 0x7

    aput-char v20, v8, v2

    const/16 v2, 0x8

    aput-char v21, v8, v2

    const/16 v2, 0x9

    aput-char v22, v8, v2

    const/16 v2, 0xa

    aput-char v23, v8, v2

    const/16 v2, 0xb

    aput-char v24, v8, v2

    const/16 v2, 0xc

    aput-char v25, v8, v2

    const/16 v2, 0xd

    aput-char v26, v8, v2

    const/16 v2, 0xe

    aput-char v6, v8, v2

    const/16 v2, 0xf

    aput-char v7, v8, v2

    invoke-virtual {v10}, Lag/l$d;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    const/4 v1, 0x2

    shr-int/2addr v0, v1

    invoke-static {v0, v2}, LVf/u;->D(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v0, v3, v1, v2}, Lag/K;->P1([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/16 v2, 0x40

    invoke-static {v0, v1, v10, v9, v2}, Lag/k;->n0(JLag/l$d;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final e(J)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The resulting string length is too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lnf/F0;->g0(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e0(SLag/l;)Ljava/lang/String;
    .locals 10
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "format"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lag/l;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string v4, "0123456789abcdef"

    :goto_0
    invoke-virtual {p1}, Lag/l;->d()Lag/l$d;

    move-result-object p1

    invoke-virtual {p1}, Lag/l$d;->j()Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_2

    shr-int/lit8 v5, p0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shr-int/lit8 v7, p0, 0x8

    and-int/lit8 v7, v7, 0xf

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v8, p0, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    and-int/lit8 v9, p0, 0xf

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-array v3, v3, [C

    aput-char v5, v3, v2

    const/4 v5, 0x1

    aput-char v7, v3, v5

    aput-char v8, v3, v1

    aput-char v4, v3, v0

    invoke-virtual {p1}, Lag/l$d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0xffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    sub-int/2addr p0, v6

    shr-int/2addr p0, v1

    invoke-static {p0, v0}, LVf/u;->D(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v3, p0, v2, v1, p1}, Lag/K;->P1([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    int-to-long v0, p0

    invoke-static {v0, v1, p1, v4, v6}, Lag/k;->n0(JLag/l$d;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/lang/String;II)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_1

    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v2, :cond_2

    add-int/lit8 v0, p1, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a new line at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final f0([BIILag/l;)Ljava/lang/String;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    array-length v1, p0

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->a(III)V

    if-ne p1, p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p3}, Lag/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lag/k;->d:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lag/k;->c:[I

    :goto_0
    invoke-virtual {p3}, Lag/l;->c()Lag/l$b;

    move-result-object p3

    invoke-virtual {p3}, Lag/l$b;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->o0([BIILag/l$b;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->r0([BIILag/l$b;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;III)V
    .locals 2

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p3, "at least"

    invoke-static {p0, p1, p2, p3, v1}, Lag/k;->X(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    if-le v0, p3, :cond_1

    add-int/2addr v0, p1

    sub-int/2addr v0, p3

    invoke-static {p0, p1, v0}, Lag/k;->i(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final g0([BLag/l;)Ljava/lang/String;
    .locals 2
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->f0([BIILag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    sub-int v0, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lag/k;->Y(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4, p5}, Lag/f;->J(CCZ)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "prefix"

    invoke-static {p0, p1, p2, p3, v3}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p1, p3

    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    sub-int p3, p2, p3

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Lag/f;->J(CCZ)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "suffix"

    invoke-static {p0, p3, p2, p4, v2}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {p0, p1, p3, p6}, Lag/k;->g(Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic h0(BLag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->b0(BLag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected the hexadecimal digit \'0\' at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but was \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'.\nThe result won\'t fit the type being parsed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method public static synthetic i0(ILag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->c0(ILag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Ljava/lang/String;ILMf/p;)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object v1

    aget v1, v1, v0

    if-ltz v1, :cond_0

    invoke-static {}, Lag/k;->a()[I

    move-result-object p0

    aget p0, p0, v0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic j0(JLag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lag/l;->d:Lag/l$c;

    invoke-virtual {p2}, Lag/l$c;->a()Lag/l;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lag/k;->d0(JLag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final k([BILjava/lang/String;Ljava/lang/String;[I[CI)I
    .locals 0

    invoke-static {p2, p5, p6}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result p2

    invoke-static {p0, p1, p4, p5, p2}, Lag/k;->l([BI[I[CI)I

    move-result p0

    invoke-static {p3, p5, p0}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result p0

    return p0
.end method

.method public static synthetic k0(SLag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->e0(SLag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final l([BI[I[CI)I
    .locals 0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    aget p0, p2, p0

    shr-int/lit8 p1, p0, 0x8

    int-to-char p1, p1

    aput-char p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    aput-char p0, p3, p1

    add-int/lit8 p4, p4, 0x2

    return p4
.end method

.method public static synthetic l0([BIILag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    array-length p2, p0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->f0([BIILag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final m(IIII)I
    .locals 4

    if-lez p0, :cond_0

    const-wide/16 v0, 0x2

    int-to-long v2, p2

    add-long/2addr v2, v0

    int-to-long p2, p3

    add-long/2addr v2, p2

    int-to-long p1, p1

    add-long/2addr v2, p1

    int-to-long v0, p0

    mul-long/2addr v0, v2

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Lag/k;->e(J)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic m0([BLag/l;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->g0([BLag/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n(IIIIIII)I
    .locals 5

    if-lez p0, :cond_1

    add-int/lit8 v0, p0, -0x1

    div-int v1, v0, p1

    add-int/lit8 v2, p1, -0x1

    div-int/2addr v2, p2

    rem-int v3, p0, p1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    int-to-long p1, v1

    int-to-long v1, v2

    int-to-long v3, p3

    mul-long/2addr v1, v3

    add-long/2addr p1, v1

    int-to-long v0, v0

    int-to-long p3, p4

    mul-long/2addr v0, p3

    add-long/2addr p1, v0

    int-to-long p3, p0

    int-to-long v0, p5

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    int-to-long p5, p6

    add-long/2addr v0, p5

    mul-long/2addr p3, v0

    add-long/2addr p1, p3

    invoke-static {p1, p2}, Lag/k;->e(J)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n0(JLag/l$d;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p3

    and-int/lit8 v1, p4, 0x3

    if-nez v1, :cond_5

    shr-int/lit8 v1, p4, 0x2

    invoke-virtual/range {p2 .. p2}, Lag/l$d;->d()I

    move-result v2

    sub-int v3, v2, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, LVf/u;->w(II)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lag/l$d;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lag/l$d;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lag/l$d;->g()Z

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    int-to-long v10, v3

    add-long/2addr v8, v10

    int-to-long v10, v1

    add-long/2addr v8, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Lag/k;->e(J)I

    move-result v8

    new-array v9, v8, [C

    invoke-static {v5, v9, v4}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result v5

    if-lez v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/2addr v3, v5

    invoke-static {v9, v10, v5, v3}, Lpf/q;->H1([CCII)V

    move v5, v3

    :cond_0
    move/from16 v3, p4

    move v10, v4

    :goto_0
    const/4 v11, 0x1

    if-ge v10, v1, :cond_3

    add-int/lit8 v3, v3, -0x4

    shr-long v12, p0, v3

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    long-to-int v12, v12

    if-eqz v7, :cond_1

    if-nez v12, :cond_1

    shr-int/lit8 v7, v3, 0x2

    if-lt v7, v2, :cond_1

    move v7, v11

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-nez v7, :cond_2

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v9, v5

    move v5, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6, v9, v5}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-static {v9}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    invoke-static {v9, v4, v0, v11, v1}, Lag/K;->P1([CIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final o()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/k;->c:[I

    return-object v0
.end method

.method public static final o0([BIILag/l$b;[I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p3}, Lag/l$b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lag/k;->q0([BIILag/l$b;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lag/k;->p0([BIILag/l$b;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Ljava/lang/String;IILag/l;)B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lag/k;->F(Ljava/lang/String;IILag/l;I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static final p0([BIILag/l$b;[I)Ljava/lang/String;
    .locals 10

    invoke-virtual {p3}, Lag/l$b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lag/l$b;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object p3

    sub-int v0, p2, p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lag/k;->m(IIII)I

    move-result v0

    new-array v9, v0, [C

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, p4

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lag/k;->k([BILjava/lang/String;Ljava/lang/String;[I[CI)I

    move-result v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    invoke-static {p3, v9, v0}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, p4

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lag/k;->k([BILjava/lang/String;Ljava/lang/String;[I[CI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v9}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Ljava/lang/String;Lag/l;)B
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->p(Ljava/lang/String;IILag/l;)B

    move-result p0

    return p0
.end method

.method public static final q0([BIILag/l$b;[I)Ljava/lang/String;
    .locals 8

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    sub-int v2, p2, p1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x2

    int-to-long v4, v2

    mul-long/2addr v4, v0

    invoke-static {v4, v5}, Lag/k;->e(J)I

    move-result p3

    new-array p3, p3, [C

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-static {p0, p1, p4, p3, v3}, Lag/k;->l([BI[I[CI)I

    move-result v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v4, 0x3

    int-to-long v6, v2

    mul-long/2addr v6, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Lag/k;->e(J)I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p0, p1, p4, v0, v3}, Lag/k;->l([BI[I[CI)I

    move-result v2

    add-int/2addr p1, v1

    :goto_1
    if-ge p1, p2, :cond_2

    add-int/lit8 v1, v2, 0x1

    aput-char p3, v0, v2

    invoke-static {p0, p1, p4, v0, v1}, Lag/k;->l([BI[I[CI)I

    move-result v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic r(Ljava/lang/String;IILag/l;ILjava/lang/Object;)B
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->p(Ljava/lang/String;IILag/l;)B

    move-result p0

    return p0
.end method

.method public static final r0([BIILag/l$b;[I)Ljava/lang/String;
    .locals 21

    move/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->g()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->f()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lag/l$b;->h()Ljava/lang/String;

    move-result-object v13

    sub-int v1, v0, p1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v8

    move v3, v9

    invoke-static/range {v1 .. v7}, Lag/k;->n(IIIIIII)I

    move-result v14

    new-array v15, v14, [C

    const/16 v16, 0x0

    move/from16 v7, p1

    move/from16 v1, v16

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v7, v0, :cond_3

    if-ne v2, v8, :cond_0

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0xa

    aput-char v3, v15, v1

    move v1, v2

    move/from16 v17, v16

    move/from16 v18, v17

    goto :goto_1

    :cond_0
    if-ne v3, v9, :cond_1

    invoke-static {v13, v15, v1}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result v1

    move/from16 v17, v2

    move/from16 v18, v16

    goto :goto_1

    :cond_1
    move/from16 v17, v2

    move/from16 v18, v3

    :goto_1
    if-eqz v18, :cond_2

    invoke-static {v12, v15, v1}, Lag/k;->a0(Ljava/lang/String;[CI)I

    move-result v1

    :cond_2
    move/from16 v19, v1

    move-object/from16 v1, p0

    move v2, v7

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p4

    move-object v6, v15

    move/from16 v20, v7

    move/from16 v7, v19

    invoke-static/range {v1 .. v7}, Lag/k;->k([BILjava/lang/String;Ljava/lang/String;[I[CI)I

    move-result v1

    add-int/lit8 v3, v18, 0x1

    add-int/lit8 v2, v17, 0x1

    add-int/lit8 v7, v20, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v14, :cond_4

    invoke-static {v15}, Lag/K;->N1([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic s(Ljava/lang/String;Lag/l;ILjava/lang/Object;)B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->q(Ljava/lang/String;Lag/l;)B

    move-result p0

    return p0
.end method

.method public static final s0(JJI)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p4

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    div-long v0, p0, p2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static final t(Ljava/lang/String;IILag/l;)[B
    .locals 2

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->a(III)V

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    invoke-virtual {p3}, Lag/l;->c()Lag/l$b;

    move-result-object p3

    invoke-virtual {p3}, Lag/l$b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lag/k;->x(Ljava/lang/String;IILag/l$b;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lag/k;->A(Ljava/lang/String;IILag/l$b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final u(Ljava/lang/String;Lag/l;)[B
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lag/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "2.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lag/k;->t(Ljava/lang/String;IILag/l;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Ljava/lang/String;IILag/l;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lag/l;->d:Lag/l$c;

    invoke-virtual {p3}, Lag/l$c;->a()Lag/l;

    move-result-object p3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lag/k;->t(Ljava/lang/String;IILag/l;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/String;Lag/l;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lag/l;->d:Lag/l$c;

    invoke-virtual {p1}, Lag/l$c;->a()Lag/l;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lag/k;->u(Ljava/lang/String;Lag/l;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final x(Ljava/lang/String;IILag/l$b;)[B
    .locals 1

    invoke-virtual {p3}, Lag/l$b;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lag/k;->z(Ljava/lang/String;IILag/l$b;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lag/k;->y(Ljava/lang/String;IILag/l$b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final y(Ljava/lang/String;IILag/l$b;)[B
    .locals 12

    invoke-virtual {p3}, Lag/l$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lag/l$b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    sub-int v3, p2, p1

    int-to-long v8, v3

    add-long v10, v8, v6

    div-long/2addr v10, v4

    long-to-int v3, v10

    int-to-long v10, v3

    mul-long/2addr v10, v4

    sub-long/2addr v10, v6

    cmp-long v4, v10, v8

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Lag/l$b;->i()Z

    move-result p3

    new-array v4, v3, [B

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v9, p1, v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9, p3}, Lag/f;->J(CCZ)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "byte prefix"

    invoke-static {p0, p1, p2, v0, v8}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    move v2, v6

    :goto_2
    if-ge v2, v3, :cond_7

    invoke-static {p0, p1}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v4, v2

    add-int/lit8 p1, p1, 0x2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v7, v6

    :goto_3
    if-ge v7, v5, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v9, p1, v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9, p3}, Lag/f;->J(CCZ)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "byte suffix + byte separator + byte prefix"

    invoke-static {p0, p1, p2, v0, v8}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr p1, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-static {p0, p1}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v0

    aput-byte v0, v4, v3

    add-int/lit8 p1, p1, 0x2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_5
    if-ge v6, v0, :cond_a

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p1, v6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p3}, Lag/f;->J(CCZ)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "byte suffix"

    invoke-static {p0, p1, p2, v1, v2}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-object v4
.end method

.method public static final z(Ljava/lang/String;IILag/l$b;)[B
    .locals 11

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_9

    sub-int p1, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_0

    return-object v2

    :cond_0
    shr-int/2addr p1, v1

    new-array p2, p1, [B

    move p3, v4

    :goto_0
    if-ge v4, p1, :cond_1

    invoke-static {p0, p3}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v0

    aput-byte v0, p2, v4

    add-int/2addr p3, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    rem-int/lit8 v0, p1, 0x3

    if-eq v0, v3, :cond_3

    return-object v2

    :cond_3
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v1

    new-array v0, p1, [B

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v4}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v0, v4

    :goto_1
    if-ge v1, p1, :cond_8

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_7

    invoke-virtual {p3}, Lag/l$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lag/l$b;->i()Z

    move-result v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int v10, v3, v8

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v9, v10, v6}, Lag/f;->J(CCZ)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "byte separator"

    invoke-static {p0, v3, p2, v5, v9}, Lag/k;->Z(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    :cond_7
    :goto_3
    add-int/lit8 v5, v3, 0x1

    invoke-static {p0, v5}, Lag/k;->Q(Ljava/lang/String;I)B

    move-result v5

    aput-byte v5, v0, v1

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
