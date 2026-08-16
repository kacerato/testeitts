.class public final synthetic Lorg/openjdk/tools/javac/code/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/E;->b:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/E;->b:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Symtab;->g(Lorg/openjdk/tools/javac/code/Symtab;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
