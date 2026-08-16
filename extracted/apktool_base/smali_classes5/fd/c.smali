.class public final synthetic Lfd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lfd/d;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lfd/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd/c;->b:Lfd/d;

    iput-boolean p2, p0, Lfd/c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfd/c;->b:Lfd/d;

    iget-boolean v1, p0, Lfd/c;->c:Z

    invoke-static {v0, v1}, Lfd/d;->a(Lfd/d;Z)V

    return-void
.end method
