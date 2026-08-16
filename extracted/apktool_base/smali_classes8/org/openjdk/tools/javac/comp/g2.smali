.class public final synthetic Lorg/openjdk/tools/javac/comp/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/g2;->a:Lorg/openjdk/tools/javac/comp/Resolve;

    return-void
.end method


# virtual methods
.method public final loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/g2;->a:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->d(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
