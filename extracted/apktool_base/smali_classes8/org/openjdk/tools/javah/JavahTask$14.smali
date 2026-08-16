.class final Lorg/openjdk/tools/javah/JavahTask$14;
.super Lorg/openjdk/tools/javah/JavahTask$HiddenOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$HiddenOption;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-XD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javah/JavahTask;->javac_extras:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
