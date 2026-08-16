.class Lcom/android/tools/r8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/p$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ClassFileResourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/p;->b:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/tools/r8/p;->a:Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/Y3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/Y3;-><init>(Lcom/android/tools/r8/p;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/p$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/p$a;

    invoke-direct {v0}, Lcom/android/tools/r8/p$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/ClassFileResourceProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/p;->b:Ljava/util/HashSet;

    invoke-interface {p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getClassDescriptors()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/p;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public final getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/ClassFileResourceProvider;

    invoke-interface {v1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getClassDescriptors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/android/tools/r8/ClassFileResourceProvider;->getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
