.class public final LLe/X1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/X1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LZe/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LLe/X1$c;


# direct methods
.method public constructor <init>(LLe/X1$c;LZe/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZe/h<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LLe/X1$c$a;->c:LLe/X1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LLe/X1$c$a;->b:LZe/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LLe/X1$c$a;->c:LLe/X1$c;

    iget-object v1, p0, LLe/X1$c$a;->b:LZe/h;

    invoke-virtual {v0, v1}, LLe/X1$c;->r(LZe/h;)V

    return-void
.end method
