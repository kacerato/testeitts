.class Lorg/eclipse/jdt/internal/core/JavaModelManager$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$IPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->startup()V
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$19;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preferenceChange(Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;)V
    .locals 1

    const-string v0, "encoding"

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/preferences/IEclipsePreferences$PreferenceChangeEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$19;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaModelManager;->optionsCache:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method
