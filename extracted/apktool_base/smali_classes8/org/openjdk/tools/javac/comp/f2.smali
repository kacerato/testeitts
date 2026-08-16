.class public final synthetic Lorg/openjdk/tools/javac/comp/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$RecoveryLoadClass;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve;->c(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
