.class public Lge/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/g0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lge/c0;


# direct methods
.method public constructor <init>(Lge/c0;)V
    .locals 0

    iput-object p1, p0, Lge/c0$a;->a:Lge/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/c0$a;->a:Lge/c0;

    invoke-virtual {v0, p1, p2}, Lge/c0;->wa(Ljava/lang/Object;F)F

    const/4 p1, 0x1

    return p1
.end method
