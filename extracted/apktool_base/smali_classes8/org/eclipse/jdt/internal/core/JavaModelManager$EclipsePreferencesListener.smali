.class public Lorg/eclipse/jdt/internal/core/JavaModelManager$EclipsePreferencesListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EclipsePreferencesListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preferenceChange(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const-string v1, "org.eclipse.jdt.core.classpathVariable."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v1

    iget-object v4, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablesWithInitializer:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, v1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->variablesWithInitializer:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInstancePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "##<cp entry ignore>##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/eclipse/core/runtime/Path;

    invoke-direct {v1, p1}, Lorg/eclipse/core/runtime/Path;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    :try_start_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/eclipse/core/runtime/IPath;

    aput-object v1, v5, v2

    invoke-direct {p1, v4, v5, v2}, Lorg/eclipse/jdt/internal/core/SetVariablesOperation;-><init>([Ljava/lang/String;[Lorg/eclipse/core/runtime/IPath;Z)V

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->runOperation(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not set classpath variable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "org.eclipse.jdt.core.classpathContainer."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->recreatePersistedContainer(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "org.eclipse.jdt.core.builder.cleanOutputFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.builder.duplicateResourceTask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.builder.invalidClasspath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, "org.eclipse.jdt.core.userLibrary."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getUserLibraryManager()Lorg/eclipse/jdt/internal/core/UserLibraryManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/core/UserLibraryManager;->updateUserLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/eclipse/core/resources/IProject;

    array-length v4, v0

    move v5, v2

    :goto_2
    if-lt v5, v4, :cond_7

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->touchProjects([Lorg/eclipse/core/resources/IProject;Lorg/eclipse/core/runtime/IProgressMonitor;)V

    goto :goto_3

    :cond_7
    aget-object v6, v0, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object v7

    aput-object v7, v1, v5

    iget-object v7, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;
    :try_end_1
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_1
    :cond_8
    :goto_3
    :try_start_2
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProjects()[Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    array-length v0, p1

    :goto_4
    if-lt v2, v0, :cond_9

    goto :goto_5

    :cond_9
    aget-object v1, p1, v2

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_2
    :goto_5
    return-void
.end method
