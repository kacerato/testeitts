.class public Lge/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/f0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/b0;


# direct methods
.method public constructor <init>(Lge/b0;)V
    .locals 0

    iput-object p1, p0, Lge/b0$a;->a:Lge/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;D)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/b0$a;->a:Lge/b0;

    invoke-virtual {v0, p1, p2, p3}, Lge/b0;->sa(Ljava/lang/Object;D)D

    const/4 p1, 0x1

    return p1
.end method
