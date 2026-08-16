.class public Lorg/openjdk/tools/javac/util/Iterators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Iterators$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Iterators$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/Iterators;->EMPTY:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Iterators;->EMPTY:Ljava/util/Iterator;

    return-object v0
.end method

.method public static createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Ljava/util/function/Function<",
            "TI;",
            "Ljava/util/Iterator<",
            "TO;>;>;)",
            "Ljava/util/Iterator<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/util/Iterators$CompoundIterator;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static createFilterIterator(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;",
            "Ljava/util/function/Predicate<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Iterators$2;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/util/Iterators$2;-><init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V

    return-object v0
.end method
