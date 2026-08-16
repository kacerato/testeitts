.class public Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;
.super Lorg/eclipse/core/runtime/preferences/PreferenceModifyListener;
.source "SourceFile"


# static fields
.field static PREFIX_LENGTH:I = 0x28


# instance fields
.field javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/core/runtime/preferences/PreferenceModifyListener;-><init>()V

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModel()Lorg/eclipse/jdt/internal/core/JavaModel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    return-void
.end method


# virtual methods
.method public cleanJavaCore(Lorg/osgi/service/prefs/Preferences;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lorg/osgi/service/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    const-string v4, "org.eclipse.jdt.core.classpathContainer."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->isJavaProjectAccessible(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {p1, v3}, Lorg/osgi/service/prefs/Preferences;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method

.method public isJavaProjectAccessible(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x7c

    sget v1, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->PREFIX_LENGTH:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sget v1, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->PREFIX_LENGTH:I

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->javaModel:Lorg/eclipse/jdt/internal/core/JavaModel;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModel;->getJavaProject(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaProject;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public preApply(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;
    .locals 4

    const-string v0, "org.eclipse.jdt.core"

    const-string v1, "instance"

    const-string v2, "/"

    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;->node(Ljava/lang/String;)Lorg/osgi/service/prefs/Preferences;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, v1}, Lorg/osgi/service/prefs/Preferences;->nodeExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v1}, Lorg/osgi/service/prefs/Preferences;->node(Ljava/lang/String;)Lorg/osgi/service/prefs/Preferences;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/osgi/service/prefs/Preferences;->nodeExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lorg/osgi/service/prefs/Preferences;->node(Ljava/lang/String;)Lorg/osgi/service/prefs/Preferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaCorePreferenceModifyListener;->cleanJavaCore(Lorg/osgi/service/prefs/Preferences;)V
    :try_end_0
    .catch Lorg/osgi/service/prefs/BackingStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/core/runtime/preferences/PreferenceModifyListener;->preApply(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object p1

    return-object p1
.end method
