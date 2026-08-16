.class Lorg/eclipse/jdt/internal/compiler/ClassFile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ClassFile;->generateMissingTypesAttribute()V
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile$2;->this$0:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->compareTo([C[C)I

    move-result p1

    return p1
.end method
