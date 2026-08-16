.class Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/IRestrictedAccessTypeRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findExactTypes([CZILorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

.field private final synthetic val$excludePath:Ljava/lang/String;

.field private final synthetic val$findMembers:Z

.field private final synthetic val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;Ljava/lang/String;ZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$excludePath:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$findMembers:Z

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptType(I[C[C[[CLjava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$excludePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    iget-boolean p5, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$findMembers:Z

    if-nez p5, :cond_1

    if-eqz p4, :cond_1

    array-length p5, p4

    if-lez p5, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$2;->val$storage:Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jdt/internal/codeassist/ISearchRequestor;->acceptType([C[C[[CILorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    return-void
.end method
