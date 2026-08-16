.class public Lfe/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/e;
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
.field public final synthetic a:Lfe/e;


# direct methods
.method public constructor <init>(Lfe/e;)V
    .locals 0

    iput-object p1, p0, Lfe/e$a;->a:Lfe/e;

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

    iget-object v0, p0, Lfe/e$a;->a:Lfe/e;

    invoke-virtual {v0, p1, p2}, Lfe/e;->Y9(Ljava/lang/Object;I)I

    const/4 p1, 0x1

    return p1
.end method
