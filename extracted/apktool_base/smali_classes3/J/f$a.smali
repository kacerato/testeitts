.class public LJ/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:LJ/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJ/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/f$a;->a:LJ/f$d;

    return-void
.end method


# virtual methods
.method public final a(LJ/r;)LJ/n;
    .locals 1
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    new-instance p1, LJ/f;

    iget-object v0, p0, LJ/f$a;->a:LJ/f$d;

    invoke-direct {p1, v0}, LJ/f;-><init>(LJ/f$d;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
