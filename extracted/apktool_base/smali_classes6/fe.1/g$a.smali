.class public Lfe/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/g;
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
.field public final synthetic a:Lfe/g;


# direct methods
.method public constructor <init>(Lfe/g;)V
    .locals 0

    iput-object p1, p0, Lfe/g$a;->a:Lfe/g;

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

    iget-object v0, p0, Lfe/g$a;->a:Lfe/g;

    invoke-virtual {v0, p1, p2}, Lfe/g;->ga(Ljava/lang/Object;S)S

    const/4 p1, 0x1

    return p1
.end method
