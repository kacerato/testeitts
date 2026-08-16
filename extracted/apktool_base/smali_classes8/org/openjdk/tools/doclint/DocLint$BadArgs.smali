.class public Lorg/openjdk/tools/doclint/DocLint$BadArgs;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/DocLint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadArgs"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final args:[Ljava/lang/Object;

.field final code:Ljava/lang/String;

.field final synthetic this$0:Lorg/openjdk/tools/doclint/DocLint;


# direct methods
.method public varargs constructor <init>(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$BadArgs;->this$0:Lorg/openjdk/tools/doclint/DocLint;

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/doclint/DocLint;->access$000(Lorg/openjdk/tools/doclint/DocLint;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/openjdk/tools/doclint/DocLint$BadArgs;->code:Ljava/lang/String;

    iput-object p3, p0, Lorg/openjdk/tools/doclint/DocLint$BadArgs;->args:[Ljava/lang/Object;

    return-void
.end method
