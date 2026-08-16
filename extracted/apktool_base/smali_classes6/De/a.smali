.class public final LDe/a;
.super LDe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDe/f<",
        "LFe/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = -0x721258278bee89a1L


# direct methods
.method public constructor <init>(LFe/a;)V
    .locals 0

    invoke-direct {p0, p1}, LDe/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build LCe/f;
        .end annotation
    .end param

    check-cast p1, LFe/a;

    invoke-virtual {p0, p1}, LDe/a;->b(LFe/a;)V

    return-void
.end method

.method public b(LFe/a;)V
    .locals 0
    .param p1    # LFe/a;
        .annotation build LCe/f;
        .end annotation
    .end param

    :try_start_0
    invoke-interface {p1}, LFe/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
