.class public Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/batch/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Logger"
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field private static final CLASSPATH:Ljava/lang/String; = "classpath"

.field private static final CLASSPATHS:Ljava/lang/String; = "classpaths"

.field private static final CLASSPATH_FILE:Ljava/lang/String; = "FILE"

.field private static final CLASSPATH_FOLDER:Ljava/lang/String; = "FOLDER"

.field private static final CLASSPATH_ID:Ljava/lang/String; = "id"

.field private static final CLASSPATH_JAR:Ljava/lang/String; = "JAR"

.field private static final CLASS_FILE:Ljava/lang/String; = "classfile"

.field private static final COMMAND_LINE_ARGUMENT:Ljava/lang/String; = "argument"

.field private static final COMMAND_LINE_ARGUMENTS:Ljava/lang/String; = "command_line"

.field private static final COMPILER:Ljava/lang/String; = "compiler"

.field private static final COMPILER_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final COMPILER_NAME:Ljava/lang/String; = "name"

.field private static final COMPILER_VERSION:Ljava/lang/String; = "version"

.field public static final EMACS:I = 0x2

.field private static final ERROR:Ljava/lang/String; = "ERROR"

.field private static final ERROR_TAG:Ljava/lang/String; = "error"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EXTRA_PROBLEMS:Ljava/lang/String; = "extra_problems"

.field private static final EXTRA_PROBLEM_TAG:Ljava/lang/String; = "extra_problem"

.field private static final FIELD_TABLE:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INFO:Ljava/lang/String; = "INFO"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final NUMBER_OF_CLASSFILES:Ljava/lang/String; = "number_of_classfiles"

.field private static final NUMBER_OF_ERRORS:Ljava/lang/String; = "errors"

.field private static final NUMBER_OF_INFOS:Ljava/lang/String; = "infos"

.field private static final NUMBER_OF_LINES:Ljava/lang/String; = "number_of_lines"

.field private static final NUMBER_OF_PROBLEMS:Ljava/lang/String; = "problems"

.field private static final NUMBER_OF_TASKS:Ljava/lang/String; = "tasks"

.field private static final NUMBER_OF_WARNINGS:Ljava/lang/String; = "warnings"

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final OPTIONS:Ljava/lang/String; = "options"

.field private static final OUTPUT:Ljava/lang/String; = "output"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PROBLEMS:Ljava/lang/String; = "problems"

.field private static final PROBLEM_ARGUMENT:Ljava/lang/String; = "argument"

.field private static final PROBLEM_ARGUMENTS:Ljava/lang/String; = "arguments"

.field private static final PROBLEM_ARGUMENT_VALUE:Ljava/lang/String; = "value"

.field private static final PROBLEM_CATEGORY_ID:Ljava/lang/String; = "categoryID"

.field private static final PROBLEM_ID:Ljava/lang/String; = "problemID"

.field private static final PROBLEM_LINE:Ljava/lang/String; = "line"

.field private static final PROBLEM_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROBLEM_OPTION_KEY:Ljava/lang/String; = "optionKey"

.field private static final PROBLEM_SEVERITY:Ljava/lang/String; = "severity"

.field private static final PROBLEM_SOURCE_END:Ljava/lang/String; = "charEnd"

.field private static final PROBLEM_SOURCE_START:Ljava/lang/String; = "charStart"

.field private static final PROBLEM_SUMMARY:Ljava/lang/String; = "problem_summary"

.field private static final PROBLEM_TAG:Ljava/lang/String; = "problem"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final SOURCES:Ljava/lang/String; = "sources"

.field private static final SOURCE_CONTEXT:Ljava/lang/String; = "source_context"

.field private static final SOURCE_END:Ljava/lang/String; = "sourceEnd"

.field private static final SOURCE_START:Ljava/lang/String; = "sourceStart"

.field private static final STATS:Ljava/lang/String; = "stats"

.field private static final TASK:Ljava/lang/String; = "task"

.field private static final TASKS:Ljava/lang/String; = "tasks"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final WARNING:Ljava/lang/String; = "WARNING"

.field private static final WARNING_TAG:Ljava/lang/String; = "warning"

.field public static final XML:I = 0x1

.field private static final XML_DTD_DECLARATION:Ljava/lang/String; = "<!DOCTYPE compiler PUBLIC \"-//Eclipse.org//DTD Eclipse JDT 3.2.006 Compiler//EN\" \"http://www.eclipse.org/jdt/core/compiler_32_006.dtd\">"


# instance fields
.field private err:Ljava/io/PrintWriter;

.field private log:Ljava/io/PrintWriter;

.field private main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

.field private out:Ljava/io/PrintWriter;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field tagBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->FIELD_TABLE:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    :try_start_0
    const-class v0, Lorg/eclipse/jdt/core/compiler/IProblem;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_5

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x3fffff

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    const v4, 0x7fffffff

    :cond_1
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->FIELD_TABLE:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;Ljava/io/PrintWriter;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->err:Ljava/io/PrintWriter;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    return-void
.end method

.method private endLoggingExtraProblems()V
    .locals 1

    const-string v0, "extra_problems"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    return-void
.end method

.method private endLoggingProblems()V
    .locals 1

    const-string v0, "problems"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    return-void
.end method

.method private endTag(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->endTag(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private errorReportSource(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)Ljava/lang/String;
    .locals 10

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-gt v0, v1, :cond_11

    if-gez v0, :cond_1

    if-ltz v1, :cond_11

    :cond_1
    if-eqz p2, :cond_11

    array-length v2, p2

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 p3, p3, 0x2

    const/16 v4, 0x20

    if-nez p3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/util/Messages;->problem_atLine:Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const/16 p1, 0x9

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-lt v0, v2, :cond_4

    add-int/lit8 p3, v2, -0x1

    goto :goto_0

    :cond_4
    move p3, v0

    :goto_0
    const/16 v5, 0xd

    const/16 v6, 0xa

    if-gtz p3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, p3, -0x1

    aget-char v7, p2, v7

    if-eq v7, v6, :cond_7

    if-ne v7, v5, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    if-lt v1, v2, :cond_8

    add-int/lit8 v7, v2, -0x1

    goto :goto_2

    :cond_8
    move v7, v1

    :goto_2
    add-int/lit8 v8, v7, 0x1

    if-lt v8, v2, :cond_9

    goto :goto_3

    :cond_9
    aget-char v9, p2, v8

    if-eq v9, v5, :cond_b

    if-ne v9, v6, :cond_a

    goto :goto_3

    :cond_a
    move v7, v8

    goto :goto_2

    :cond_b
    :goto_3
    aget-char v5, p2, p3

    if-eq v5, v4, :cond_10

    if-eq v5, p1, :cond_10

    sub-int/2addr v7, p3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, p2, p3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    if-lt p3, v0, :cond_e

    :goto_5
    if-lt v1, v2, :cond_c

    add-int/lit8 p1, v2, -0x1

    goto :goto_6

    :cond_c
    move p1, v1

    :goto_6
    if-le v0, p1, :cond_d

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const/16 p1, 0x5e

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    aget-char v5, p2, p3

    if-ne v5, p1, :cond_f

    move v5, p1

    goto :goto_7

    :cond_f
    move v5, v4

    :goto_7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_11
    :goto_8
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->problem_noSourceInformation:Ljava/lang/String;

    return-object p1
.end method

.method private extractContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .locals 13

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v2, p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string p1, "source_context"

    const-string v2, "sourceEnd"

    const-string v3, "sourceStart"

    const-string v4, "value"

    const/4 v5, 0x1

    if-gt v0, v1, :cond_d

    if-gez v0, :cond_1

    if-ltz v1, :cond_d

    :cond_1
    if-eqz p2, :cond_d

    array-length v6, p2

    if-lez v6, :cond_d

    if-le v1, v6, :cond_2

    goto/16 :goto_5

    :cond_2
    if-lt v0, v6, :cond_3

    add-int/lit8 v7, v6, -0x1

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    const/16 v8, 0xd

    const/16 v9, 0xa

    if-gtz v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v7, -0x1

    aget-char v10, p2, v10

    if-eq v10, v9, :cond_6

    if-ne v10, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-lt v1, v6, :cond_7

    add-int/lit8 v10, v6, -0x1

    goto :goto_2

    :cond_7
    move v10, v1

    :goto_2
    add-int/lit8 v11, v10, 0x1

    if-lt v11, v6, :cond_8

    goto :goto_3

    :cond_8
    aget-char v12, p2, v11

    if-eq v12, v8, :cond_a

    if-ne v12, v9, :cond_9

    goto :goto_3

    :cond_9
    move v10, v11

    goto :goto_2

    :cond_a
    :goto_3
    aget-char v6, p2, v7

    const/16 v8, 0x20

    if-eq v6, v8, :cond_c

    const/16 v9, 0x9

    if-eq v6, v9, :cond_c

    :goto_4
    aget-char v6, p2, v10

    if-eq v6, v8, :cond_b

    if-eq v6, v9, :cond_b

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sub-int/2addr v10, v7

    add-int/2addr v10, v5

    invoke-virtual {v6, p2, v7, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v5, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    return-void

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_d
    :goto_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->problem_noSourceInformation:Ljava/lang/String;

    invoke-virtual {p2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v0, "-1"

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v5, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    return-void
.end method

.method private getFieldName(I)Ljava/lang/String;
    .locals 1

    const v0, 0x3fffff

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->FIELD_TABLE:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getProblemOptionKey(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getIrritant(I)I

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->optionKeyFromIrritant(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private logExtraProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V
    .locals 4

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "requestor.extraerror"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "requestor.extrainfo"

    goto :goto_0

    :cond_1
    const-string p2, "requestor.extrawarning"

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    const-string p2, " "

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "output.emacs.error"

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "output.emacs.info"

    goto :goto_1

    :cond_4
    const-string p2, "output.emacs.warning"

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    invoke-direct {p0, p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->errorReportSource(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "----------"

    if-nez p2, :cond_6

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "requestor.error"

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "requestor.info"

    goto :goto_2

    :cond_8
    const-string p2, "requestor.warning"

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v2, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->errorReportSource(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private logProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II[C)V
    .locals 4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->reportError()V

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "output.emacs.error"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "output.emacs.info"

    goto :goto_0

    :cond_2
    const-string p2, "output.emacs.warning"

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    invoke-direct {p0, p1, p4, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->errorReportSource(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "----------"

    if-nez p2, :cond_4

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "requestor.error"

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "requestor.info"

    goto :goto_1

    :cond_6
    const-string p2, "requestor.warning"

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getOriginatingFileName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, p2, p3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p4, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->errorReportSource(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string p3, "requestor.notRetrieveErrorMessage"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private logXmlExtraProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result p2

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result p3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v0, "ERROR"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INFO"

    goto :goto_0

    :cond_1
    const-string v0, "WARNING"

    :goto_0
    const-string v2, "severity"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "line"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "charStart"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "charEnd"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 p3, 0x0

    const-string v0, "extra_problem"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string p3, "value"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "message"

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->extractContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    return-void
.end method

.method private logXmlProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v4, "id"

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->getFieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "problemID"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    const-string v5, "ERROR"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "INFO"

    goto :goto_0

    :cond_1
    const-string v5, "WARNING"

    :goto_0
    const-string v6, "severity"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "line"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "charStart"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "charEnd"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->getProblemOptionKey(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v4, "optionKey"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v3, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getProblemCategory(II)I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "categoryID"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v1, "problem"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v4, v2, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->extractContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    const-string v4, "arguments"

    invoke-direct {p0, v4, v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :goto_1
    if-lt v3, p2, :cond_3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    aget-object v6, p1, v3

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "argument"

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6, v2, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    return-void
.end method

.method private logXmlTask(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "line"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "charStart"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "charEnd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->getProblemOptionKey(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v2, "optionKey"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 v1, 0x0

    const-string v2, "task"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v1, "value"

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v3, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->extractContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    return-void
.end method

.method private printErr(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->err:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private printOut(C)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method private printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 v3, 0x1

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZZ)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private printlnErr()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->err:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method

.method private printlnErr(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->err:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private printlnOut(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startLoggingExtraProblems(I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "problems"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "extra_problems"

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    return-void
.end method

.method private startLoggingProblems(III)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    add-int v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "problems"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "errors"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "warnings"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "infos"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, v2, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    return-void
.end method


# virtual methods
.method public buildFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-char v0, Ljava/io/File;->separatorChar:C

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance p1, Ljava/util/StringTokenizer;

    invoke-direct {p1, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "compiler"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void
.end method

.method public compiling()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v1, "progress.compiling"

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    return-void
.end method

.method public endLoggingSource()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "source"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoggingSources()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "sources"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoggingTasks()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "tasks"

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->err:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public logAverage()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->maxRepetition:I

    add-int/lit8 v4, v1, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-wide v9, v5

    move-wide v11, v9

    move-wide v13, v11

    move v15, v7

    move-wide v7, v13

    :goto_0
    if-lt v15, v4, :cond_1

    add-int/lit8 v1, v1, -0x2

    move-wide/from16 v16, v2

    int-to-long v1, v1

    div-long/2addr v5, v1

    div-long/2addr v7, v1

    div-long/2addr v9, v1

    div-long/2addr v11, v1

    div-long/2addr v13, v1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v18, v13

    move-wide/from16 v13, v16

    long-to-double v13, v13

    const-wide v15, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v13, v15

    long-to-double v4, v5

    div-double/2addr v13, v4

    double-to-int v6, v13

    int-to-double v13, v6

    const-wide/high16 v15, 0x4024000000000000L    # 10.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "compile.averageTime"

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    long-to-double v2, v7

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    long-to-double v2, v9

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    long-to-double v2, v11

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-wide/from16 v13, v18

    long-to-double v2, v13

    mul-double/2addr v2, v6

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v2, v2

    div-double/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v27

    filled-new-array/range {v20 .. v27}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "compile.detailedTime"

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move/from16 v16, v1

    move-wide/from16 v28, v2

    move-wide v2, v13

    move-wide/from16 v13, v28

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->compilerStats:[Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->elapsedTime()J

    move-result-wide v17

    add-long v5, v5, v17

    move/from16 v17, v4

    move-wide/from16 v18, v5

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    add-long/2addr v7, v4

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    add-long/2addr v9, v4

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    add-long/2addr v11, v4

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    add-long v1, v2, v4

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    move-wide/from16 v5, v18

    move-wide/from16 v28, v1

    move/from16 v1, v16

    move-wide v2, v13

    move-wide/from16 v13, v28

    goto/16 :goto_0
.end method

.method public logClassFile(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->buildFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-char p1, Ljava/io/File;->separatorChar:C

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr p1, v1

    invoke-virtual {p3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    invoke-virtual {p3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v2, "path"

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "classfile"

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logNoClassFileCreated(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public logClasspath([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    array-length v0, p1

    if-eqz v0, :cond_6

    const-string v2, "classpaths"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :goto_0
    if-lt v4, v0, :cond_1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    aget-object v5, p1, v4

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v7, "path"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/util/Util;->archiveFormat(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "FILE"

    goto :goto_1

    :cond_2
    const-string v5, "JAR"

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "FOLDER"

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_5

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v7, "id"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "classpath"

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v5, v6, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public logCommandLineArguments([Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const-string v3, "command_line"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :goto_0
    if-lt v4, v0, :cond_1

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v5, "value"

    aget-object v6, p1, v4

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "argument"

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v2, v5, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public logException(Ljava/lang/Exception;)V
    .locals 7

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x4

    if-lt v4, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v4, "message"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exception"

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v1, v3, v2, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public logIncorrectVMVersionForAnnotationProcessing()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, "configure.incorrectVMVersionforAPT"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    return-void
.end method

.method public logNoClassFileCreated(Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, "output.noClassFileCreated"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, p2, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    return-void
.end method

.method public logNumberOfClassFilesGenerated(I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number_of_classfiles"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v0, "compile.oneClassFileGenerated"

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v1, "compile.severalClassFilesGenerated"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logOptions(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v2, "options"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger$1;-><init>(Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, p1

    :goto_0
    if-lt v3, v0, :cond_0

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v7, "key"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v6, "value"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "option"

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v4, v5, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public logPendingError(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    return-void
.end method

.method public logProblems([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[CLorg/eclipse/jdt/internal/compiler/batch/Main;)I
    .locals 12

    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const v9, 0x200001c2

    if-lt v2, v0, :cond_6

    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    add-int p3, v4, v5

    add-int/2addr p3, v6

    if-eqz p3, :cond_2

    invoke-direct {p0, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->startLoggingProblems(III)V

    move p3, v1

    :goto_1
    if-lt p3, v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingProblems()V

    goto :goto_2

    :cond_0
    aget-object v2, p1, p3

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v3

    if-eq v3, v9, :cond_1

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logXmlProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v8, :cond_5

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->startLoggingTasks(I)V

    :goto_3
    if-lt v1, v0, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingTasks()V

    goto :goto_4

    :cond_3
    aget-object p3, p1, v1

    if-eqz p3, :cond_4

    invoke-interface {p3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v2

    if-ne v2, v9, :cond_4

    invoke-direct {p0, p3, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logXmlTask(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;[C)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move v1, v7

    goto :goto_6

    :cond_6
    aget-object v10, p1, v2

    if-eqz v10, :cond_a

    iget v11, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    invoke-direct {p0, v10, v3, v11, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II[C)V

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v10}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    iget v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    goto :goto_5

    :cond_7
    invoke-interface {v10}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v11

    if-ne v11, v9, :cond_8

    iget v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalTasksCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalTasksCount:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iget v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p3, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    add-int/lit8 v5, v5, 0x1

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_6
    return v1
.end method

.method public logProblemsSummary(IIIII)V
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "problems"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errors"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "warnings"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "infos"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tasks"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "problem_summary"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    const-string v0, "compile.oneWarning"

    const-string v2, "compile.oneInfo"

    const-string v3, "compile.oneError"

    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p4, v1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string p3, "compile.oneProblem"

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const-string v4, "compile.severalErrors"

    const/4 v5, 0x0

    if-lez p2, :cond_5

    if-ne p2, v1, :cond_4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v6, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_1
    add-int/2addr p5, p3

    const-string v6, "compile.severalWarnings"

    if-lez p5, :cond_7

    if-ne p5, v1, :cond_6

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v5

    :goto_2
    if-ne p4, v1, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    if-le p4, v1, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v5, "compile.severalInfos"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_9
    :goto_3
    if-eq p1, p4, :cond_e

    if-eq p1, p2, :cond_e

    if-ne p1, p3, :cond_a

    goto :goto_4

    :cond_a
    if-nez p4, :cond_b

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v3, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "compile.severalProblemsErrorsAndWarnings"

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    if-nez v3, :cond_c

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v4, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_c
    if-nez v0, :cond_d

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v6, p3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v3, v0, v5}, [Ljava/lang/String;

    move-result-object p1

    const-string p3, "compile.severalProblems"

    invoke-virtual {p2, p3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    if-eqz v0, :cond_10

    move-object v3, v0

    goto :goto_5

    :cond_10
    move-object v3, v5

    :goto_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string p3, "compile.severalProblemsErrorsOrWarnings"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printErr(Ljava/lang/String;)V

    :goto_6
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/2addr p1, v1

    if-nez p1, :cond_11

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr()V

    :cond_11
    return-void
.end method

.method public logProgress()V
    .locals 1

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printOut(C)V

    return-void
.end method

.method public logRepetition(II)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "compile.repetition"

    invoke-virtual {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    return-void
.end method

.method public logTiming(Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->elapsedTime()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "time"

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {v0, v6, v8, v7, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "number_of_lines"

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {v0, v6, v8, v7, v7}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    long-to-double v4, v4

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v11

    long-to-double v11, v2

    div-double/2addr v4, v11

    double-to-int v4, v4

    int-to-double v4, v4

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v9, v10, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "compile.instantTime"

    invoke-virtual {v6, v5, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "compile.totalTime"

    invoke-virtual {v4, v6, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    :goto_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget v5, v4, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    long-to-double v5, v5

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v10

    long-to-double v2, v2

    div-double/2addr v5, v2

    double-to-int v5, v5

    int-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v12, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    long-to-double v12, v12

    mul-double/2addr v12, v10

    div-double/2addr v12, v2

    double-to-int v12, v12

    int-to-double v12, v12

    div-double/2addr v12, v7

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    long-to-double v14, v14

    mul-double/2addr v14, v10

    div-double/2addr v14, v2

    double-to-int v14, v14

    int-to-double v14, v14

    div-double/2addr v14, v7

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v0, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    long-to-double v0, v0

    mul-double/2addr v0, v10

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    move-object v10, v5

    move-object v11, v6

    move-object v15, v7

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "compile.detailedTime"

    invoke-virtual {v4, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-void
.end method

.method public logUnavaibleAPT(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, "configure.unavailableAPT"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "error"

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    return-void
.end method

.method public logUsage(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    return-void
.end method

.method public logVersion(Z)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    const-string v1, "compiler.copyright"

    const-string v2, "compiler.version"

    const-string v3, "compiler.name"

    const-string v4, "misc.version"

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    :goto_0
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "warning"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v2, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnOut(Ljava/lang/String;)V

    return-void
.end method

.method public logWrongJDK()V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, "configure.requiresJDK1.2orAbove"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ERROR"

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v3, v1, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printlnErr(Ljava/lang/String;)V

    return-void
.end method

.method public loggingExtraProblems(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V
    .locals 10

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->extraProblems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-lt v3, v1, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    add-int/2addr v5, v6

    add-int/2addr v5, v7

    if-eqz v5, :cond_6

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->startLoggingExtraProblems(I)V

    :goto_1
    if-lt v2, v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endLoggingExtraProblems()V

    goto :goto_3

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v5

    const v6, 0x200001c2

    if-eq v5, v6, :cond_1

    iget v5, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    invoke-direct {p0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logXmlExtraProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v8, :cond_5

    iget v9, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    invoke-direct {p0, v8, v4, v9}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logExtraProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;II)V

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v8}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v5, v5, 0x1

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->isInfo()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    add-int/lit8 v6, v6, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public printNewLine()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public printStats()V
    .locals 11

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->timing:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/2addr v3, v1

    const-string v4, "stats"

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->batchCompiler:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v5, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->startTime:J

    iput-wide v5, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->endTime:J

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logTiming(Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;)V

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget v6, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalProblemsCount:I

    if-lez v6, :cond_3

    iget v7, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalErrorsCount:I

    iget v8, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalWarningsCount:I

    iget v9, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalInfoCount:I

    iget v10, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->globalTasksCount:I

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logProblemsSummary(IIIII)V

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->exportedClassFilesCounter:I

    if-eqz v3, :cond_5

    iget-boolean v5, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->showProgress:Z

    if-nez v5, :cond_4

    if-nez v0, :cond_4

    iget-boolean v0, v2, Lorg/eclipse/jdt/internal/compiler/batch/Main;->verbose:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->logNumberOfClassFilesGenerated(I)V

    :cond_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->endTag(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setEmacs()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    const-string v5, "# "

    const/4 v6, 0x0

    if-eq v2, v4, :cond_1

    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<!-- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    const-string v1, "<!DOCTYPE compiler PUBLIC \"-//Eclipse.org//DTD Eclipse JDT 3.2.006 Compiler//EN\" \"http://www.eclipse.org/jdt/core/compiler_32_006.dtd\">"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v1, "name"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v4, "compiler.name"

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v1, "version"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v4, "compiler.version"

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v1, "copyright"

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v4, "compiler.copyright"

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "compiler"

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v3, v6}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->log:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v3, "configure.cannotOpenLogInvalidEncoding"

    invoke-virtual {v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    const-string v3, "configure.cannotOpenLog"

    invoke-virtual {v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/batch/Main;->bind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startLoggingSource(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const-string v4, "path"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->packageName:[[C

    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "package"

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/batch/CompilationUnit;->destinationPath:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->main:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/batch/Main;->destinationPath:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "none"

    if-eq p1, v0, :cond_4

    sget-char v0, Ljava/io/File;->separatorChar:C

    const-string v2, "output"

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 v0, 0x0

    const-string v2, "source"

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_5
    return-void
.end method

.method public startLoggingSources()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "sources"

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    return-void
.end method

.method public startLoggingTasks(I)V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->tagBits:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "tasks"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->parameters:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/compiler/batch/Main$Logger;->printTag(Ljava/lang/String;Ljava/util/HashMap;ZZ)V

    :cond_0
    return-void
.end method
