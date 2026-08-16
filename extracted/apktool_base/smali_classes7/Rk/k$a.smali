.class public LRk/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRk/k;->a(Lhi/b;)LQk/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:LRk/k$b;

.field public final synthetic c:LRk/k;


# direct methods
.method public constructor <init>(LRk/k;Lhi/b;LRk/k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LRk/k$a;->c:LRk/k;

    iput-object p2, p0, LRk/k$a;->a:Lhi/b;

    iput-object p3, p0, LRk/k$a;->b:LRk/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LRk/k$a;->a:Lhi/b;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LRk/k$a;->b:LRk/k$b;

    invoke-virtual {v0}, LRk/k$b;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LRk/k$a;->b:LRk/k$b;

    return-object v0
.end method
