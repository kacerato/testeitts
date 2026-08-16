.class public LK/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK/e;
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


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/e$a;->a:Landroid/content/Context;

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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LK/e;

    iget-object v0, p0, LK/e$a;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, LK/e;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
