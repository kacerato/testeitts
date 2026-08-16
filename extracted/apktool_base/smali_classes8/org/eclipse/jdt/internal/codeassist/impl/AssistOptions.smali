.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISABLED:Ljava/lang/String; = "disabled"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final OPTION_ArgumentPrefixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.argumentPrefixes"

.field public static final OPTION_ArgumentSuffixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.argumentSuffixes"

.field public static final OPTION_CamelCaseMatch:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

.field public static final OPTION_FieldPrefixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.fieldPrefixes"

.field public static final OPTION_FieldSuffixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.fieldSuffixes"

.field public static final OPTION_ForceImplicitQualification:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification"

.field public static final OPTION_LocalPrefixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.localPrefixes"

.field public static final OPTION_LocalSuffixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.localSuffixes"

.field public static final OPTION_PerformDeprecationCheck:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.deprecationCheck"

.field public static final OPTION_PerformDiscouragedReferenceCheck:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck"

.field public static final OPTION_PerformForbiddenReferenceCheck:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck"

.field public static final OPTION_PerformVisibilityCheck:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.visibilityCheck"

.field public static final OPTION_StaticFieldPrefixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes"

.field public static final OPTION_StaticFieldSuffixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes"

.field public static final OPTION_StaticFinalFieldPrefixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes"

.field public static final OPTION_StaticFinalFieldSuffixes:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes"

.field public static final OPTION_SubstringMatch:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.substringMatch"

.field public static final OPTION_SuggestStaticImports:Ljava/lang/String; = "org.eclipse.jdt.core.codeComplete.suggestStaticImports"


# instance fields
.field public argumentPrefixes:[[C

.field public argumentSuffixes:[[C

.field public camelCaseMatch:Z

.field public checkDeprecation:Z

.field public checkDiscouragedReference:Z

.field public checkForbiddenReference:Z

.field public checkVisibility:Z

.field public fieldPrefixes:[[C

.field public fieldSuffixes:[[C

.field public forceImplicitQualification:Z

.field public localPrefixes:[[C

.field public localSuffixes:[[C

.field public staticFieldPrefixes:[[C

.field public staticFieldSuffixes:[[C

.field public staticFinalFieldPrefixes:[[C

.field public staticFinalFieldSuffixes:[[C

.field public substringMatch:Z

.field public suggestStaticImport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkVisibility:Z

    .line 3
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDeprecation:Z

    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkForbiddenReference:Z

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDiscouragedReference:Z

    .line 6
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->forceImplicitQualification:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->camelCaseMatch:Z

    .line 8
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->substringMatch:Z

    .line 9
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->suggestStaticImport:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    .line 11
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    .line 12
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    .line 13
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    .line 14
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    .line 15
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    .line 16
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    .line 17
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    .line 18
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    .line 19
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkVisibility:Z

    .line 22
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDeprecation:Z

    .line 23
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkForbiddenReference:Z

    .line 24
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDiscouragedReference:Z

    .line 25
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->forceImplicitQualification:Z

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->camelCaseMatch:Z

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->substringMatch:Z

    .line 28
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->suggestStaticImport:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    .line 30
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    .line 31
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    .line 32
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    .line 33
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    .line 34
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    .line 35
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    .line 36
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    .line 37
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    .line 38
    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->set(Ljava/util/Map;)V

    return-void
.end method

.method private splitAndTrimOn(C[C)[[C
    .locals 5

    const/16 p1, 0x2c

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitAndTrimOn(C[C)[[C

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-lt v1, p2, :cond_1

    if-eq v2, p2, :cond_0

    new-array p2, v2, [[C

    invoke-static {p1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    :cond_0
    return-object p1

    :cond_1
    aget-object v3, p1, v1

    array-length v4, v3

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    aput-object v3, p1, v2

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public set(Ljava/util/Map;)V
    .locals 8

    const-string v0, "org.eclipse.jdt.core.codeComplete.visibilityCheck"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "disabled"

    const/4 v3, 0x1

    const-string v4, "enabled"

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkVisibility:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkVisibility:Z

    :cond_1
    :goto_0
    const-string v0, "org.eclipse.jdt.core.codeComplete.forceImplicitQualification"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->forceImplicitQualification:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->forceImplicitQualification:Z

    :cond_3
    :goto_1
    const-string v0, "org.eclipse.jdt.core.codeComplete.fieldPrefixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x2c

    if-eqz v0, :cond_5

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    goto :goto_2

    :cond_4
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldPrefixes:[[C

    :cond_5
    :goto_2
    const-string v0, "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    goto :goto_3

    :cond_6
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldPrefixes:[[C

    :cond_7
    :goto_3
    const-string v0, "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_9

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    goto :goto_4

    :cond_8
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldPrefixes:[[C

    :cond_9
    :goto_4
    const-string v0, "org.eclipse.jdt.core.codeComplete.localPrefixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_b

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    goto :goto_5

    :cond_a
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localPrefixes:[[C

    :cond_b
    :goto_5
    const-string v0, "org.eclipse.jdt.core.codeComplete.argumentPrefixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    goto :goto_6

    :cond_c
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentPrefixes:[[C

    :cond_d
    :goto_6
    const-string v0, "org.eclipse.jdt.core.codeComplete.fieldSuffixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    goto :goto_7

    :cond_e
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->fieldSuffixes:[[C

    :cond_f
    :goto_7
    const-string v0, "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_11

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    goto :goto_8

    :cond_10
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFieldSuffixes:[[C

    :cond_11
    :goto_8
    const-string v0, "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_13

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    goto :goto_9

    :cond_12
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->staticFinalFieldSuffixes:[[C

    :cond_13
    :goto_9
    const-string v0, "org.eclipse.jdt.core.codeComplete.localSuffixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_15

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    goto :goto_a

    :cond_14
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->localSuffixes:[[C

    :cond_15
    :goto_a
    const-string v0, "org.eclipse.jdt.core.codeComplete.argumentSuffixes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->splitAndTrimOn(C[C)[[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    goto :goto_b

    :cond_16
    iput-object v5, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->argumentSuffixes:[[C

    :cond_17
    :goto_b
    const-string v0, "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkForbiddenReference:Z

    goto :goto_c

    :cond_18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkForbiddenReference:Z

    :cond_19
    :goto_c
    const-string v0, "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDiscouragedReference:Z

    goto :goto_d

    :cond_1a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDiscouragedReference:Z

    :cond_1b
    :goto_d
    const-string v0, "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->camelCaseMatch:Z

    goto :goto_e

    :cond_1c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->camelCaseMatch:Z

    :cond_1d
    :goto_e
    const-string v0, "org.eclipse.jdt.core.codeComplete.substringMatch"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->substringMatch:Z

    goto :goto_f

    :cond_1e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->substringMatch:Z

    :cond_1f
    :goto_f
    const-string v0, "org.eclipse.jdt.core.codeComplete.deprecationCheck"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDeprecation:Z

    goto :goto_10

    :cond_20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->checkDeprecation:Z

    :cond_21
    :goto_10
    const-string v0, "org.eclipse.jdt.core.codeComplete.suggestStaticImports"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->suggestStaticImport:Z

    goto :goto_11

    :cond_22
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistOptions;->suggestStaticImport:Z

    :cond_23
    :goto_11
    return-void
.end method
