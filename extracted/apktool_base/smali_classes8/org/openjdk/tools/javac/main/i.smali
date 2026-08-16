.class public final synthetic Lorg/openjdk/tools/javac/main/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/main/JavaCompiler;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/main/JavaCompiler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/i;->a:Lorg/openjdk/tools/javac/main/JavaCompiler;

    return-void
.end method


# virtual methods
.method public final findPackageNameOf(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/i;->a:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->a(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method
