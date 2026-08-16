.class public final Lrg/b$a$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrg/b$a;->a(Lnf/P0;LMf/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Ljava/lang/Throwable;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lrg/b;

.field public final synthetic c:Lrg/b$a;


# direct methods
.method public constructor <init>(Lrg/b;Lrg/b$a;)V
    .locals 0

    iput-object p1, p0, Lrg/b$a$a;->b:Lrg/b;

    iput-object p2, p0, Lrg/b$a$a;->c:Lrg/b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lrg/b$a$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lrg/b$a$a;->b:Lrg/b;

    iget-object v0, p0, Lrg/b$a$a;->c:Lrg/b$a;

    iget-object v0, v0, Lrg/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lrg/b;->i(Ljava/lang/Object;)V

    return-void
.end method
