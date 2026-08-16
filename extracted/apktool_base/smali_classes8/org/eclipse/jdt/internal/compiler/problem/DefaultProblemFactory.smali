.class public Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/IProblemFactory;


# static fields
.field private static DEFAULT_LOCALE_TEMPLATES:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

.field private static final DOUBLE_QUOTES:[C

.field private static final FIRST_ARGUMENT:[C

.field private static final SINGLE_QUOTE:[C


# instance fields
.field private locale:Ljava/util/Locale;

.field public messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->DOUBLE_QUOTES:[C

    const-string v0, "\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->SINGLE_QUOTE:[C

    const-string v0, "{0}"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->FIRST_ARGUMENT:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private static final keyFromID(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static loadMessageTemplates(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;
    .locals 6

    const-string v0, "org.eclipse.jdt.internal.compiler.problem.messages"

    :try_start_0
    invoke-static {v0, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    const/16 p0, 0x2bc

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    :catch_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->keyFromID(I)I

    move-result v0

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Missing resource : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".properties for locale "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createProblem([CI[Ljava/lang/String;I[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 12

    .line 4
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    move-object v11, p0

    move v3, p2

    move/from16 v0, p4

    move-object/from16 v1, p5

    .line 5
    invoke-virtual {p0, p2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->getLocalizedMessage(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 6
    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;-><init>([CLjava/lang/String;I[Ljava/lang/String;IIIII)V

    return-object v10
.end method

.method public createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 12

    .line 1
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    move-object v11, p0

    move v3, p2

    move-object/from16 v0, p4

    .line 2
    invoke-virtual {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->getLocalizedMessage(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v10

    move-object v1, p1

    move-object v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 3
    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;-><init>([CLjava/lang/String;I[Ljava/lang/String;IIIII)V

    return-object v10
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getLocalizedMessage(II[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    const v1, 0x3fffff

    and-int/2addr v1, p1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->keyFromID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    const-string v2, ". Check compiler resources."

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to retrieve the error message for problem id: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    if-eqz p2, :cond_2

    .line 8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->keyFromID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unable to retrieve the error message elaboration for elaboration id: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->FIRST_ARGUMENT:[C

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[C[C)[C

    move-result-object v0

    .line 13
    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->DOUBLE_QUOTES:[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->SINGLE_QUOTE:[C

    invoke-static {v0, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([C[C[C)[C

    move-result-object p2

    if-nez p3, :cond_3

    .line 14
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 15
    :cond_3
    array-length v0, p2

    const/high16 v2, -0x80000000

    and-int/2addr p1, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0xa

    array-length v4, p3

    mul-int/lit8 v4, v4, 0x14

    add-int/2addr v3, v4

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 17
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    const/16 v4, 0x202

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->keyFromID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x7b

    .line 18
    invoke-static {v3, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_7

    if-nez p1, :cond_5

    .line 19
    new-instance p1, Ljava/lang/StringBuffer;

    array-length v5, p3

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v5, v0

    invoke-direct {p1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_5
    sub-int v5, v3, v2

    .line 20
    invoke-virtual {p1, p2, v2, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x7d

    .line 21
    invoke-static {v5, p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v5

    if-le v5, v4, :cond_6

    sub-int v3, v5, v3

    add-int/lit8 v4, v3, -0x1

    .line 22
    :try_start_0
    invoke-static {p2, v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->parseInt([CII)I

    move-result v4

    aget-object v4, p3, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot bind message for problem (id: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ") \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p2, "\" with arguments: {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/util/Util;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    :catch_1
    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {p1, p2, v3, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 33
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_8
    sub-int/2addr v0, v2

    .line 34
    invoke-virtual {p1, p2, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 35
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLocalizedMessage(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->getLocalizedMessage(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final localizedMessage(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->getLocalizedMessage(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->locale:Ljava/util/Locale;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->DEFAULT_LOCALE_TEMPLATES:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->loadMessageTemplates(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    move-result-object p1

    sput-object p1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->DEFAULT_LOCALE_TEMPLATES:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->DEFAULT_LOCALE_TEMPLATES:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->loadMessageTemplates(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;->messageTemplates:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfInt;

    :goto_0
    return-void
.end method
