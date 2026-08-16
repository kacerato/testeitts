.class public Lfe/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/c;
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
.field public final synthetic a:Lfe/c;


# direct methods
.method public constructor <init>(Lfe/c;)V
    .locals 0

    iput-object p1, p0, Lfe/c$a;->a:Lfe/c;

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

    iget-object v0, p0, Lfe/c$a;->a:Lfe/c;

    invoke-virtual {v0, p1, p2, p3}, Lfe/c;->sa(Ljava/lang/Object;D)D

    const/4 p1, 0x1

    return p1
.end method
