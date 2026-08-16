.class public LK/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "Ljava/net/URL;",
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
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LK/i;

    const-class v1, LJ/g;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LJ/r;->d(Ljava/lang/Class;Ljava/lang/Class;)LJ/n;

    move-result-object p1

    invoke-direct {v0, p1}, LK/i;-><init>(LJ/n;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
