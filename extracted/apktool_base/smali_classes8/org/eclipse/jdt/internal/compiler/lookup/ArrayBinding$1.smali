.class Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->getCloneMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

.field private final synthetic val$originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;->val$originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public signature(Lorg/eclipse/jdt/internal/compiler/ClassFile;)[C
    .locals 0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding$1;->val$originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object p1

    return-object p1
.end method
