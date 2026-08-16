.class public final LDe/i;
.super LDe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LDe/f<",
        "Lhn/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = -0x9cfc6416eb4a343L


# direct methods
.method public constructor <init>(Lhn/d;)V
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

    check-cast p1, Lhn/d;

    invoke-virtual {p0, p1}, LDe/i;->b(Lhn/d;)V

    return-void
.end method

.method public b(Lhn/d;)V
    .locals 0
    .param p1    # Lhn/d;
        .annotation build LCe/f;
        .end annotation
    .end param

    invoke-interface {p1}, Lhn/d;->cancel()V

    return-void
.end method
