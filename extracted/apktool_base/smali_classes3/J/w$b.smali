.class public LJ/w$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LJ/o<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "LJ/w$c<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/w$b;->a:Landroid/content/ContentResolver;

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
            "Landroid/os/ParcelFileDescriptor;",
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
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, LD/i;

    iget-object v1, p0, LJ/w$b;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, LD/i;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
