.class public Lorg/openjdk/tools/javac/code/Types$TypeMapping;
.super Lorg/openjdk/tools/javac/code/Types$MapVisitor;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeMapping"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/tools/javac/code/Types$MapVisitor<",
        "TS;>;",
        "Ljava/util/function/Function<",
        "Lorg/openjdk/tools/javac/code/Type;",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Types$TypeMapping;Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->lambda$visit$0(Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$visit$0(Ljava/lang/Object;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->apply(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MapVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;TS;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/code/Y;

    invoke-direct {v0, p0, p2}, Lorg/openjdk/tools/javac/code/Y;-><init>(Lorg/openjdk/tools/javac/code/Types$TypeMapping;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$TypeMapping;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$CapturedType;",
            "TS;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
