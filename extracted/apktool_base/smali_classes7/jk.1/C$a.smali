.class public Ljk/C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljk/C;->d(Ljk/i$b;[B)Ljk/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljk/i$b;

.field public final synthetic b:B


# direct methods
.method public constructor <init>(Ljk/i$b;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ljk/C$a;->a:Ljk/i$b;

    iput-byte p2, p0, Ljk/C$a;->b:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljk/q;)Ljk/q;
    .locals 2

    instance-of v0, p1, Ljk/D;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljk/D;

    invoke-direct {p1}, Ljk/D;-><init>()V

    iget-object v0, p0, Ljk/C$a;->a:Ljk/i$b;

    iget-byte v1, p0, Ljk/C$a;->b:B

    invoke-static {v0, v1}, Ljk/x;->f(Ljk/i$b;B)[Ljk/i$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljk/D;->b([Ljk/i$b;)V

    return-object p1
.end method
