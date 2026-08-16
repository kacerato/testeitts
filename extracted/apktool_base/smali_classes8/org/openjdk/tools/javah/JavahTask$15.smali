.class Lorg/openjdk/tools/javah/JavahTask$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javah/JavahTask;->createDiagnostic(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/Diagnostic<",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javah/JavahTask;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/JavahTask$15;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    iput-object p2, p0, Lorg/openjdk/tools/javah/JavahTask$15;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lorg/openjdk/tools/javah/JavahTask$15;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$15;->val$key:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnNumber()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javah/JavahTask$15;->this$0:Lorg/openjdk/tools/javah/JavahTask;

    iget-object v1, p0, Lorg/openjdk/tools/javah/JavahTask$15;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lorg/openjdk/tools/javah/JavahTask$15;->val$args:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lorg/openjdk/tools/javah/JavahTask;->access$200(Lorg/openjdk/tools/javah/JavahTask;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/JavahTask$15;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
