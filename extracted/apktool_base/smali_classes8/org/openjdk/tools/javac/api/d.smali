.class public final synthetic Lorg/openjdk/tools/javac/api/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/api/JavacTaskImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/d;->b:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/d;->b:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->d(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
