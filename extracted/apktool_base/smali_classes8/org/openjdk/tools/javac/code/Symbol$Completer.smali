.class public interface abstract Lorg/openjdk/tools/javac/code/Symbol$Completer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Completer"
.end annotation


# static fields
.field public static final NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$Completer$1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Symbol$Completer$1;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void
.end method


# virtual methods
.method public abstract complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation
.end method

.method public isTerminal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
