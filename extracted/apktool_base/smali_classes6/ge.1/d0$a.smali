.class public Lge/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/h0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/d0;


# direct methods
.method public constructor <init>(Lge/d0;)V
    .locals 0

    iput-object p1, p0, Lge/d0$a;->a:Lge/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/d0$a;->a:Lge/d0;

    invoke-virtual {v0, p1, p2}, Lge/d0;->Y9(Ljava/lang/Object;I)I

    const/4 p1, 0x1

    return p1
.end method
