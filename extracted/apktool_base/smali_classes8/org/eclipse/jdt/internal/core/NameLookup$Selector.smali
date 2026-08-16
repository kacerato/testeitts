.class Lorg/eclipse/jdt/internal/core/NameLookup$Selector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/IJavaElementRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/NameLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Selector"
.end annotation


# instance fields
.field public pkgFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/IPackageFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/NameLookup;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/NameLookup;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;->this$0:Lorg/eclipse/jdt/internal/core/NameLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;->pkgFragments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptField(Lorg/eclipse/jdt/core/IField;)V
    .locals 0

    return-void
.end method

.method public acceptInitializer(Lorg/eclipse/jdt/core/IInitializer;)V
    .locals 0

    return-void
.end method

.method public acceptMemberType(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    return-void
.end method

.method public acceptMethod(Lorg/eclipse/jdt/core/IMethod;)V
    .locals 0

    return-void
.end method

.method public acceptModule(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    return-void
.end method

.method public acceptPackageFragment(Lorg/eclipse/jdt/core/IPackageFragment;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Selector;->pkgFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public acceptType(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
