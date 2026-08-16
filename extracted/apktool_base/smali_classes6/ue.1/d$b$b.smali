.class public Lue/d$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/d$b;->h(Lqe/m$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe/m$c<",
        "LNm/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lue/d$b;


# direct methods
.method public constructor <init>(Lue/d$b;)V
    .locals 0

    iput-object p1, p0, Lue/d$b$b;->a:Lue/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lqe/m;LUm/v;)V
    .locals 0
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, LNm/d;

    invoke-virtual {p0, p1, p2}, Lue/d$b$b;->b(Lqe/m;LNm/d;)V

    return-void
.end method

.method public b(Lqe/m;LNm/d;)V
    .locals 1
    .param p1    # Lqe/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LNm/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lue/d$b$b;->a:Lue/d$b;

    invoke-static {v0, p1, p2}, Lue/d$b;->e(Lue/d$b;Lqe/m;LUm/v;)V

    return-void
.end method
