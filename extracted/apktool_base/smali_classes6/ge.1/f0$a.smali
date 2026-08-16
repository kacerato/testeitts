.class public Lge/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/l0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/f0;


# direct methods
.method public constructor <init>(Lge/f0;)V
    .locals 0

    iput-object p1, p0, Lge/f0$a;->a:Lge/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;S)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/f0$a;->a:Lge/f0;

    invoke-virtual {v0, p1, p2}, Lge/f0;->ga(Ljava/lang/Object;S)S

    const/4 p1, 0x1

    return p1
.end method
