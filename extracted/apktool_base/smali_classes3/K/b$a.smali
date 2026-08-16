.class public LK/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "LJ/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LJ/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/m<",
            "LJ/g;",
            "LJ/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, LJ/m;-><init>(J)V

    iput-object v0, p0, LK/b$a;->a:LJ/m;

    return-void
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/r;",
            ")",
            "LJ/n<",
            "LJ/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LK/b;

    iget-object v0, p0, LK/b$a;->a:LJ/m;

    invoke-direct {p1, v0}, LK/b;-><init>(LJ/m;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
