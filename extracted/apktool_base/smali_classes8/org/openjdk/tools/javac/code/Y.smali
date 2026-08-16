.class public final synthetic Lorg/openjdk/tools/javac/code/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/code/Types$TypeMapping;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Y;->b:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Y;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Y;->b:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Y;->c:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->a(Lorg/openjdk/tools/javac/code/Types$TypeMapping;Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
