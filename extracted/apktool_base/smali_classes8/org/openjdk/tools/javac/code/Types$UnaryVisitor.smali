.class public abstract Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
.super Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnaryVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/tools/javac/code/Types$SimpleVisitor<",
        "TR;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$SimpleVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")TR;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
