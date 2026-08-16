.class public Ld8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/a$a;,
        Ld8/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "javaMetaInfo"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ld8/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ld8/a$a;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ld8/a$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "javaMetaInfo",
            "listener"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {p0}, Ld8/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld8/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v2, p1, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {p0, v3}, Ld8/a;->c([Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencedClasses:Ljava/util/List;

    iget-object v5, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v4, v2, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {p2, v4, v2, v3}, Ld8/a$a;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c([Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lines",
            "className"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_6

    aget-object v3, p0, v1

    const-string v4, "//.*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld8/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    if-nez v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "*/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v0

    move v4, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_5

    const-string v4, "[\\s(){};.,]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;Ld8/a$b;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "javaMetaInfo",
            "listener"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencedClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {p0}, Ld8/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld8/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    sget-object v6, Ld8/j;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v7, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eq v6, p1, :cond_0

    iget-object v7, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-static {v2, v7}, Ld8/a;->c([Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v8, p1, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->referencedClasses:Ljava/util/List;

    iget-object v9, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v8, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-interface {p2, v8, v6, v7}, Ld8/a$b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    aget-object v5, v2, v7

    iget-object v6, v6, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    array-length p0, v2

    const-string p1, ""

    :goto_1
    if-ge v3, p0, :cond_2

    aget-object p2, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object p0, p1

    :cond_3
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    const/16 v5, 0x2a

    const/16 v6, 0x2f

    const/4 v7, 0x1

    if-nez v4, :cond_0

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_0

    move v4, v7

    :goto_1
    move v3, v8

    goto :goto_2

    :cond_0
    if-eqz v4, :cond_1

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/2addr v3, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const-string v0, "\"[^\"]*\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
