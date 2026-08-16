.class public final Laf/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Laf/c$b;

.field public final synthetic c:Laf/c$a;


# direct methods
.method public constructor <init>(Laf/c$a;Laf/c$b;)V
    .locals 0

    iput-object p1, p0, Laf/c$a$a;->c:Laf/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Laf/c$a$a;->b:Laf/c$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laf/c$a$a;->c:Laf/c$a;

    iget-object v0, v0, Laf/c$a;->c:Laf/c;

    iget-object v0, v0, Laf/c;->c:Ljava/util/Queue;

    iget-object v1, p0, Laf/c$a$a;->b:Laf/c$b;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
