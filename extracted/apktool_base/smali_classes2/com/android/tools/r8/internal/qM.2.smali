.class public abstract Lcom/android/tools/r8/internal/qM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/kotlin/S;)Lcom/android/tools/r8/internal/sQ;
    .locals 11

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/S;->d:[Ljava/lang/String;

    sget-object v2, Lcom/android/tools/r8/internal/pM;->a:Lcom/android/tools/r8/internal/yv;

    invoke-static {v0}, Lcom/android/tools/r8/internal/N6;->a([Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/pM;->a(Ljava/io/ByteArrayInputStream;[Ljava/lang/String;)Lcom/android/tools/r8/internal/VL;

    move-result-object v5

    sget-object v0, Lcom/android/tools/r8/internal/s90;->m:Lcom/android/tools/r8/internal/q90;

    invoke-virtual {v0, v3, v2}, Lcom/android/tools/r8/internal/j1;->a(Ljava/io/InputStream;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/j1;->a(Lcom/android/tools/r8/internal/O0;)Lcom/android/tools/r8/internal/O0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/s90;

    new-instance v1, Lcom/android/tools/r8/internal/ML;

    iget-object p0, p0, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    new-instance p0, Lcom/android/tools/r8/internal/ML;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/android/tools/r8/internal/ML;-><init>(III)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result p0

    if-gez p0, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    sget-object v9, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    const-string p0, "<this>"

    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/tools/r8/internal/sQ;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sQ;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Kb0;

    new-instance v6, Lcom/android/tools/r8/internal/Bu0;

    iget-object v2, v0, Lcom/android/tools/r8/internal/s90;->h:Lcom/android/tools/r8/internal/W90;

    const-string v3, "getTypeTable(...)"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/Bu0;-><init>(Lcom/android/tools/r8/internal/W90;)V

    sget-object v2, Lcom/android/tools/r8/internal/Zw0;->b:Lcom/android/tools/r8/internal/Zw0;

    iget-object v3, v0, Lcom/android/tools/r8/internal/s90;->i:Lcom/android/tools/r8/internal/ha0;

    const-string v4, "getVersionRequirementTable(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/tools/r8/internal/ha0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/Zw0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ha0;->c:Ljava/util/List;

    const-string v4, "getRequirementList(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Zw0;-><init>(Ljava/util/List;)V

    goto :goto_1

    :goto_2
    const/16 v10, 0x10

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/internal/Kb0;-><init>(Lcom/android/tools/r8/internal/VL;Lcom/android/tools/r8/internal/Bu0;Lcom/android/tools/r8/internal/Zw0;ZLjava/util/List;I)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/s90;->e:Ljava/util/List;

    const-string v3, "getFunctionList(...)"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/s90;->f:Ljava/util/List;

    const-string v4, "getPropertyList(...)"

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/tools/r8/internal/s90;->g:Ljava/util/List;

    const-string v5, "getTypeAliasList(...)"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2, v3, v4, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/hQ;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/Kb0;)V

    iget-object v2, v1, Lcom/android/tools/r8/internal/Kb0;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/yW;

    check-cast v3, Lcom/android/tools/r8/internal/JL;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/internal/oM;->n:Lcom/android/tools/r8/internal/Wy;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Ty;->a(Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/v90;

    iget-object v6, v3, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-static {v5, v1}, Lcom/android/tools/r8/internal/Ob0;->a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Kb0;)Lcom/android/tools/r8/internal/vQ;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    sget-object v4, Lcom/android/tools/r8/internal/oM;->m:Lcom/android/tools/r8/internal/Wy;

    const-string v5, "packageModuleName"

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/android/tools/r8/internal/ja0;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/Wy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/Kb0;->a:Lcom/android/tools/r8/internal/VL;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/VL;->a(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_4
    const-string v4, "main"

    :goto_5
    iput-object v4, v3, Lcom/android/tools/r8/internal/WL;->b:Ljava/lang/String;

    goto :goto_3

    :cond_5
    return-object p0

    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/lD;

    const-string v0, "Metadata is missing: kotlin.Metadata.data1 must not be an empty array"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/String;)V

    throw p0
.end method
