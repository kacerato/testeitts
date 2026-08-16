.class public LJ/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/r;",
            ")",
            "LJ/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LJ/x;

    const-class v1, LJ/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LJ/r;->d(Ljava/lang/Class;Ljava/lang/Class;)LJ/n;

    move-result-object p1

    invoke-direct {v0, p1}, LJ/x;-><init>(LJ/n;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
