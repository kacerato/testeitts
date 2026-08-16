.class public Lfe/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/e0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lfe/b;


# direct methods
.method public constructor <init>(Lfe/b;)V
    .locals 0

    iput-object p1, p0, Lfe/b$a;->a:Lfe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    iget-object v0, p0, Lfe/b$a;->a:Lfe/b;

    invoke-virtual {v0, p1, p2}, Lfe/b;->qa(Ljava/lang/Object;C)C

    const/4 p1, 0x1

    return p1
.end method
