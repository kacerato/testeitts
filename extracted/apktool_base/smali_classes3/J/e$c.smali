.class public final LJ/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LJ/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LJ/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/e$c$a;

    invoke-direct {v0, p0}, LJ/e$c$a;-><init>(LJ/e$c;)V

    iput-object v0, p0, LJ/e$c;->a:LJ/e$a;

    return-void
.end method


# virtual methods
.method public a(LJ/r;)LJ/n;
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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, LJ/e;

    iget-object v0, p0, LJ/e$c;->a:LJ/e$a;

    invoke-direct {p1, v0}, LJ/e;-><init>(LJ/e$a;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
