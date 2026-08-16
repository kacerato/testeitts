.class public final synthetic Lorg/openjdk/tools/javac/comp/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/b1;->b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/b1;->b:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
