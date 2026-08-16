.class public LJ/m$a;
.super LY/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LY/h<",
        "LJ/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:LJ/m;


# direct methods
.method public constructor <init>(LJ/m;J)V
    .locals 0

    iput-object p1, p0, LJ/m$a;->e:LJ/m;

    invoke-direct {p0, p2, p3}, LY/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, LJ/m$b;

    invoke-virtual {p0, p1, p2}, LJ/m$a;->q(LJ/m$b;Ljava/lang/Object;)V

    return-void
.end method

.method public q(LJ/m$b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LJ/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJ/m$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, LJ/m$b;->c()V

    return-void
.end method
