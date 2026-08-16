.class public LD6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;


# instance fields
.field public a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public c:LF6/b;


# direct methods
.method public constructor <init>(LF6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageConnector"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-direct {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;-><init>()V

    iput-object v0, p0, LD6/d;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LD6/d;->b:Ljava/util/Set;

    iput-object p1, p0, LD6/d;->c:LF6/b;

    return-void
.end method

.method private c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
    .locals 1

    iget-object v0, p0, LD6/d;->c:LF6/b;

    invoke-interface {v0}, LF6/b;->f()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v0, LW7/b;->j:Ld8/j;

    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {p1}, LH6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "]\\["

    const-string v2, "]@<ENTRY>@\\["

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "@<ENTRY>@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_0
    if-ltz v2, :cond_5

    aget-object v8, p1, v2

    const-string v9, "[LPAREN]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const-string v9, "[RPAREN]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    const-string v10, "[ID@"

    if-nez v6, :cond_3

    const-string v11, "[DOT]"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v7, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LC6/i;

    invoke-direct {v8, v7, v5, v5}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    move-object v7, v8

    goto :goto_1

    :cond_3
    if-gez v6, :cond_4

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v7, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v2, LC6/i;

    invoke-direct {v2, p1, v5, v3}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_3
    if-ltz p1, :cond_b

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC6/i;

    if-nez v4, :cond_9

    iget-boolean v6, v2, LC6/i;->c:Z

    if-nez v6, :cond_8

    :try_start_0
    iget-object v6, v2, LC6/i;->a:Ljava/lang/String;

    invoke-static {v0, v6}, LH6/b;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, v2, LC6/i;->a:Ljava/lang/String;

    invoke-static {v2}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_8
    iget-object p1, v2, LC6/i;->a:Ljava/lang/String;

    invoke-static {p1}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_6

    :cond_9
    iget-object v2, v2, LC6/i;->a:Ljava/lang/String;

    invoke-static {v4, v2}, LH6/b;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v4, v2

    :cond_a
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_b
    :goto_6
    if-eqz v4, :cond_13

    invoke-static {v4}, LH6/b;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH6/j;

    iget-boolean v2, v1, LH6/j;->g:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v5

    :goto_8
    iget-object v6, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v6, v6

    if-ge v4, v6, :cond_f

    iget-object v6, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    if-eqz v6, :cond_d

    array-length v7, v6

    if-le v7, v4, :cond_d

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->isNamePresent()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v6, v1, LH6/j;->e:[Ljava/lang/Class;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v6, v6

    sub-int/2addr v6, v3

    if-ge v4, v6, :cond_e

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD6/d;->b:Ljava/util/Set;

    new-instance v2, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    sget-object v3, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    const-string v4, ""

    invoke-direct {v2, v3, v0, v4}, Lorg/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Could not generate auto complete for a null java class"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Could not generate auto complete for a null javametainfo"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    :goto_a
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v0, LW7/b;->j:Ld8/j;

    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {v0}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {p1}, LH6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "]\\["

    const-string v2, "]@<ENTRY>@\\["

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "@<ENTRY>@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_0
    if-ltz v2, :cond_5

    aget-object v8, p1, v2

    const-string v9, "[LPAREN]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const-string v9, "[RPAREN]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x5

    const-string v10, "[ID@"

    if-nez v6, :cond_3

    const-string v11, "[DOT]"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v7, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, LC6/i;

    invoke-direct {v8, v7, v5, v5}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    move-object v7, v8

    goto :goto_1

    :cond_3
    if-gez v6, :cond_4

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v7, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v2, LC6/i;

    invoke-direct {v2, p1, v5, v3}, LC6/i;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    const-string v2, ""

    move-object v6, v2

    :goto_3
    if-ltz p1, :cond_d

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LC6/i;

    if-nez v4, :cond_b

    iget-boolean v8, v7, LC6/i;->c:Z

    if-nez v8, :cond_9

    :try_start_0
    iget-object v8, v7, LC6/i;->a:Ljava/lang/String;

    invoke-static {v0, v8}, LH6/b;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    iget-object v8, v7, LC6/i;->a:Ljava/lang/String;

    invoke-static {v8}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    iget-object v6, v7, LC6/i;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v7

    goto :goto_4

    :catch_1
    move-exception v7

    :goto_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_9
    iget-object p1, v7, LC6/i;->a:Ljava/lang/String;

    invoke-static {p1}, LH6/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_a

    :goto_5
    move p1, v3

    goto :goto_7

    :cond_a
    iget-object v6, v7, LC6/i;->a:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v8, v7, LC6/i;->a:Ljava/lang/String;

    invoke-static {v4, v8}, LH6/b;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_c

    move-object v4, v8

    goto :goto_6

    :cond_c
    iget-object v6, v7, LC6/i;->a:Ljava/lang/String;

    :goto_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_d
    move p1, v5

    :goto_7
    if-eqz v4, :cond_1d

    if-nez p1, :cond_f

    if-ne v4, v0, :cond_e

    invoke-static {v4, v6}, LH6/b;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_8

    :cond_e
    invoke-static {v4, v6}, LH6/b;->e(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_8
    invoke-static {p1}, LH6/b;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_9

    :cond_f
    invoke-static {v4}, LH6/b;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    :goto_9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH6/j;

    iget-boolean v4, v1, LH6/j;->g:Z

    const-string v6, ")"

    const-string v7, "("

    const-string v8, ", "

    const-string v9, ":"

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    :goto_b
    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v11, v11

    if-ge v10, v11, :cond_12

    iget-object v11, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    if-eqz v11, :cond_10

    array-length v12, v11

    if-le v12, v10, :cond_10

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/reflect/Parameter;->isNamePresent()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v11, v11

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_11

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, LH6/j;->a:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    iget-boolean v4, v1, LH6/j;->c:Z

    if-nez v4, :cond_14

    iget-object v1, v1, LH6/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_14
    iget v4, v1, LH6/j;->d:I

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, LH6/j;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v5

    :goto_c
    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v11, v11

    if-ge v10, v11, :cond_18

    iget-object v11, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    if-eqz v11, :cond_16

    array-length v12, v11

    if-le v12, v10, :cond_16

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/reflect/Parameter;->isNamePresent()Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, v1, LH6/j;->f:[Ljava/lang/reflect/Parameter;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, LH6/j;->e:[Ljava/lang/Class;

    array-length v11, v11

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_17

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_18
    iget-object v8, v1, LH6/j;->b:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, LH6/j;->b:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_19
    move-object v8, v2

    :goto_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, LH6/j;->a:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LD6/d;->b:Ljava/util/Set;

    new-instance v3, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    sget-object v4, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-direct {v3, v4, v0, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Could not generate auto complete for a null java class"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_1c
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Could not generate auto complete for a null javametainfo"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1d
    :goto_f
    return-void
.end method

.method public clearLines()V
    .locals 1

    iget-object v0, p0, LD6/d;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->clearLines()V

    iget-object v0, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, LD6/d;->c:LF6/b;

    invoke-interface {v0}, LF6/b;->e()V

    return-void
.end method

.method public deleteLine(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LD6/d;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->deleteLine(I)V

    iget-object v0, p0, LD6/d;->c:LF6/b;

    invoke-interface {v0, p1}, LF6/b;->a(I)V

    return-void
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashSet;

    iget-object v0, p0, LD6/d;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->getWords()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Ld8/j;->k0()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ld8/j;->j0(I)Le8/c;

    move-result-object v2

    new-instance v3, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    sget-object v4, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Le8/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {}, Ld8/j;->K0()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {v0}, Ld8/j;->J0(I)Ld8/r;

    move-result-object v1

    new-instance v2, Lorg/blacksquircle/ui/language/base/model/Suggestion;

    sget-object v3, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    iget-object v1, v1, Ld8/r;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v1}, Lorg/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object p1
.end method

.method public processLine(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    iget-object v0, p0, LD6/d;->a:Lorg/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1, p2}, Lorg/blacksquircle/ui/language/base/utils/WordsManager;->processLine(ILjava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "()"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0, p2}, LD6/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, LD6/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p0, p2}, LD6/d;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, LD6/d;->c:LF6/b;

    invoke-interface {p2, p1}, LF6/b;->a(I)V

    :try_start_0
    invoke-direct {p0}, LD6/d;->c()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld8/e;

    iget v1, v0, Ld8/e;->c:I

    if-ne v1, p1, :cond_4

    invoke-virtual {v0}, Ld8/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, LD6/d;->c:LF6/b;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1}, LF6/b;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method
