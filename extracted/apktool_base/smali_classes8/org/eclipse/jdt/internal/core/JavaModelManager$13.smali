.class Lorg/eclipse/jdt/internal/core/JavaModelManager$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$13;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public added(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;)V
    .locals 0

    return-void
.end method

.method public removed(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;->getChild()Lorg/osgi/service/prefs/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$13;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaModelManager;->preferencesLookup:[Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-ne p1, v2, :cond_0

    sget-object p1, Lorg/eclipse/core/runtime/preferences/DefaultScope;->INSTANCE:Lorg/eclipse/core/runtime/preferences/IScopeContext;

    const-string v2, "org.eclipse.jdt.core"

    invoke-interface {p1, v2}, Lorg/eclipse/core/runtime/preferences/IScopeContext;->getNode(Ljava/lang/String;)Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    move-result-object p1

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method
