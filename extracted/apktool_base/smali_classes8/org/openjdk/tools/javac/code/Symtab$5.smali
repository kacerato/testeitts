.class Lorg/openjdk/tools/javac/code/Symtab$5;
.super Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Symtab;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symtab$5;->this$0:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public isNoModule()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
