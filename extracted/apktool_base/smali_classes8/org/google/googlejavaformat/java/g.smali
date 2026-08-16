.class public final synthetic Lorg/google/googlejavaformat/java/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/google/googlejavaformat/java/Replacement;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaOutput;->a(Lorg/google/googlejavaformat/java/Replacement;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
