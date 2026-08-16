.class public final synthetic Lorg/openjdk/tools/javac/comp/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Resolve;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/c2;->b:Lorg/openjdk/tools/javac/comp/Resolve;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/c2;->c:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/c2;->b:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/c2;->c:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->e(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
