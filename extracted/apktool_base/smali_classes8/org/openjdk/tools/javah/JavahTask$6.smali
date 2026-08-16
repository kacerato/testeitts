.class final Lorg/openjdk/tools/javah/JavahTask$6;
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
.method public process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/openjdk/tools/javah/JavahTask;->trace:Z

    return-void
.end method
