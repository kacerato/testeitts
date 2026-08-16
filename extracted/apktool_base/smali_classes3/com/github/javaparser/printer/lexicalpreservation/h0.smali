.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/Range;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/h0;->b:Lcom/github/javaparser/Range;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/h0;->b:Lcom/github/javaparser/Range;

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
