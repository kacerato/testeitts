.class Lorg/eclipse/jdt/internal/core/JavaProject$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$INodeChangeListener;


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

.field private final synthetic val$eclipsePreferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$2;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProject$2;->val$eclipsePreferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public added(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;)V
    .locals 0

    return-void
.end method

.method public removed(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;)V
    .locals 1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$NodeChangeEvent;->getChild()Lorg/osgi/service/prefs/Preferences;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$2;->val$eclipsePreferences:Lorg/eclipse/core/runtime/preferences/IEclipsePreferences;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$2;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->resetProjectPreferences(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    :cond_0
    return-void
.end method
