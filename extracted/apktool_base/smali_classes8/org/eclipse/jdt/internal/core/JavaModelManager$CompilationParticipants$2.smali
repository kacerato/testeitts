.class Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/util/Util$Comparer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;->sortParticipants(Ljava/util/ArrayList;[Lorg/eclipse/core/runtime/IConfigurationElement;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants$2;->this$1:Lorg/eclipse/jdt/internal/core/JavaModelManager$CompilationParticipants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    check-cast p1, Lorg/eclipse/core/runtime/IConfigurationElement;

    const-string v1, "id"

    invoke-interface {p1, v1}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    if-nez p1, :cond_1

    return v2

    :cond_1
    check-cast p2, Lorg/eclipse/core/runtime/IConfigurationElement;

    const-string v3, "requires"

    invoke-interface {p2, v3}, Lorg/eclipse/core/runtime/IConfigurationElement;->getChildren(Ljava/lang/String;)[Lorg/eclipse/core/runtime/IConfigurationElement;

    move-result-object p2

    array-length v3, p2

    :goto_0
    if-lt v0, v3, :cond_2

    return v2

    :cond_2
    aget-object v4, p2, v0

    invoke-interface {v4, v1}, Lorg/eclipse/core/runtime/IConfigurationElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
