.class public Lk8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lk8/b;->a:Z

    sput-boolean v0, Lk8/b;->b:Z

    :cond_0
    const-string v0, "JPreCompiller"

    sput-object v0, Lk8/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lk8/b;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "file",
            "RUNTIME_FOLDER",
            "javaFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ld8/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    invoke-static/range {p0 .. p1}, LIc/o;->a(Ljava/lang/String;Ljava/io/File;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lk8/b$b;

    invoke-direct {v0, v2}, Lk8/b$b;-><init>(Ljava/util/List;)V

    const-string v3, "instantiating the precompiler and compiling the java file"

    invoke-static {v3}, Lk8/b;->e(Ljava/lang/String;)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/batch/Main;

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;-><init>(Ljava/io/PrintWriter;Ljava/io/PrintWriter;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v6, "-1.8"

    const-string v7, "-proc:none"

    const-string v8, "-classpath"

    const-string v10, "-maxProblems"

    const-string v11, "100"

    const-string v12, "-noExit"

    const-string v13, "-nowarn"

    move-object/from16 v9, p2

    move-object/from16 v14, p3

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compile([Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ecjMain.compile result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk8/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v2}, Lk8/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAILED TO PRECOMPILE FILE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-boolean v3, Lk8/b;->a:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-static {v2}, Lk8/b;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Code can\'t be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;Lk8/c;)Z
    .locals 6
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
            "javaMetaInfo",
            "javaFile",
            "RUNTIME_FOLDER",
            "compileLoop",
            "file",
            "javaCode"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Precompilling (loops:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") (file:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lk8/b;->e(Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_0
    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ll8/a;

    invoke-direct {v2}, Ll8/a;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance v2, Ll8/g;

    invoke-direct {v2}, Ll8/g;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ll8/e;

    invoke-direct {v2}, Ll8/e;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Ll8/h;

    invoke-direct {v2}, Ll8/h;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ll8/d;

    invoke-direct {v2}, Ll8/d;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/JavaSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ll8/c;

    invoke-direct {v0}, Ll8/c;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return p3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JAVA CODE BEFORE PRE COMPILLERS:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk8/b;->e(Ljava/lang/String;)V

    invoke-virtual {p5}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p5}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, p3

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll8/i;

    if-eqz p0, :cond_5

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    return p3

    :cond_5
    invoke-virtual {p5}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4, p2, p1}, Lk8/b;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lk8/b$a;

    invoke-direct {v5, p0, p4, p2, p1}, Lk8/b$a;-><init>(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p5, v4, v5}, Ll8/i;->a(Lk8/c;Ljava/util/List;Lk8/a;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz p0, :cond_7

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    return p3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "JAVA CODE BEFORE AFTER COMPILLERS:\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk8/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    return p3
.end method

.method public static d(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringOutputs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ld8/e;",
            ">;"
        }
    .end annotation

    const-string v0, "are only available if source level is 1.5 or greater"

    const-string v1, ""

    const-string v2, "\n"

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    move-object v5, v4

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_3

    :try_start_0
    const-string v7, ". WARNING in "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v6, Lt8/g;

    invoke-direct {v6}, Lt8/g;-><init>()V

    :goto_2
    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v6

    goto/16 :goto_6

    :cond_2
    const-string v7, ". ERROR in "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lt8/d;

    invoke-direct {v6}, Lt8/d;-><init>()V

    goto :goto_2

    :cond_3
    const-string v7, " (at line"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, " (at line "

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ld8/e;->f(I)V

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v8

    :goto_3
    array-length v10, v6

    if-ge v9, v10, :cond_7

    aget-object v10, v6, v9

    array-length v11, v6

    sub-int/2addr v11, v8

    if-ge v9, v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_4

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ld8/e;->g(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v7, "Syntax error, parameterized types are only available if source level is 1.5 or greater"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v6, v5, Ld8/e;->a:Ljava/lang/String;

    const-string v7, "SteppedArrayList<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Use of <> with SteppedArrayList is not supported yet, you can fix it by using non-typed: SteppedArrayList variableName"

    goto :goto_5

    :cond_9
    iget-object v6, v5, Ld8/e;->a:Ljava/lang/String;

    const-string v7, "List<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "Use of <> with List is not supported yet, you can fix it by using non-typed: List variableName"

    goto :goto_5

    :cond_a
    const-string v6, "Use of <> is not support yet, is not necessary in this case, remove <>"

    goto :goto_5

    :cond_b
    const-string v7, "Syntax error, annotations are only available if source level is 1.5 or greater"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v6, "annotations is not supported yet."

    goto :goto_5

    :cond_c
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "are not supported yet."

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_d
    :goto_5
    invoke-virtual {v5, v6}, Ld8/e;->e(Ljava/lang/String;)V

    const-string v7, "The serializable class Controller does not declare a static final serialVersionUID field of type long"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_e

    move-object v5, v4

    :cond_e
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Lk8/b;->a:Z

    if-eqz v7, :cond_0

    invoke-static {v6}, LJ4/d;->V1(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Lk8/b;->a:Z

    if-eqz v7, :cond_1

    invoke-static {v6}, LJ4/d;->V1(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    return-object v3
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    sget-boolean v0, Lk8/b;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lk8/b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lk8/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/Terminal;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lk8/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "javaMetaInfo",
            "javaFile",
            "RUNTIME_FOLDER"
        }
    .end annotation

    new-instance v6, Ljava/io/File;

    const-string v0, "/./"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v7, Lk8/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lk8/c;-><init>(Ljava/lang/String;)V

    iput-object p0, v7, Lk8/c;->d:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    invoke-static {v6}, LIc/o;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lk8/c;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v9

    move-object v4, v6

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lk8/b;->c(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ljava/lang/String;Ljava/lang/String;ILjava/io/File;Lk8/c;)Z

    move-result v0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ld8/j;->D0(Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    return-void

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v8

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lk8/c;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, LIc/o;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method
