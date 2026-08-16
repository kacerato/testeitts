.class final Lorg/openjdk/tools/javah/JavahTask$2;
.super Lorg/openjdk/tools/javah/JavahTask$Option;
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

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$Option;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javah/JavahTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lorg/openjdk/tools/javah/JavahTask;->odir:Ljava/io/File;

    return-void
.end method
