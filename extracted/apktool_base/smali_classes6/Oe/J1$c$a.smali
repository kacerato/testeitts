.class public final LOe/J1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/J1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lbf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:LOe/J1$c;


# direct methods
.method public constructor <init>(LOe/J1$c;Lbf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/j<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LOe/J1$c$a;->c:LOe/J1$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LOe/J1$c$a;->b:Lbf/j;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOe/J1$c$a;->c:LOe/J1$c;

    iget-object v1, p0, LOe/J1$c$a;->b:Lbf/j;

    invoke-virtual {v0, v1}, LOe/J1$c;->n(Lbf/j;)V

    return-void
.end method
