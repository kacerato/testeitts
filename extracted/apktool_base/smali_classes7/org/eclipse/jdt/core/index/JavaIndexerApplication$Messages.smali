.class final Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;
.super Lorg/eclipse/osgi/util/NLS;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/index/JavaIndexerApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field public static CaughtException:Ljava/lang/String; = null

.field public static CommandLineIndexFileNotSpecified:Ljava/lang/String; = null

.field public static CommandLineJarFileNotExist:Ljava/lang/String; = null

.field public static CommandLineJarNotSpecified:Ljava/lang/String; = null

.field public static CommandLineOnlyOneJarError:Ljava/lang/String; = null

.field public static CommandLineOnlyOneOutputError:Ljava/lang/String; = null

.field public static CommandLineOutputTakesArgs:Ljava/lang/String; = null

.field public static CommandLineProcessing:Ljava/lang/String; = null

.field public static CommandLineUsage:Ljava/lang/String; = null

.field private static final MESSAGES_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.index.messages"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jdt.core.index.messages"

    const-class v1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;

    invoke-static {v0, v1}, Lorg/eclipse/osgi/util/NLS;->initializeMessages(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/osgi/util/NLS;-><init>()V

    return-void
.end method

.method public static bind(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
