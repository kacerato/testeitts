.class public final synthetic Lorg/openjdk/tools/javac/comp/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Annotate;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/n;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/n;->c:Lorg/openjdk/tools/javac/util/List;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/n;->d:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/n;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/n;->c:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/n;->d:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Annotate;->b(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method
