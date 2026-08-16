.class Lorg/eclipse/jdt/internal/core/JavaModelManager$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->secondaryTypesSearching(Lorg/eclipse/jdt/core/IJavaProject;ZLorg/eclipse/core/runtime/IProgressMonitor;Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$secondaryTypesSearch:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$17;->val$secondaryTypesSearch:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$17;->val$secondaryTypesSearch:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    const/4 p4, 0x3

    invoke-direct {p2, p4}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p3}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$17;->val$secondaryTypesSearch:Ljava/util/Hashtable;

    invoke-virtual {p3, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
