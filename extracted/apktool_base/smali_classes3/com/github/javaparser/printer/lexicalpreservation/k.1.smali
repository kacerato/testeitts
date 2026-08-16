.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/k;
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

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->f(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
