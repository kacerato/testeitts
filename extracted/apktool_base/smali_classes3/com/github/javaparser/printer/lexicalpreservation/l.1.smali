.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/l;->b:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/l;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->b(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
