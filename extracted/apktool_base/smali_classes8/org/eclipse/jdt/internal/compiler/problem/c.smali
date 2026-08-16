.class public final synthetic Lorg/eclipse/jdt/internal/compiler/problem/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/c;->b:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/c;->b:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->b(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method
