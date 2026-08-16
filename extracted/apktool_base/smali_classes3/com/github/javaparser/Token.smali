.class public Lcom/github/javaparser/Token;
.super Lcom/github/javaparser/TokenBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lcom/github/javaparser/Token;

.field public specialToken:Lcom/github/javaparser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/javaparser/TokenBase;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "nKind"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/Token;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nKind",
            "sImage"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/github/javaparser/TokenBase;-><init>()V

    .line 4
    iput p1, p0, Lcom/github/javaparser/Token;->kind:I

    .line 5
    iput-object p2, p0, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static newToken(I)Lcom/github/javaparser/Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ofKind"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/github/javaparser/Token;->newToken(ILjava/lang/String;)Lcom/github/javaparser/Token;

    move-result-object p0

    return-object p0
.end method

.method public static newToken(ILjava/lang/String;)Lcom/github/javaparser/Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ofKind",
            "image"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/Token;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
