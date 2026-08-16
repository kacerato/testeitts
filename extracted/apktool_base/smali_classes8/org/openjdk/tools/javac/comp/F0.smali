.class public final synthetic Lorg/openjdk/tools/javac/comp/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree$Tag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/F0;->b:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iput p2, p0, Lorg/openjdk/tools/javac/comp/F0;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/F0;->b:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/F0;->c:I

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-static {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Lower;->h(Lorg/openjdk/tools/javac/tree/JCTree$Tag;ILorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;)Z

    move-result p1

    return p1
.end method
