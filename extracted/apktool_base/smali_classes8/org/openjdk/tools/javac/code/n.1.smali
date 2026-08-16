.class public final synthetic Lorg/openjdk/tools/javac/code/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/n;->b:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/n;->c:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/n;->b:Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/n;->c:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;->c(Lorg/openjdk/tools/javac/code/Scope$FilterImportScope;Lorg/openjdk/tools/javac/util/List;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
