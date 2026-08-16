.class public LJ/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJ/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LD/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final b:[B

.field public final c:LJ/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLJ/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "LJ/b$b<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/b$c;->b:[B

    iput-object p2, p0, LJ/b$c;->c:LJ/b$b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    iget-object v0, p0, LJ/b$c;->c:LJ/b$b;

    invoke-interface {v0}, LJ/b$b;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public b()LC/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LC/a;->LOCAL:LC/a;

    return-object v0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public e(Lcom/bumptech/glide/h;LD/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LD/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            "LD/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    iget-object p1, p0, LJ/b$c;->c:LJ/b$b;

    iget-object v0, p0, LJ/b$c;->b:[B

    invoke-interface {p1, v0}, LJ/b$b;->b([B)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, LD/d$a;->c(Ljava/lang/Object;)V

    return-void
.end method
