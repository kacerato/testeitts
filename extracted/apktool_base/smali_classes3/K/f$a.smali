.class public abstract LK/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/o<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/f$a;->a:Landroid/content/Context;

    iput-object p2, p0, LK/f$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(LJ/r;)LJ/n;
    .locals 5
    .param p1    # LJ/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/r;",
            ")",
            "LJ/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, LK/f;

    iget-object v1, p0, LK/f$a;->a:Landroid/content/Context;

    const-class v2, Ljava/io/File;

    iget-object v3, p0, LK/f$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, LJ/r;->d(Ljava/lang/Class;Ljava/lang/Class;)LJ/n;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    iget-object v4, p0, LK/f$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v3, v4}, LJ/r;->d(Ljava/lang/Class;Ljava/lang/Class;)LJ/n;

    move-result-object p1

    iget-object v3, p0, LK/f$a;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, LK/f;-><init>(Landroid/content/Context;LJ/n;LJ/n;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
