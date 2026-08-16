.class public Lorg/openjdk/tools/javac/comp/AttrContextEnv;
.super Lorg/openjdk/tools/javac/comp/Env;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Env<",
        "Lorg/openjdk/tools/javac/comp/AttrContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/AttrContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    return-void
.end method
