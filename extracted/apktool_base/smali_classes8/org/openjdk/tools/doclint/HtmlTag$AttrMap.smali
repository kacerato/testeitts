.class Lorg/openjdk/tools/doclint/HtmlTag$AttrMap;
.super Ljava/util/EnumMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lorg/openjdk/tools/doclint/HtmlTag$Attr;",
        "Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-void
.end method
