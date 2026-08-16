.class Lorg/openjdk/tools/javah/Util$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javah/Util;->createDiagnostic(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/javax/tools/Diagnostic;
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
.field final synthetic this$0:Lorg/openjdk/tools/javah/Util;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$kind:Lorg/openjdk/javax/tools/Diagnostic$Kind;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/Util;Ljava/lang/String;Lorg/openjdk/javax/tools/Diagnostic$Kind;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javah/Util$1;->this$0:Lorg/openjdk/tools/javah/Util;

    iput-object p2, p0, Lorg/openjdk/tools/javah/Util$1;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lorg/openjdk/tools/javah/Util$1;->val$kind:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    iput-object p4, p0, Lorg/openjdk/tools/javah/Util$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util$1;->val$code:Ljava/lang/String;

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

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util$1;->val$kind:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lorg/openjdk/tools/javah/Util$1;->val$code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javah/Util$1;->val$args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javah/Util$1;->this$0:Lorg/openjdk/tools/javah/Util;

    iget-object v0, p0, Lorg/openjdk/tools/javah/Util$1;->val$code:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javah/Util$1;->val$args:[Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/openjdk/tools/javah/Util;->access$000(Lorg/openjdk/tools/javah/Util;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/Util$1;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

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
