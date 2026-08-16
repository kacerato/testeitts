.class Lorg/eclipse/jdt/internal/core/SetContainerOperation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/Util$Displayable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SetContainerOperation;->verbose_set_container()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SetContainerOperation;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SetContainerOperation;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SetContainerOperation$1;->this$0:Lorg/eclipse/jdt/internal/core/SetContainerOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/core/IJavaProject;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
