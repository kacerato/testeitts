.class abstract Lcom/github/javaparser/TokenBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field javaToken:Lcom/github/javaparser/JavaToken;

.field realKind:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lcom/github/javaparser/TokenBase;->realKind:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javaparser/TokenBase;->javaToken:Lcom/github/javaparser/JavaToken;

    return-void
.end method
