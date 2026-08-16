.class public LJ/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/r;",
            ")",
            "LJ/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, LJ/s;

    iget-object v0, p0, LJ/s$d;->a:Landroid/content/res/Resources;

    invoke-static {}, LJ/v;->c()LJ/v;

    move-result-object v1

    invoke-direct {p1, v0, v1}, LJ/s;-><init>(Landroid/content/res/Resources;LJ/n;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
