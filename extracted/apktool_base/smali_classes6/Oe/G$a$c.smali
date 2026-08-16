.class public final LOe/G$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/G$a;
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

.field public final synthetic c:LOe/G$a;


# direct methods
.method public constructor <init>(LOe/G$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LOe/G$a$c;->c:LOe/G$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOe/G$a$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOe/G$a$c;->c:LOe/G$a;

    iget-object v0, v0, LOe/G$a;->b:LBe/I;

    iget-object v1, p0, LOe/G$a$c;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LBe/I;->h(Ljava/lang/Object;)V

    return-void
.end method
