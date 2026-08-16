.class public final synthetic Lorg/openjdk/tools/javac/comp/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Modules;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/W0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/W0;->b:Lorg/openjdk/tools/javac/comp/Modules;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->r(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;)V

    return-void
.end method
