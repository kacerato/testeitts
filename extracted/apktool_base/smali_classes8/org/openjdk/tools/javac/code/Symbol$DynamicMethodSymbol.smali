.class public Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicMethodSymbol"
.end annotation


# instance fields
.field public bsm:Lorg/openjdk/tools/javac/code/Symbol;

.field public bsmKind:I

.field public staticArgs:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/code/Type;[Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p4, p0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsm:Lorg/openjdk/tools/javac/code/Symbol;

    iput p3, p0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->bsmKind:I

    iput-object p6, p0, Lorg/openjdk/tools/javac/code/Symbol$DynamicMethodSymbol;->staticArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isDynamic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
