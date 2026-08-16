.class public LJ/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;
.implements LJ/w$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "LJ/w$c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/w$d;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
    .locals 0
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

    new-instance p1, LJ/w;

    invoke-direct {p1, p0}, LJ/w;-><init>(LJ/w$c;)V

    return-object p1
.end method

.method public b(Landroid/net/Uri;)LD/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "LD/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, LD/o;

    iget-object v1, p0, LJ/w$d;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, LD/o;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
