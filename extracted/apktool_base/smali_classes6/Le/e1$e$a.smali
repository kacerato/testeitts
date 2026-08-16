.class public final LLe/e1$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFe/g<",
        "LDe/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LLe/e1$e;


# direct methods
.method public constructor <init>(LLe/e1$e;LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, LLe/e1$e$a;->c:LLe/e1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LLe/e1$e$a;->b:LTe/v;

    return-void
.end method


# virtual methods
.method public a(LDe/c;)V
    .locals 1

    iget-object v0, p0, LLe/e1$e$a;->b:LTe/v;

    invoke-virtual {v0, p1}, LTe/v;->b(LDe/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, LDe/c;

    invoke-virtual {p0, p1}, LLe/e1$e$a;->a(LDe/c;)V

    return-void
.end method
