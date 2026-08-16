.class public final Lorg/eclipse/jdt/internal/compiler/util/Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;
    }
.end annotation


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "org.eclipse.jdt.internal.compiler.messages"

.field private static final EXTENSION:Ljava/lang/String; = ".properties"

.field public static abort_againstSourceModel:Ljava/lang/String;

.field public static abort_externaAnnotationFile:Ljava/lang/String;

.field public static abort_invalidAttribute:Ljava/lang/String;

.field public static abort_invalidExceptionAttribute:Ljava/lang/String;

.field public static abort_invalidOpcode:Ljava/lang/String;

.field public static abort_missingCode:Ljava/lang/String;

.field public static accept_cannot:Ljava/lang/String;

.field public static ast_missingCode:Ljava/lang/String;

.field public static compilation_beginningToCompile:Ljava/lang/String;

.field public static compilation_done:Ljava/lang/String;

.field public static compilation_internalError:Ljava/lang/String;

.field public static compilation_loadBinary:Ljava/lang/String;

.field public static compilation_process:Ljava/lang/String;

.field public static compilation_processing:Ljava/lang/String;

.field public static compilation_request:Ljava/lang/String;

.field public static compilation_unit:Ljava/lang/String;

.field public static compilation_units:Ljava/lang/String;

.field public static compilation_unresolvedProblem:Ljava/lang/String;

.field public static compilation_unresolvedProblems:Ljava/lang/String;

.field public static compilation_write:Ljava/lang/String;

.field public static constant_cannotCastedInto:Ljava/lang/String;

.field public static constant_cannotConvertedTo:Ljava/lang/String;

.field private static nlSuffixes:[Ljava/lang/String;

.field public static output_isFile:Ljava/lang/String;

.field public static output_notValid:Ljava/lang/String;

.field public static output_notValidAll:Ljava/lang/String;

.field public static parser_corruptedFile:Ljava/lang/String;

.field public static parser_endOfConstructor:Ljava/lang/String;

.field public static parser_endOfFile:Ljava/lang/String;

.field public static parser_endOfInitializer:Ljava/lang/String;

.field public static parser_endOfMethod:Ljava/lang/String;

.field public static parser_incorrectPath:Ljava/lang/String;

.field public static parser_missingFile:Ljava/lang/String;

.field public static parser_moveFiles:Ljava/lang/String;

.field public static parser_regularParse:Ljava/lang/String;

.field public static parser_syntaxRecovery:Ljava/lang/String;

.field public static problem_atLine:Ljava/lang/String;

.field public static problem_noSourceInformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jdt.internal.compiler.messages"

    const-class v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->initializeMessages(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildVariants(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->nlSuffixes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".properties"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->nlSuffixes:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->nlSuffixes:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_2
    if-lt v1, v0, :cond_2

    return-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Messages;->nlSuffixes:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static initializeMessages(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->load(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x19

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Missing message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/reflect/Field;)V
    .locals 4

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->buildVariants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :catch_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;

    invoke-direct {v3, p2, p0}, Lorg/eclipse/jdt/internal/compiler/util/Messages$MessagesProperties;-><init>([Ljava/lang/reflect/Field;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    throw p0
.end method
