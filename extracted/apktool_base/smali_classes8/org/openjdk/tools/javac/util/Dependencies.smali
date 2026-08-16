.class public abstract Lorg/openjdk/tools/javac/util/Dependencies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/Dependencies$DummyDependencies;,
        Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;,
        Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;
    }
.end annotation


# static fields
.field protected static final dependenciesKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/util/Dependencies;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies;->dependenciesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies;->dependenciesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Dependencies;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies;->dependenciesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Dependencies;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$DummyDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/util/Dependencies$DummyDependencies;-><init>(Lorg/openjdk/tools/javac/util/Context;Lorg/openjdk/tools/javac/util/Dependencies$1;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract pop()V
.end method

.method public abstract push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V
.end method
