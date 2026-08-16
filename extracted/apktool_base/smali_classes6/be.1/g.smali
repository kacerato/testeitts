.class public abstract Lbe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lbe/f;",
        ">",
        "Ljava/lang/Object;",
        "Lbe/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile b:Lbe/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile c:Lbe/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a5(Lbe/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lbe/g;->c:Lbe/f;

    return-void
.end method

.method public ec(Lbe/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lbe/g;->b:Lbe/f;

    return-void
.end method

.method public getNext()Lbe/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbe/g;->b:Lbe/f;

    return-object v0
.end method

.method public o7()Lbe/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lbe/g;->c:Lbe/f;

    return-object v0
.end method
