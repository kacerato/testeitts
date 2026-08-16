.class public LP7/b$e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/b$e$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LP7/b$e$d;


# direct methods
.method public constructor <init>(LP7/b$e$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LP7/b$e$d$a;->b:LP7/b$e$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LP7/b$e$d$a;->b:LP7/b$e$d;

    iget-object v0, v0, LP7/b$e$d;->d:LP7/b$e;

    iget-object v0, v0, LP7/b$e;->d:LP7/b;

    invoke-static {v0}, LP7/b;->v(LP7/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LP7/b$e$d$a;->b:LP7/b$e$d;

    iget-object v1, v1, LP7/b$e$d;->d:LP7/b$e;

    iget-object v1, v1, LP7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, LP7/b$e$d$a;->b:LP7/b$e$d;

    iget-object v2, v2, LP7/b$e$d;->d:LP7/b$e;

    iget-object v2, v2, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->d(LP7/b;)LQ7/a;

    move-result-object v2

    invoke-virtual {v2}, LQ7/a;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, LP7/b$e$d$a;->b:LP7/b$e$d;

    iget-object v2, v2, LP7/b$e$d;->d:LP7/b$e;

    iget-object v2, v2, LP7/b$e;->d:LP7/b;

    invoke-static {v2}, LP7/b;->d(LP7/b;)LQ7/a;

    move-result-object v2

    invoke-virtual {v2, v0}, LQ7/a;->m(I)LR7/b;

    move-result-object v2

    invoke-virtual {v2}, LR7/b;->u()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "file"
        }
    .end annotation

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, LP7/b$e$d$a;->a(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
