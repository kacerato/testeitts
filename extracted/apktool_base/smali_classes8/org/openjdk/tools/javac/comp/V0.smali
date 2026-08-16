.class public final synthetic Lorg/openjdk/tools/javac/comp/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/V0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    return-void
.end method


# virtual methods
.method public final complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/V0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->i(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method
