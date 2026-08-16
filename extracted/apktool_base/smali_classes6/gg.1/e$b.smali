.class public final Lgg/e$b;
.super Lgg/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgg/w<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic p:Lgg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/e<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgg/e$b;->p:Lgg/e;

    sget-object v2, Lgg/i;->DROP_OLDEST:Lgg/i;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lgg/w;-><init>(ILgg/i;LMf/l;ILkotlin/jvm/internal/x;)V

    return-void
.end method


# virtual methods
.method public M1(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lgg/e$b;->p:Lgg/e;

    invoke-static {v0, p0}, Lgg/e;->J1(Lgg/e;Lgg/D;)V

    invoke-super {p0, p1}, Lgg/j;->Q(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic Q(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lgg/e$b;->M1(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
