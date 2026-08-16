.class public final Lcom/google/protobuf/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/G$e;,
        Lcom/google/protobuf/G$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "getDefaultInstance"

.field public static final b:Lcom/google/protobuf/G;

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lcom/google/protobuf/G$d;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/protobuf/G;

    invoke-direct {v0}, Lcom/google/protobuf/G;-><init>()V

    sput-object v0, Lcom/google/protobuf/G;->b:Lcom/google/protobuf/G;

    new-instance v0, Ljava/util/HashSet;

    const-string v8, "UnknownFields"

    const-string v9, "CachedSize"

    const-string v1, "Class"

    const-string v2, "DefaultInstanceForType"

    const-string v3, "ParserForType"

    const-string v4, "SerializedSize"

    const-string v5, "AllFields"

    const-string v6, "DescriptorForType"

    const-string v7, "InitializationErrorString"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/protobuf/G;->c:Ljava/util/Set;

    new-instance v0, Lcom/google/protobuf/G$d;

    invoke-direct {v0}, Lcom/google/protobuf/G$d;-><init>()V

    sput-object v0, Lcom/google/protobuf/G;->d:Lcom/google/protobuf/G$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/G;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/G;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;I)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/G;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/G$e;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd",
            "oneofState",
            "enforceUtf8",
            "enumVerifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            "Lcom/google/protobuf/G$e;",
            "Z",
            "Lcom/google/protobuf/D0$e;",
            ")",
            "Lcom/google/protobuf/j0;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/google/protobuf/G$e;->a(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/t1;

    move-result-object v3

    invoke-static {p1}, Lcom/google/protobuf/G;->q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google/protobuf/G;->s(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/p0;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/j0;->g(ILcom/google/protobuf/p0;Lcom/google/protobuf/t1;Ljava/lang/Class;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/G;->n(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/G;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/Z0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$b;",
            ")",
            "Lcom/google/protobuf/Z0;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/G$c;->a:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/protobuf/G;->j(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/a2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported syntax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$g;->z()Lcom/google/protobuf/Descriptors$g$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/G;->i(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/a2;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/a2;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$b;",
            ")",
            "Lcom/google/protobuf/a2;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/a2;->f(I)Lcom/google/protobuf/a2$a;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/G;->o(Ljava/lang/Class;)Lcom/google/protobuf/Y0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/a2$a;->c(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/protobuf/y1;->PROTO2:Lcom/google/protobuf/y1;

    invoke-virtual {v2, v3}, Lcom/google/protobuf/a2$a;->f(Lcom/google/protobuf/y1;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/Descriptors$b;->w()Lcom/google/protobuf/H$z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/H$z;->X2()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/a2$a;->e(Z)V

    new-instance v3, Lcom/google/protobuf/G$e;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/protobuf/G$e;-><init>(Lcom/google/protobuf/G$a;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v8, v4

    move v7, v5

    move v9, v7

    move/from16 v17, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_c

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->a()Lcom/google/protobuf/Descriptors$g;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/Descriptors$g;->v()Lcom/google/protobuf/H$v;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/protobuf/H$v;->w1()Z

    move-result v15

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v11

    sget-object v12, Lcom/google/protobuf/Descriptors$f$b;->ENUM:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v11, v12, :cond_0

    new-instance v11, Lcom/google/protobuf/G$a;

    invoke-direct {v11, v10}, Lcom/google/protobuf/G$a;-><init>(Lcom/google/protobuf/Descriptors$f;)V

    move-object v14, v11

    goto :goto_1

    :cond_0
    move-object v14, v4

    :goto_1
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v0, v10, v3, v15, v14}, Lcom/google/protobuf/G;->f(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/G$e;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {v0, v10}, Lcom/google/protobuf/G;->l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v13

    invoke-static {v10}, Lcom/google/protobuf/G;->q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v4

    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Lcom/google/protobuf/Descriptors$b;->k(I)Lcom/google/protobuf/Descriptors$f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v15

    if-ne v15, v12, :cond_2

    new-instance v14, Lcom/google/protobuf/G$b;

    invoke-direct {v14, v4}, Lcom/google/protobuf/G$b;-><init>(Lcom/google/protobuf/Descriptors$f;)V

    :cond_2
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/protobuf/N1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v13, v4, v14}, Lcom/google/protobuf/j0;->e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v14, :cond_5

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v0, v10}, Lcom/google/protobuf/G;->g(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-static {v11, v13, v4, v14, v10}, Lcom/google/protobuf/j0;->i(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {v11, v13, v4, v14}, Lcom/google/protobuf/j0;->d(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v12

    sget-object v14, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v12, v14, :cond_6

    invoke-static {v0, v10}, Lcom/google/protobuf/G;->u(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {v11, v13, v4, v10}, Lcom/google/protobuf/j0;->m(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v0, v10}, Lcom/google/protobuf/G;->g(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-static {v11, v13, v4, v10}, Lcom/google/protobuf/j0;->h(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_3

    :cond_7
    invoke-static {v11, v13, v4, v15}, Lcom/google/protobuf/j0;->c(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Z)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_3

    :cond_8
    if-nez v8, :cond_9

    invoke-static {v0, v9}, Lcom/google/protobuf/G;->e(Ljava/lang/Class;I)Ljava/lang/reflect/Field;

    move-result-object v8

    :cond_9
    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v10, v11

    move v11, v13

    move-object v12, v4

    move-object v13, v8

    move-object/from16 v16, v14

    move/from16 v14, v17

    invoke-static/range {v10 .. v16}, Lcom/google/protobuf/j0;->k(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_2

    :cond_a
    move-object/from16 v16, v14

    move-object v10, v11

    move v11, v13

    move-object v12, v4

    move-object v13, v8

    move/from16 v14, v17

    invoke-static/range {v10 .. v16}, Lcom/google/protobuf/j0;->j(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    :goto_2
    shl-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    add-int/lit8 v9, v9, 0x1

    move/from16 v17, v6

    const/4 v8, 0x0

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v5

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->J()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v6, v7, :cond_e

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/G;->w(Lcom/google/protobuf/Descriptors$b;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_10

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v1}, Lcom/google/protobuf/a2$a;->b([I)V

    invoke-virtual {v2}, Lcom/google/protobuf/a2$a;->a()Lcom/google/protobuf/a2;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/a2;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$b;",
            ")",
            "Lcom/google/protobuf/a2;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/a2;->f(I)Lcom/google/protobuf/a2$a;

    move-result-object v0

    invoke-static {p0}, Lcom/google/protobuf/G;->o(Ljava/lang/Class;)Lcom/google/protobuf/Y0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a2$a;->c(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/protobuf/y1;->PROTO3:Lcom/google/protobuf/y1;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/a2$a;->f(Lcom/google/protobuf/y1;)V

    new-instance v1, Lcom/google/protobuf/G$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/G$e;-><init>(Lcom/google/protobuf/G$a;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$f;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->o()Lcom/google/protobuf/Descriptors$k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$k;->t()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v4, v1, v6, v2}, Lcom/google/protobuf/G;->f(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/G$e;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0, v4}, Lcom/google/protobuf/G;->l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v6

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/protobuf/N1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v4, v2}, Lcom/google/protobuf/j0;->e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v5

    sget-object v7, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v5, v7, :cond_2

    invoke-static {p0, v4}, Lcom/google/protobuf/G;->l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v6

    invoke-static {v4}, Lcom/google/protobuf/G;->q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;

    move-result-object v7

    invoke-static {p0, v4}, Lcom/google/protobuf/G;->u(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/google/protobuf/j0;->m(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/Class;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0, v4}, Lcom/google/protobuf/G;->l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v6

    invoke-static {v4}, Lcom/google/protobuf/G;->q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;

    move-result-object v7

    invoke-static {p0, v4}, Lcom/google/protobuf/G;->g(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/google/protobuf/j0;->h(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    goto :goto_1

    :cond_3
    invoke-static {p0, v4}, Lcom/google/protobuf/G;->l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$f;->getNumber()I

    move-result v7

    invoke-static {v4}, Lcom/google/protobuf/G;->q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;

    move-result-object v4

    invoke-static {v5, v7, v4, v6}, Lcom/google/protobuf/j0;->c(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Z)Lcom/google/protobuf/j0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/a2$a;->d(Lcom/google/protobuf/j0;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/a2$a;->a()Lcom/google/protobuf/a2;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Class;)Lcom/google/protobuf/Descriptors$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/Descriptors$b;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/G;->o(Ljava/lang/Class;)Lcom/google/protobuf/Y0;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/G;->p(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/G;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in message class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/G;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MemoizedSerializedSize"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Class;)Lcom/google/protobuf/Y0;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/Y0;"
        }
    .end annotation

    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Y0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get default instance for message class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static p(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/G;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/G;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    goto :goto_1

    :cond_1
    const-string v0, "_"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/protobuf/G;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lcom/google/protobuf/Descriptors$f;)Lcom/google/protobuf/p0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/G$c;->c:[I

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/protobuf/p0;->UINT64:Lcom/google/protobuf/p0;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/protobuf/p0;->UINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/protobuf/p0;->UINT64_LIST:Lcom/google/protobuf/p0;

    :goto_0
    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/google/protobuf/p0;->UINT32:Lcom/google/protobuf/p0;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/google/protobuf/p0;->UINT32_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/google/protobuf/p0;->UINT32_LIST:Lcom/google/protobuf/p0;

    :goto_1
    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/protobuf/p0;->STRING_LIST:Lcom/google/protobuf/p0;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/google/protobuf/p0;->STRING:Lcom/google/protobuf/p0;

    :goto_2
    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/google/protobuf/p0;->SINT64:Lcom/google/protobuf/p0;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/google/protobuf/p0;->SINT64_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/google/protobuf/p0;->SINT64_LIST:Lcom/google/protobuf/p0;

    :goto_3
    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object p0, Lcom/google/protobuf/p0;->SINT32:Lcom/google/protobuf/p0;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/google/protobuf/p0;->SINT32_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_4

    :cond_8
    sget-object p0, Lcom/google/protobuf/p0;->SINT32_LIST:Lcom/google/protobuf/p0;

    :goto_4
    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Lcom/google/protobuf/p0;->SFIXED64:Lcom/google/protobuf/p0;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/google/protobuf/p0;->SFIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_5

    :cond_a
    sget-object p0, Lcom/google/protobuf/p0;->SFIXED64_LIST:Lcom/google/protobuf/p0;

    :goto_5
    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object p0, Lcom/google/protobuf/p0;->SFIXED32:Lcom/google/protobuf/p0;

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lcom/google/protobuf/p0;->SFIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_6

    :cond_c
    sget-object p0, Lcom/google/protobuf/p0;->SFIXED32_LIST:Lcom/google/protobuf/p0;

    :goto_6
    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->G()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lcom/google/protobuf/p0;->MAP:Lcom/google/protobuf/p0;

    return-object p0

    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lcom/google/protobuf/p0;->MESSAGE_LIST:Lcom/google/protobuf/p0;

    goto :goto_7

    :cond_e
    sget-object p0, Lcom/google/protobuf/p0;->MESSAGE:Lcom/google/protobuf/p0;

    :goto_7
    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object p0, Lcom/google/protobuf/p0;->INT64:Lcom/google/protobuf/p0;

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/google/protobuf/p0;->INT64_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_8

    :cond_10
    sget-object p0, Lcom/google/protobuf/p0;->INT64_LIST:Lcom/google/protobuf/p0;

    :goto_8
    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object p0, Lcom/google/protobuf/p0;->INT32:Lcom/google/protobuf/p0;

    return-object p0

    :cond_11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lcom/google/protobuf/p0;->INT32_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_9

    :cond_12
    sget-object p0, Lcom/google/protobuf/p0;->INT32_LIST:Lcom/google/protobuf/p0;

    :goto_9
    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Lcom/google/protobuf/p0;->GROUP_LIST:Lcom/google/protobuf/p0;

    goto :goto_a

    :cond_13
    sget-object p0, Lcom/google/protobuf/p0;->GROUP:Lcom/google/protobuf/p0;

    :goto_a
    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object p0, Lcom/google/protobuf/p0;->FLOAT:Lcom/google/protobuf/p0;

    return-object p0

    :cond_14
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/google/protobuf/p0;->FLOAT_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_b

    :cond_15
    sget-object p0, Lcom/google/protobuf/p0;->FLOAT_LIST:Lcom/google/protobuf/p0;

    :goto_b
    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object p0, Lcom/google/protobuf/p0;->FIXED64:Lcom/google/protobuf/p0;

    return-object p0

    :cond_16
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/google/protobuf/p0;->FIXED64_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_c

    :cond_17
    sget-object p0, Lcom/google/protobuf/p0;->FIXED64_LIST:Lcom/google/protobuf/p0;

    :goto_c
    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_18

    sget-object p0, Lcom/google/protobuf/p0;->FIXED32:Lcom/google/protobuf/p0;

    return-object p0

    :cond_18
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/google/protobuf/p0;->FIXED32_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_d

    :cond_19
    sget-object p0, Lcom/google/protobuf/p0;->FIXED32_LIST:Lcom/google/protobuf/p0;

    :goto_d
    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object p0, Lcom/google/protobuf/p0;->ENUM:Lcom/google/protobuf/p0;

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-object p0, Lcom/google/protobuf/p0;->ENUM_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_e

    :cond_1b
    sget-object p0, Lcom/google/protobuf/p0;->ENUM_LIST:Lcom/google/protobuf/p0;

    :goto_e
    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object p0, Lcom/google/protobuf/p0;->DOUBLE:Lcom/google/protobuf/p0;

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/google/protobuf/p0;->DOUBLE_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_f

    :cond_1d
    sget-object p0, Lcom/google/protobuf/p0;->DOUBLE_LIST:Lcom/google/protobuf/p0;

    :goto_f
    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result p0

    if-eqz p0, :cond_1e

    sget-object p0, Lcom/google/protobuf/p0;->BYTES_LIST:Lcom/google/protobuf/p0;

    goto :goto_10

    :cond_1e
    sget-object p0, Lcom/google/protobuf/p0;->BYTES:Lcom/google/protobuf/p0;

    :goto_10
    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object p0, Lcom/google/protobuf/p0;->BOOL:Lcom/google/protobuf/p0;

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$f;->i2()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/google/protobuf/p0;->BOOL_LIST_PACKED:Lcom/google/protobuf/p0;

    goto :goto_11

    :cond_20
    sget-object p0, Lcom/google/protobuf/p0;->BOOL_LIST:Lcom/google/protobuf/p0;

    :goto_11
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static r()Lcom/google/protobuf/G;
    .locals 1

    sget-object v0, Lcom/google/protobuf/G;->b:Lcom/google/protobuf/G;

    return-object v0
.end method

.method public static s(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;Lcom/google/protobuf/p0;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            "Lcom/google/protobuf/p0;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/G$c;->b:[I

    invoke-virtual {p2}, Lcom/google/protobuf/p0;->c()Lcom/google/protobuf/G0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid type for oneof: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/protobuf/G;->t(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-class p0, Ljava/lang/String;

    return-object p0

    :pswitch_2
    const-class p0, Ljava/lang/Long;

    return-object p0

    :pswitch_3
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :pswitch_4
    const-class p0, Ljava/lang/Float;

    return-object p0

    :pswitch_5
    const-class p0, Ljava/lang/Double;

    return-object p0

    :pswitch_6
    const-class p0, Lcom/google/protobuf/x;

    return-object p0

    :pswitch_7
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/G;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static u(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/protobuf/Descriptors$f;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->A()Lcom/google/protobuf/Descriptors$f$c;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$c;->GROUP:Lcom/google/protobuf/Descriptors$f$c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/G;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snakeCase"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/G;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcom/google/protobuf/Descriptors$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/G;->d:Lcom/google/protobuf/G$d;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/G$d;->c(Lcom/google/protobuf/Descriptors$b;)Z

    move-result p0

    return p0
.end method

.method public static x(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "snakeCase",
            "capFirst"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_0

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snakeCase"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/G;->x(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "snakeCase"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/protobuf/G;->x(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/Z0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/Z0;"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/w0;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/G;->k(Ljava/lang/Class;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/G;->h(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/Z0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/w0;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
