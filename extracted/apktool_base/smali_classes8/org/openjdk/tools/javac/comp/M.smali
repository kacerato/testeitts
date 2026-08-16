.class public final synthetic Lorg/openjdk/tools/javac/comp/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Check;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/M;->b:Lorg/openjdk/tools/javac/comp/Check;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/M;->c:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/M;->b:Lorg/openjdk/tools/javac/comp/Check;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/M;->c:Z

    check-cast p1, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Check;->m(Lorg/openjdk/tools/javac/comp/Check;ZLorg/openjdk/tools/javac/code/Attribute;)Z

    move-result p1

    return p1
.end method
