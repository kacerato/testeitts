.class Lorg/eclipse/jdt/internal/core/JavaProject$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;->getEclipsePreferences()Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$3;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preferenceChange(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    const-string v1, "org.eclipse.jdt.core"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "org.eclipse.jdt.core.builder.cleanOutputFolder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.builder.duplicateResourceTask"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.builder.invalidClasspath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.classpath.exclusionPatterns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.classpath.multipleOutputLocations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.incompleteClasspath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.circularClasspath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.classpath.outputOverlappingAnotherSource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.incompatibleJDKLevel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.classpath.mainOnlyProjectHasTestOnlyDependency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "org.eclipse.jdt.core.compiler.codegen.targetPlatform"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->deltaState:Lorg/eclipse/jdt/internal/core/DeltaProcessingState;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$3;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/core/DeltaProcessingState;->addClasspathValidation(Lorg/eclipse/jdt/internal/core/JavaProject;)Lorg/eclipse/jdt/internal/core/ClasspathValidation;

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$3;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetProjectOptions(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$3;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->resetCaches()V

    :cond_2
    return-void
.end method
