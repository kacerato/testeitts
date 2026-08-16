.class public Lorg/openjdk/tools/javac/main/CommandLine$UnmatchedQuote;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmatchedQuote"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public final variableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/CommandLine$UnmatchedQuote;->variableName:Ljava/lang/String;

    return-void
.end method
