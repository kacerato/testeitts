.class public final LLe/J$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/J$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic c:LLe/J$a;


# direct methods
.method public constructor <init>(LLe/J$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LLe/J$a$c;->c:LLe/J$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LLe/J$a$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LLe/J$a$c;->c:LLe/J$a;

    iget-object v0, v0, LLe/J$a;->b:Lhn/c;

    iget-object v1, p0, LLe/J$a$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lhn/c;->h(Ljava/lang/Object;)V

    return-void
.end method
