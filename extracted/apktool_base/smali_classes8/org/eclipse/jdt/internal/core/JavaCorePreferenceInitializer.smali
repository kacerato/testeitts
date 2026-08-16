.class public Lorg/eclipse/jdt/internal/core/JavaCorePreferenceInitializer;
.super Lorg/eclipse/core/runtime/preferences/AbstractPreferenceInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/core/runtime/preferences/AbstractPreferenceInitializer;-><init>()V

    return-void
.end method

.method private initializeDeprecatedOptions()V
    .locals 10

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deprecatedOptions:Ljava/util/Map;

    const-string v1, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package"

    const-string v2, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type"

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field"

    const-string v4, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_member"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable"

    const-string v8, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter"

    const-string v3, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field"

    const-string v4, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method"

    const-string v5, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package"

    const-string v6, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.insert_new_line_after_annotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.alignment_for_bitwise_operator"

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_logical_operator"

    const-string v3, "org.eclipse.jdt.core.formatter.alignment_for_multiplicative_operator"

    const-string v4, "org.eclipse.jdt.core.formatter.alignment_for_additive_operator"

    const-string v5, "org.eclipse.jdt.core.formatter.alignment_for_string_concatenation"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.alignment_for_binary_expression"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "org.eclipse.jdt.core.formatter.wrap_before_bitwise_operator"

    const-string v2, "org.eclipse.jdt.core.formatter.wrap_before_logical_operator"

    const-string v3, "org.eclipse.jdt.core.formatter.wrap_before_multiplicative_operator"

    const-string v4, "org.eclipse.jdt.core.formatter.wrap_before_additive_operator"

    const-string v5, "org.eclipse.jdt.core.formatter.wrap_before_string_concatenation"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.wrap_before_binary_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "org.eclipse.jdt.core.formatter.insert_space_before_bitwise_operator"

    const-string v9, "org.eclipse.jdt.core.formatter.insert_space_before_logical_operator"

    const-string v3, "org.eclipse.jdt.core.formatter.insert_space_before_multiplicative_operator"

    const-string v4, "org.eclipse.jdt.core.formatter.insert_space_before_additive_operator"

    const-string v5, "org.eclipse.jdt.core.formatter.insert_space_before_string_concatenation"

    const-string v6, "org.eclipse.jdt.core.formatter.insert_space_before_shift_operator"

    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_before_relational_operator"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.insert_space_before_binary_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "org.eclipse.jdt.core.formatter.insert_space_after_bitwise_operator"

    const-string v9, "org.eclipse.jdt.core.formatter.insert_space_after_logical_operator"

    const-string v3, "org.eclipse.jdt.core.formatter.insert_space_after_multiplicative_operator"

    const-string v4, "org.eclipse.jdt.core.formatter.insert_space_after_additive_operator"

    const-string v5, "org.eclipse.jdt.core.formatter.insert_space_after_string_concatenation"

    const-string v6, "org.eclipse.jdt.core.formatter.insert_space_after_shift_operator"

    const-string v7, "org.eclipse.jdt.core.formatter.insert_space_after_relational_operator"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.eclipse.jdt.core.formatter.insert_space_after_binary_operator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public initializeDefaultPreferences()V
    .locals 7

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionNames:Ljava/util/HashSet;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "jdt.default.test.compliance"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "org.eclipse.jdt.core.compiler.debug.localVariable"

    const-string v3, "generate"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.codegen.unusedLocal"

    const-string v3, "preserve"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.taskTags"

    const-string v3, "TODO,FIXME,XXX"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.taskPriorities"

    const-string v3, "NORMAL,HIGH,NORMAL"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.taskCaseSensitive"

    const-string v3, "enabled"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.doc.comment.support"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.compiler.problem.forbiddenReference"

    const-string v4, "error"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.builder.invalidClasspath"

    const-string v6, "abort"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.builder.duplicateResourceTask"

    const-string v6, "warning"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.builder.cleanOutputFolder"

    const-string v6, "clean"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder"

    const-string v6, "ignore"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.computeJavaBuildOrder"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.circularClasspath"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.encoding"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->getEclipseDefaultSettings()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "org.eclipse.jdt.core.javaFormatter"

    const-string v4, "org.eclipse.jdt.core.defaultJavaFormatter"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.visibilityCheck"

    const-string v4, "disabled"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.deprecationCheck"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.forceImplicitQualification"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.fieldPrefixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.localPrefixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.argumentPrefixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.fieldSuffixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.localSuffixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.argumentSuffixes"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.substringMatch"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.codeComplete.suggestStaticImports"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "chunkCacheSizeMb"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "chunkCacheSizePercent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc"

    const-string v3, "50"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/eclipse/core/runtime/preferences/DefaultScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v3, "org.eclipse.jdt.core"

    invoke-interface {v2, v3}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceInitializer;->initializeDeprecatedOptions()V

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v2, v1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
