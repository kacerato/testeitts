.class public abstract Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor8;
.super Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor7<",
        "TR;TP;>;"
    }
.end annotation

.annotation runtime Lorg/openjdk/javax/annotation/processing/SupportedSourceVersion;
    value = .enum Lorg/openjdk/javax/lang/model/SourceVersion;->RELEASE_8:Lorg/openjdk/javax/lang/model/SourceVersion;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/javax/lang/model/util/AbstractTypeVisitor7;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract visitIntersection(Lorg/openjdk/javax/lang/model/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/lang/model/type/IntersectionType;",
            "TP;)TR;"
        }
    .end annotation
.end method
