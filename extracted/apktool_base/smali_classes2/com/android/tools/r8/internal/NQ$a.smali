.class public final Lcom/android/tools/r8/internal/NQ$a;
.super Lcom/android/tools/r8/internal/NQ;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0008\u0010\u000eJ\u0008\u0010\u001b\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/metadata/jvm/KotlinClassMetadata$Class;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata;",
        "kmClass",
        "Lkotlin/metadata/KmClass;",
        "version",
        "Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "flags",
        "",
        "<init>",
        "(Lkotlin/metadata/KmClass;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V",
        "annotationData",
        "Lkotlin/Metadata;",
        "lenient",
        "",
        "(Lkotlin/Metadata;Z)V",
        "getKmClass",
        "()Lkotlin/metadata/KmClass;",
        "setKmClass",
        "(Lkotlin/metadata/KmClass;)V",
        "getVersion",
        "()Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "setVersion",
        "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V",
        "getFlags",
        "()I",
        "setFlags",
        "(I)V",
        "write",
        "kotlin-metadata-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/NQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/android/tools/r8/internal/aQ;

.field public c:Lcom/android/tools/r8/internal/ML;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/S;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    array-length v3, v2

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_2d

    iget-object v3, v1, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    sget-object v5, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    invoke-static {v2}, Lcom/android/tools/r8/internal/N6;->a([Ljava/lang/String;)[B

    move-result-object v2

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v6, v3}, Lcom/android/tools/r8/internal/pM;->a(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lcom/android/tools/r8/internal/VL;

    move-result-object v8

    sget-object v2, Lcom/android/tools/r8/internal/S80;->L:Lcom/android/tools/r8/internal/P80;

    invoke-virtual {v2, v6, v5}, Lcom/android/tools/r8/internal/j1;->a(Ljava/io/InputStream;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/j1;->a(Lcom/android/tools/r8/internal/O0;)Lcom/android/tools/r8/internal/O0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/S80;

    new-instance v3, Lcom/android/tools/r8/internal/ML;

    iget-object v5, v1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    new-instance v5, Lcom/android/tools/r8/internal/ML;

    const/4 v6, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-direct {v5, v6, v14, v15}, Lcom/android/tools/r8/internal/ML;-><init>(III)V

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v3

    if-gez v3, :cond_1

    move v11, v6

    goto :goto_0

    :cond_1
    move v11, v15

    :goto_0
    sget-object v12, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/tools/r8/internal/aQ;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/aQ;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/Kb0;

    new-instance v9, Lcom/android/tools/r8/internal/Bu0;

    iget-object v7, v2, Lcom/android/tools/r8/internal/S80;->F:Lcom/android/tools/r8/internal/W90;

    const-string v10, "getTypeTable(...)"

    invoke-static {v7, v10}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7}, Lcom/android/tools/r8/internal/Bu0;-><init>(Lcom/android/tools/r8/internal/W90;)V

    sget-object v7, Lcom/android/tools/r8/internal/Zw0;->b:Lcom/android/tools/r8/internal/Zw0;

    iget-object v10, v2, Lcom/android/tools/r8/internal/S80;->H:Lcom/android/tools/r8/internal/ha0;

    const-string v13, "getVersionRequirementTable(...)"

    invoke-static {v10, v13}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v10, Lcom/android/tools/r8/internal/ha0;->c:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    :goto_1
    move-object v10, v7

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/android/tools/r8/internal/Zw0;

    iget-object v10, v10, Lcom/android/tools/r8/internal/ha0;->c:Ljava/util/List;

    const-string v13, "getRequirementList(...)"

    invoke-static {v10, v13}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Lcom/android/tools/r8/internal/Zw0;-><init>(Ljava/util/List;)V

    goto :goto_1

    :goto_2
    const/16 v13, 0x10

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/internal/Kb0;-><init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLjava/util/List;I)V

    iget-object v7, v2, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    const-string v8, "getTypeParameterList(...)"

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/tools/r8/internal/Kb0;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/Kb0;

    move-result-object v5

    iget v7, v2, Lcom/android/tools/r8/internal/S80;->e:I

    iput v7, v3, Lcom/android/tools/r8/internal/aQ;->a:I

    iget v7, v2, Lcom/android/tools/r8/internal/S80;->f:I

    iget-object v9, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "<set-?>"

    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v3, Lcom/android/tools/r8/internal/aQ;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/tools/r8/internal/S80;->h:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->k()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/T90;

    invoke-static {v9}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v9, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/T90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/BQ;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v7, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    const-string v8, "typeTable"

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/tools/r8/internal/S80;->i:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_6

    iget-object v9, v2, Lcom/android/tools/r8/internal/S80;->j:Ljava/util/List;

    const-string v10, "getSupertypeIdList(...)"

    invoke-static {v9, v10}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-static {v11}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v7, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object v9, v10

    :cond_6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->j()Ljava/util/List;

    move-result-object v7

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M90;

    invoke-static {v10, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v7, v2, Lcom/android/tools/r8/internal/S80;->q:Ljava/util/List;

    const-string v9, "getConstructorList(...)"

    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->e()Ljava/util/List;

    move-result-object v9

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "getVersionRequirementList(...)"

    if-eqz v10, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/V80;

    invoke-static {v10}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    new-instance v12, Lcom/android/tools/r8/internal/eQ;

    iget v13, v10, Lcom/android/tools/r8/internal/V80;->e:I

    invoke-direct {v12, v13}, Lcom/android/tools/r8/internal/eQ;-><init>(I)V

    iget-object v13, v10, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    const-string v4, "getValueParameterList(...)"

    invoke-static {v13, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/eQ;->a()Ljava/util/List;

    move-result-object v15

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/tools/r8/internal/Z90;

    invoke-static {v14}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v14, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/EQ;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x4

    goto :goto_8

    :cond_8
    iget-object v13, v10, Lcom/android/tools/r8/internal/V80;->g:Ljava/util/List;

    invoke-static {v13, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v12, Lcom/android/tools/r8/internal/eQ;->c:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14, v5}, Lcom/android/tools/r8/internal/Ob0;->a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    iget-object v11, v5, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/yW;

    check-cast v13, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/zL;

    move-result-object v13

    sget-object v14, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    iget-object v14, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    iget-object v15, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    const-string v6, "nameResolver"

    invoke-static {v14, v6}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/android/tools/r8/internal/oM;->a:Lcom/android/tools/r8/internal/Wy;

    move-object/from16 v17, v7

    const-string v7, "constructorSignature"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/dM;

    if-eqz v6, :cond_a

    iget v7, v6, Lcom/android/tools/r8/internal/dM;->c:I

    move-object/from16 v18, v11

    const/4 v11, 0x1

    and-int/2addr v7, v11

    if-ne v7, v11, :cond_b

    iget v7, v6, Lcom/android/tools/r8/internal/dM;->d:I

    invoke-virtual {v14, v7}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_a
    move-object/from16 v18, v11

    :cond_b
    const-string v7, "<init>"

    :goto_b
    if-eqz v6, :cond_c

    iget v11, v6, Lcom/android/tools/r8/internal/dM;->c:I

    const/4 v0, 0x2

    and-int/2addr v11, v0

    if-ne v11, v0, :cond_c

    iget v0, v6, Lcom/android/tools/r8/internal/dM;->e:I

    invoke-virtual {v14, v0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    iget-object v0, v10, Lcom/android/tools/r8/internal/V80;->f:Ljava/util/List;

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/Z90;

    sget-object v19, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    invoke-static {v11}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v11, v15}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v11

    invoke-static {v11, v14}, Lcom/android/tools/r8/internal/pM;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/VL;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    const/4 v6, 0x0

    goto :goto_e

    :cond_d
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    const/16 v23, 0x0

    const/16 v24, 0x38

    const-string v20, ""

    const-string v21, "("

    const-string v22, ")V"

    move-object/from16 v19, v6

    invoke-static/range {v19 .. v24}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/ny;I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    new-instance v6, Lcom/android/tools/r8/internal/GL;

    invoke-direct {v6, v7, v0}, Lcom/android/tools/r8/internal/GL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    if-eqz v6, :cond_f

    new-instance v0, Lcom/android/tools/r8/internal/OL;

    iget-object v7, v6, Lcom/android/tools/r8/internal/GL;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/tools/r8/internal/GL;->b:Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Lcom/android/tools/r8/internal/OL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    iput-object v0, v13, Lcom/android/tools/r8/internal/zL;->a:Lcom/android/tools/r8/internal/OL;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    goto/16 :goto_a

    :cond_10
    move-object/from16 v17, v7

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_7

    :cond_11
    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->r:Ljava/util/List;

    const-string v4, "getFunctionList(...)"

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    const-string v6, "getPropertyList(...)"

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v2, Lcom/android/tools/r8/internal/S80;->t:Ljava/util/List;

    const-string v9, "getTypeAliasList(...)"

    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v4, v7, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/hQ;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/Kb0;)V

    iget v0, v2, Lcom/android/tools/r8/internal/S80;->d:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_12

    iget v0, v2, Lcom/android/tools/r8/internal/S80;->g:I

    iget-object v4, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/tools/r8/internal/aQ;->i:Ljava/lang/String;

    :cond_12
    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->l:Ljava/util/List;

    const-string v4, "getNestedClassNameList(...)"

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v9, v7}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_13
    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/g90;

    iget v7, v4, Lcom/android/tools/r8/internal/g90;->d:I

    const/4 v9, 0x1

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_14

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->f()Ljava/util/List;

    move-result-object v7

    iget v4, v4, Lcom/android/tools/r8/internal/g90;->e:I

    iget-object v9, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_14
    new-instance v0, Lcom/android/tools/r8/internal/lD;

    const-string v1, "No name for EnumEntry"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->v:Ljava/util/List;

    const-string v4, "getSealedSubclassFqNameList(...)"

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/aQ;->i()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-static {v9, v7}, Lcom/android/tools/r8/internal/Mb0;->a(Lcom/android/tools/r8/internal/VL;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_16
    iget v0, v2, Lcom/android/tools/r8/internal/S80;->d:I

    const/16 v4, 0x8

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_17

    iget v0, v2, Lcom/android/tools/r8/internal/S80;->x:I

    iget-object v7, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/tools/r8/internal/aQ;->m:Ljava/lang/String;

    :cond_17
    iget-object v0, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v2, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/lit8 v9, v7, 0x10

    const/16 v10, 0x10

    const/16 v12, 0x20

    if-ne v9, v10, :cond_18

    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->y:Lcom/android/tools/r8/internal/M90;

    goto :goto_13

    :cond_18
    and-int/2addr v7, v12

    if-ne v7, v12, :cond_19

    iget v7, v2, Lcom/android/tools/r8/internal/S80;->z:I

    iget-object v0, v0, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/M90;

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1a

    goto/16 :goto_17

    :cond_1a
    iget v0, v2, Lcom/android/tools/r8/internal/S80;->d:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_21

    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->s:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_1b
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/android/tools/r8/internal/v90;

    invoke-static {v9}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    iget-object v10, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    invoke-static {v10, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v13, v9, Lcom/android/tools/r8/internal/v90;->d:I

    and-int/lit8 v14, v13, 0x20

    if-ne v14, v12, :cond_1c

    iget-object v10, v9, Lcom/android/tools/r8/internal/v90;->k:Lcom/android/tools/r8/internal/M90;

    goto :goto_15

    :cond_1c
    and-int/lit8 v13, v13, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_1d

    iget v13, v9, Lcom/android/tools/r8/internal/v90;->l:I

    iget-object v10, v10, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/M90;

    goto :goto_15

    :cond_1d
    const/4 v10, 0x0

    :goto_15
    if-nez v10, :cond_1b

    iget v9, v9, Lcom/android/tools/r8/internal/v90;->g:I

    iget-object v10, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v2, Lcom/android/tools/r8/internal/S80;->x:I

    iget-object v13, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v13, v10}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    if-eqz v4, :cond_1e

    goto :goto_16

    :cond_1e
    move-object v6, v7

    const/4 v4, 0x1

    goto :goto_14

    :cond_1f
    if-nez v4, :cond_20

    :goto_16
    const/4 v6, 0x0

    :cond_20
    check-cast v6, Lcom/android/tools/r8/internal/v90;

    if-eqz v6, :cond_21

    iget-object v0, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    invoke-static {v6, v0}, Lcom/android/tools/r8/internal/Qa0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;

    move-result-object v0

    goto :goto_17

    :cond_21
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_22

    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v0

    goto :goto_18

    :cond_22
    const/4 v0, 0x0

    :goto_18
    iput-object v0, v3, Lcom/android/tools/r8/internal/aQ;->n:Lcom/android/tools/r8/internal/yQ;

    iget-object v0, v5, Lcom/android/tools/r8/internal/Kb0;->b:Lcom/android/tools/r8/internal/Bu0;

    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/tools/r8/internal/S80;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_19

    :cond_23
    const/4 v4, 0x0

    :goto_19
    if-nez v4, :cond_25

    iget-object v4, v2, Lcom/android/tools/r8/internal/S80;->o:Ljava/util/List;

    const-string v6, "getContextReceiverTypeIdList(...)"

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/M90;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_24
    move-object v4, v6

    :cond_25
    iget-object v0, v3, Lcom/android/tools/r8/internal/aQ;->o:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/M90;

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/M90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/yQ;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_26
    iget-object v0, v2, Lcom/android/tools/r8/internal/S80;->G:Ljava/util/List;

    invoke-static {v0, v11}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/tools/r8/internal/aQ;->p:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v5}, Lcom/android/tools/r8/internal/Ob0;->a(ILcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/HQ;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_27
    iget-object v0, v5, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/yW;

    check-cast v4, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/aQ;)Lcom/android/tools/r8/internal/xL;

    move-result-object v4

    sget-object v6, Lcom/android/tools/r8/internal/oM;->k:Lcom/android/tools/r8/internal/Wy;

    const-string v7, "anonymousObjectOriginName"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/tools/r8/internal/xL;->c:Ljava/lang/String;

    :cond_29
    sget-object v6, Lcom/android/tools/r8/internal/oM;->j:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/v90;

    iget-object v8, v4, Lcom/android/tools/r8/internal/xL;->a:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v7, v5}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/vQ;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2a
    sget-object v6, Lcom/android/tools/r8/internal/oM;->i:Lcom/android/tools/r8/internal/Wy;

    const-string v7, "classModuleName"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v7, v5, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_2b
    const-string v6, "main"

    :goto_1f
    iput-object v6, v4, Lcom/android/tools/r8/internal/xL;->b:Ljava/lang/String;

    sget-object v6, Lcom/android/tools/r8/internal/oM;->l:Lcom/android/tools/r8/internal/Wy;

    const-string v7, "jvmClassFlags"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v4, Lcom/android/tools/r8/internal/xL;->d:I

    goto/16 :goto_1d

    :cond_2c
    new-instance v0, Lcom/android/tools/r8/internal/ML;

    iget-object v2, v1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    iget v1, v1, Lcom/android/tools/r8/kotlin/S;->e:I

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/NQ;-><init>(I)V

    iput-object v3, v2, Lcom/android/tools/r8/internal/NQ$a;->b:Lcom/android/tools/r8/internal/aQ;

    iput-object v0, v2, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    iput v1, v2, Lcom/android/tools/r8/internal/NQ$a;->d:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/tools/r8/internal/NQ;->a:Z

    return-void

    :cond_2d
    move-object v2, v0

    new-instance v0, Lcom/android/tools/r8/internal/lD;

    const-string v1, "Metadata is missing: kotlin.Metadata.data1 must not be an empty array"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ML;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ML;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/KL;
    .locals 9

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    const-string v1, "class"

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/OQ;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    invoke-static {v0}, Lcom/android/tools/r8/internal/OQ;->a(Lcom/android/tools/r8/internal/ML;)V

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/ie;

    new-instance v1, Lcom/android/tools/r8/internal/rM;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rM;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ie;-><init>(Lcom/android/tools/r8/internal/rM;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/NQ$a;->b:Lcom/android/tools/r8/internal/aQ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ie;->a(Lcom/android/tools/r8/internal/aQ;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/ie;->a:Lcom/android/tools/r8/internal/Q80;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Q80;->c()Lcom/android/tools/r8/internal/S80;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/S80;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/ie;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/uM;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/p50;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$a;->c:Lcom/android/tools/r8/internal/ML;

    iget v1, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v1, v3, v0}, [I

    move-result-object v3

    iget v0, p0, Lcom/android/tools/r8/internal/NQ$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x30

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Kotlin metadata is not correct and can not be written"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_2
    :goto_1
    throw v0
.end method

.method public final c()Lcom/android/tools/r8/internal/aQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$a;->b:Lcom/android/tools/r8/internal/aQ;

    return-object v0
.end method
