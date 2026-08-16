.class public Lorg/openjdk/tools/javac/comp/CompileStates;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lorg/openjdk/tools/javac/comp/Env<",
        "Lorg/openjdk/tools/javac/comp/AttrContext;",
        ">;",
        "Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;",
        ">;"
    }
.end annotation


# static fields
.field protected static final compileStatesKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/CompileStates;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x192677b61e5ddcf1L


# instance fields
.field protected context:Lorg/openjdk/tools/javac/util/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/CompileStates;->compileStatesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/CompileStates;->context:Lorg/openjdk/tools/javac/util/Context;

    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates;->compileStatesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/CompileStates;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates;->compileStatesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/CompileStates;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/CompileStates;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->isAfter(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
