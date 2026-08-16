.class public LP7/b$e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/b$e;->a(Ljava/io/File;LP7/b$j;)V
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
.field public final synthetic b:LP7/b$e;


# direct methods
.method public constructor <init>(LP7/b$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LP7/b$e$g;->b:LP7/b$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LP7/b$e$g;->b:LP7/b$e;

    iget-object v0, v0, LP7/b$e;->d:LP7/b;

    invoke-static {v0}, LP7/b;->g(LP7/b;)LV7/c;

    move-result-object v0

    invoke-interface {v0, p1}, LV7/c;->a(Ljava/io/File;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
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

    invoke-virtual {p0, p1}, LP7/b$e$g;->a(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
