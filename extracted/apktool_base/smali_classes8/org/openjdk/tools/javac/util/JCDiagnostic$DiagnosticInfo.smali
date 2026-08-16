.class public abstract Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DiagnosticInfo"
.end annotation


# instance fields
.field args:[Ljava/lang/Object;

.field code:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;


# direct methods
.method private varargs constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->prefix:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->code:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->args:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/openjdk/tools/javac/util/JCDiagnostic$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Wrong diagnostic type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
