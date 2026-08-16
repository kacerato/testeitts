.class final Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;
.super Lorg/eclipse/osgi/util/NLS;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Messages"
.end annotation


# static fields
.field private static final BUNDLE_NAME:Ljava/lang/String; = "org.eclipse.jdt.core.formatter.messages"

.field public static CaughtException:Ljava/lang/String;

.field public static CommandLineConfigFile:Ljava/lang/String;

.field public static CommandLineDone:Ljava/lang/String;

.field public static CommandLineErrorConfig:Ljava/lang/String;

.field public static CommandLineErrorFile:Ljava/lang/String;

.field public static CommandLineErrorFileDir:Ljava/lang/String;

.field public static CommandLineErrorFileTryFullPath:Ljava/lang/String;

.field public static CommandLineErrorNoConfigFile:Ljava/lang/String;

.field public static CommandLineErrorQuietVerbose:Ljava/lang/String;

.field public static CommandLineFormatting:Ljava/lang/String;

.field public static CommandLineStart:Ljava/lang/String;

.field public static CommandLineUsage:Ljava/lang/String;

.field public static ConfigFileNotFoundErrorTryFullPath:Ljava/lang/String;

.field public static ConfigFileReadingError:Ljava/lang/String;

.field public static ExceptionSkip:Ljava/lang/String;

.field public static FormatProblem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.eclipse.jdt.core.formatter.messages"

    const-class v1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;

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
    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 4
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
