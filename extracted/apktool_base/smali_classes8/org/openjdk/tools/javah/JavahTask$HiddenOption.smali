.class abstract Lorg/openjdk/tools/javah/JavahTask$HiddenOption;
.super Lorg/openjdk/tools/javah/JavahTask$Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/JavahTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HiddenOption"
.end annotation


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javah/JavahTask$Option;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isHidden()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
