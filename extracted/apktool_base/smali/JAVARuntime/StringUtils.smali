.class public final LJAVARuntime/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "String"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaddingZerosToNumber(FI)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number padded with zeros as a float string."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero preenchido com zeros como string float."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "number",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "length"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LTc/b;->a(FI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addPaddingZerosToNumber(II)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number padded with zeros as an integer string."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero preenchido com zeros como string inteira."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "number",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "length"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LTc/b;->b(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addSpaceBetweenCapitals(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds spaces between capital letters."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona espa\u00e7os entre letras mai\u00fasculas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the same text with the first letter capitalized."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o mesmo texto com a primeira letra mai\u00fascula."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static capLowFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the same text with the first letter in lower case."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o mesmo texto com a primeira letra em min\u00fascula."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static clamp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the string clamped to the maximum length."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a string limitada ao tamanho m\u00e1ximo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "maxLength"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commonPathInFiles(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the common path from a list of files."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho comum de uma lista de arquivos."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commonPathInList(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the common path from a list of strings."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho comum de uma lista de strings."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the string ends with the provided substring ignoring case."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a string termina com o trecho informado ignorando mai\u00fasculas e min\u00fasculas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "substr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "substr"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static equals(LJAVARuntime/OHString;LJAVARuntime/OHString;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether two OHString values are equal."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se dois valores OHString s\u00e3o iguais."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, LJAVARuntime/OHString;->ohString:LAc/b;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, LJAVARuntime/OHString;->ohString:LAc/b;

    :cond_1
    invoke-static {p0, v0}, LTc/b;->m(LAc/b;LAc/b;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether two strings are equal."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se duas strings s\u00e3o iguais."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LTc/b;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static fixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the text with normalized slashes."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o texto com barras normalizadas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static floatDecimals(FI)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Formats a float with the requested number of decimals."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Formata um float com a quantidade solicitada de casas decimais."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v",
            "decimals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "decimals"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static floatDecimals(FILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Formats a float with the requested number of decimals using the provided separator."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Formata um float com a quantidade solicitada de casas decimais usando o separador informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v",
            "decimals",
            "separator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "decimals",
            "separator"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, LTc/b;->q(FILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Formats a byte size string."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Formata uma string de tamanho em bytes."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->s(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the extension of the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a extens\u00e3o do caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the file folder from the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta do arquivo do caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the file name from the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do arquivo do caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the file name from the provided path, optionally without the extension."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o nome do arquivo do caminho informado, opcionalmente sem a extens\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath",
            "hideExtension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filePath",
            "hideExtension"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the last folder from the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a \u00faltima pasta do caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaFolder(LJAVARuntime/File;)LJAVARuntime/File;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the meta folder for the provided file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta meta para o arquivo informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LTc/b;->y(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, LJAVARuntime/File;

    invoke-direct {v0, p0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getMetaFolder(Ljava/lang/String;)LJAVARuntime/File;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the meta folder for the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a pasta meta para o caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 3
    invoke-static {p0}, LTc/b;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v0, LJAVARuntime/File;

    invoke-direct {v0, p0}, LJAVARuntime/File;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getMetaInProject(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the meta path for the file in the current project."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho meta do arquivo no projeto atual."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the parent path of the provided path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho pai do caminho informado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the provided text is an email."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o texto informado \u00e9 um email."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->C(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFilePath(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the path looks like a file path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o caminho parece ser um caminho de arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->D(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFirstLetterUpperCase(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the first letter is uppercase."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a primeira letra est\u00e1 mai\u00fascula."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->E(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFolderPath(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the path looks like a folder path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se o caminho parece ser um caminho de pasta."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->F(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static normalizeIpp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Normalizes a project relative path."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Normaliza um caminho relativo ao projeto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    invoke-static {p0}, LTc/b;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeIpp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Normalizes a project relative path using the provided project root."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Normaliza um caminho relativo ao projeto usando a raiz informada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "path",
            "projectRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "projectRoot"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LTc/b;->H(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onlyNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns only the numeric characters and dots from the text."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna apenas os caracteres num\u00e9ricos e pontos do texto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static randomUUID()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random UUID without dashes."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um UUID aleat\u00f3rio sem h\u00edfens."
    .end annotation

    .line 1
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomUUID(I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a random UUID without dashes limited to the requested length."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna um UUID aleat\u00f3rio sem h\u00edfens limitado ao tamanho solicitado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .line 2
    invoke-static {p0}, LTc/b;->M(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeDoubleExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the path without the first extension segment."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho sem o primeiro trecho da extens\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the path without its extension."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o caminho sem a extens\u00e3o."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes special characters from the text."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove caracteres especiais do texto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, LTc/b;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeSpecialCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes special characters from the text using the provided replacement."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove caracteres especiais do texto usando a substitui\u00e7\u00e3o informada."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "s",
            "replacement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "replacement"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, LTc/b;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static repeatText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Repeats the provided text the requested number of times."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Repete o texto informado a quantidade solicitada de vezes."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "t",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "count"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->R(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sanitizes a file name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Sanitiza um nome de arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeInt(I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sanitizes an integer into a compact string."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Sanitiza um inteiro em uma string compacta."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->W(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeScriptText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes invalid script characters from the text."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove caracteres inv\u00e1lidos de script do texto."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the string trimmed to the maximum length using ellipsis."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a string limitada ao tamanho m\u00e1ximo usando retic\u00eancias."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "maxLength"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMinimalLength(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the string padded to a minimal length."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a string preenchida at\u00e9 um tamanho m\u00ednimo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "string",
            "spacer",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "spacer",
            "length"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LTc/b;->Z(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMinimalLengthCentered(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the string centered with a minimal length."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a string centralizada com um tamanho m\u00ednimo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "string",
            "spacer",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "spacer",
            "length"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LTc/b;->a0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the string starts with the provided substring ignoring case."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a string come\u00e7a com o trecho informado ignorando mai\u00fasculas e min\u00fasculas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str",
            "substr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "substr"
        }
    .end annotation

    invoke-static {p0, p1}, LTc/b;->b0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Converts a list to a comma-separated string."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Converte uma lista em uma string separada por v\u00edrgulas."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectList"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->c0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the text with folder separators normalized."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o texto com os separadores de pasta normalizados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-static {p0}, LTc/b;->d0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
