.class public Lge/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/e0;
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
.field public final synthetic a:Lge/e0;


# direct methods
.method public constructor <init>(Lge/e0;)V
    .locals 0

    iput-object p1, p0, Lge/e0$a;->a:Lge/e0;

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

    iget-object v0, p0, Lge/e0$a;->a:Lge/e0;

    invoke-virtual {v0, p1, p2, p3}, Lge/e0;->ba(Ljava/lang/Object;J)J

    const/4 p1, 0x1

    return p1
.end method
