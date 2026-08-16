.class public LZ/c$b;
.super LZ/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public volatile b:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LZ/c;-><init>(LZ/c$a;)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Released"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LZ/c$b;->b:Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LZ/c$b;->b:Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LZ/c$b;->b:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    iget-object v2, p0, LZ/c$b;->b:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
