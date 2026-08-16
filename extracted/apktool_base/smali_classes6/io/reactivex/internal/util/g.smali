.class public final Lio/reactivex/internal/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFe/g<",
        "LDe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public b:LDe/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/util/g;->b:LDe/c;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LDe/c;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/util/g;->a(LDe/c;)V

    return-void
.end method
