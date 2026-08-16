.class public final synthetic Lorg/openjdk/tools/javac/comp/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/S0;->b:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/S0;->b:Lorg/openjdk/tools/javac/util/Name;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->f(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method
