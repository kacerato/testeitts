.class public final synthetic Lorg/openjdk/tools/javac/code/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types;ZLjava/util/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/N;->b:Lorg/openjdk/tools/javac/code/Types;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/N;->c:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/N;->d:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/N;->b:Lorg/openjdk/tools/javac/code/Types;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/code/N;->c:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/N;->d:Ljava/util/function/BiPredicate;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->d(Lorg/openjdk/tools/javac/code/Types;ZLjava/util/function/BiPredicate;)Lorg/openjdk/tools/javac/code/Types$ClosureHolder;

    move-result-object v0

    return-object v0
.end method
