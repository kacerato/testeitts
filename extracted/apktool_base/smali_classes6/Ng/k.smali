.class public interface abstract LNg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LNg/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNg/k$a;

    invoke-direct {v0}, LNg/k$a;-><init>()V

    sput-object v0, LNg/k;->a:LNg/k;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "LNg/b;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "LNg/b;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILTg/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(ILNg/a;)V
.end method
