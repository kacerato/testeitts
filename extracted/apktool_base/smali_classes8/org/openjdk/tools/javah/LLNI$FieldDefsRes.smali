.class Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/LLNI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldDefsRes"
.end annotation


# instance fields
.field public bottomMost:Z

.field public byteSize:I

.field public className:Ljava/lang/String;

.field public parent:Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

.field public printedOne:Z

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/javax/lang/model/element/TypeElement;Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->printedOne:Z

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->className:Ljava/lang/String;

    iput-object p2, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->parent:Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;

    iput-boolean p3, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->bottomMost:Z

    if-nez p2, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javah/LLNI$FieldDefsRes;->s:Ljava/lang/String;

    :goto_0
    return-void
.end method
