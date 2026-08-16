.class Lorg/eclipse/jdt/internal/compiler/ClassFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAttributes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ClassFile;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile$1;->this$0:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ClassFile;->innerClassesBindings:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result p1

    return p1
.end method
