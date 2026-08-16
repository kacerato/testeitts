.class public final synthetic Lcom/github/javaparser/printer/lexicalpreservation/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/JavaToken;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/JavaToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/y;->b:Lcom/github/javaparser/JavaToken;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/y;->b:Lcom/github/javaparser/JavaToken;

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->d(Lcom/github/javaparser/JavaToken;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
