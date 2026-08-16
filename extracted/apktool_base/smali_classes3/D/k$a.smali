.class public final LD/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LD/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LF/b;


# direct methods
.method public constructor <init>(LF/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD/k$a;->a:LF/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)LD/e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, LD/k$a;->c(Ljava/io/InputStream;)LD/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;)LD/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "LD/e<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LD/k;

    iget-object v1, p0, LD/k$a;->a:LF/b;

    invoke-direct {v0, p1, v1}, LD/k;-><init>(Ljava/io/InputStream;LF/b;)V

    return-object v0
.end method
