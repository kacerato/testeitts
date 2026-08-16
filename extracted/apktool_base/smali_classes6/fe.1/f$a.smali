.class public Lfe/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/i0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lfe/f;


# direct methods
.method public constructor <init>(Lfe/f;)V
    .locals 0

    iput-object p1, p0, Lfe/f$a;->a:Lfe/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    iget-object v0, p0, Lfe/f$a;->a:Lfe/f;

    invoke-virtual {v0, p1, p2, p3}, Lfe/f;->ba(Ljava/lang/Object;J)J

    const/4 p1, 0x1

    return p1
.end method
